import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';

import 'cli_exception.dart';
import 'config.dart';
import 'engine.dart';
import 'process_runner.dart';
import 'target.dart';
import 'workflow.dart';

/// Runs the `terradart` command with [arguments] and returns its exit code.
///
/// [runner], [console], [workingDirectory], [environment] (read for `PATH`,
/// `TERRADART_CACHE_DIR` and `TERRADART_OPENTOFU_MIRROR`) and
/// [dartExecutable] replace the process, terminal and host in tests.
Future<int> runTerradart(
  List<String> arguments, {
  ProcessRunner runner = const IoProcessRunner(),
  Console? console,
  String? workingDirectory,
  Map<String, String>? environment,
  String? dartExecutable,
}) async {
  final io = console ?? Console.io();
  final context = _Context(
    runner: runner,
    console: io,
    cwd: workingDirectory ?? Directory.current.path,
    environment: environment ?? Platform.environment,
    dartExecutable: dartExecutable,
  );
  final cli =
      CommandRunner<int>(
          'terradart',
          'Synthesize, plan and apply a TerraDart Stack with OpenTofu or Terraform.',
        )
        ..addCommand(_SynthCommand(context))
        ..addCommand(_PlanCommand(context))
        ..addCommand(_ApplyCommand(context))
        ..addCommand(_DestroyCommand(context))
        ..addCommand(_OutputsCommand(context))
        ..addCommand(_EngineCommand(context));
  try {
    return await cli.run(arguments) ?? 0;
  } on UsageException catch (e) {
    io.err('$e');
    return 64;
  } on CliException catch (e) {
    io.err('terradart: ${e.message}');
    return e.exitCode;
  }
}

final class _Context {
  _Context({
    required this.runner,
    required this.console,
    required this.cwd,
    required this.environment,
    this.dartExecutable,
  });

  final ProcessRunner runner;
  final Console console;
  final String cwd;
  final Map<String, String> environment;
  final String? dartExecutable;

  EngineResolver resolver(EngineSettings settings) => EngineResolver(
    settings: settings,
    environment: environment,
    log: console.out,
    warn: console.warn,
  );
}

abstract class _TerradartCommand extends Command<int> {
  _TerradartCommand(this.context) {
    argParser
      ..addOption(
        'project',
        abbr: 'C',
        valueHelp: 'dir',
        help:
            'The Dart project (default: the nearest directory with a '
            'pubspec.yaml).',
      )
      ..addOption(
        'env',
        abbr: 'e',
        valueHelp: 'name',
        help:
            'The environment: a member of the enum the entry point passes '
            'to runEnvironments.',
      )
      ..addOption(
        'engine',
        allowed: ['tofu', 'terraform'],
        help: 'The engine (default: tofu, then terraform, on PATH).',
      )
      ..addOption(
        'engine-path',
        valueHelp: 'file',
        help: 'The engine binary to run.',
      );
    if (synthesizes) {
      argParser.addOption(
        'workspace',
        abbr: 'w',
        valueHelp: 'name',
        help:
            'The Terraform workspace to select (overrides the env\'s); the '
            'entry point gets --workspace <name>.',
      );
    }
    if (runsEngine) {
      argParser.addMultiOption(
        'backend-config',
        valueHelp: 'file|key=value',
        help: 'Passed to init as -backend-config, after the env\'s.',
      );
    }
    if (synthesizes) {
      argParser.addMultiOption(
        'entry-arg',
        valueHelp: 'arg',
        help: 'An argument for the entry point, after the env\'s.',
      );
      if (runsEngine) {
        argParser.addFlag(
          'synth',
          defaultsTo: true,
          help: 'Run the entry point first.',
        );
      }
    }
  }

  final _Context context;

  bool get runsEngine => true;
  bool get synthesizes => true;

  ArgResults get args => argResults!;

  String? _option(String name) =>
      argParser.options.containsKey(name) ? args.option(name) : null;

  List<String> _multi(String name) =>
      argParser.options.containsKey(name) ? args.multiOption(name) : const [];

  ProjectConfig loadConfig() {
    final root = ProjectConfig.findRoot(_option('project') ?? context.cwd);
    final config = ProjectConfig.load(root);
    final kind = _option('engine');
    final path = _option('engine-path');
    if (kind == null && path == null) return config;
    return ProjectConfig(
      root: config.root,
      entrypoint: config.entrypoint,
      out: config.out,
      defineOutput: config.defineOutput,
      defineFile: config.defineFile,
      engine: EngineSettings(
        kind: kind == null
            ? config.engine.kind
            : EngineKind.parse(kind, '--engine'),
        path: path == null ? config.engine.path : File(path).absolute.path,
        openTofuVersion: config.engine.openTofuVersion,
      ),
    );
  }

  Workflow workflow({List<String> entryArgs = const []}) {
    final config = loadConfig();
    final request = Request(
      config,
      env: _option('env'),
      workspace: _option('workspace'),
      backendConfig: _multi('backend-config'),
      entryArgs: [..._multi('entry-arg'), ...entryArgs],
      defineOutput: _option('define-output'),
      defineFile: _option('define-file'),
    );
    return Workflow(
      request: request,
      runner: context.runner,
      console: context.console,
      cwd: context.cwd,
      resolver: context.resolver(config.engine),
      dartExecutable: context.dartExecutable,
    );
  }

  bool get synthFirst =>
      !argParser.options.containsKey('synth') || args.flag('synth');

  void addDefineOptions() {
    argParser
      ..addOption(
        'define-output',
        valueHelp: 'name',
        help:
            'The addDartDefineOutput output to write (default: '
            'terradart.dart_defines.output, else dart_defines).',
      )
      ..addOption(
        'define-file',
        valueHelp: 'file',
        help:
            'Where to write it (default: .terradart/<output>.json; '
            '.terradart/<output>.<env>.json with --env).',
      );
  }
}

final class _SynthCommand extends _TerradartCommand {
  _SynthCommand(super.context);

  @override
  String get name => 'synth';

  @override
  String get description =>
      'Run the entry point (bin/infra.dart), which writes tf-out/. '
      'Arguments after -- go to the entry point.';

  @override
  bool get runsEngine => false;

  @override
  Future<int> run() async {
    final flow = workflow(entryArgs: args.rest);
    await flow.synth();
    return 0;
  }
}

final class _PlanCommand extends _TerradartCommand {
  _PlanCommand(super.context);

  @override
  String get name => 'plan';

  @override
  String get description =>
      'Synth, then init and plan. Arguments after -- go to the engine.';

  @override
  Future<int> run() async {
    final flow = workflow();
    if (synthFirst) await flow.synth();
    await flow.init();
    await flow.selectWorkspace(create: true);
    await flow.plan(args.rest);
    return 0;
  }
}

final class _ApplyCommand extends _TerradartCommand {
  _ApplyCommand(super.context) {
    argParser
      ..addFlag(
        'auto-approve',
        negatable: false,
        help: 'Apply without asking for approval.',
      )
      ..addFlag(
        'outputs',
        defaultsTo: true,
        help:
            'Write the define file afterwards, when the Stack declares '
            'addDartDefineOutput().',
      );
    addDefineOptions();
  }

  @override
  String get name => 'apply';

  @override
  String get description =>
      'Synth, then init and apply, then write the dart-define file. '
      'Arguments after -- go to the engine.';

  @override
  Future<int> run() async {
    final flow = workflow();
    if (synthFirst) await flow.synth();
    await flow.init();
    await flow.selectWorkspace(create: true);
    await flow.apply(args.rest, autoApprove: args.flag('auto-approve'));
    if (args.flag('outputs')) await flow.writeDefines(required: false);
    return 0;
  }
}

final class _DestroyCommand extends _TerradartCommand {
  _DestroyCommand(super.context) {
    argParser.addFlag(
      'auto-approve',
      negatable: false,
      help: 'Destroy without asking for approval.',
    );
  }

  @override
  String get name => 'destroy';

  @override
  String get description =>
      'Synth, then init and destroy. Arguments after -- go to the engine.';

  @override
  Future<int> run() async {
    final flow = workflow();
    if (synthFirst) await flow.synth();
    await flow.init();
    await flow.selectWorkspace(create: false);
    await flow.destroy(args.rest, autoApprove: args.flag('auto-approve'));
    return 0;
  }
}

final class _OutputsCommand extends _TerradartCommand {
  _OutputsCommand(super.context) {
    argParser.addFlag(
      'init',
      defaultsTo: true,
      help: 'Run init first (needed once per checkout for a remote backend).',
    );
    addDefineOptions();
  }

  @override
  String get name => 'outputs';

  @override
  String get description =>
      'Write the dart-define file from the applied state, without '
      'planning or applying — for a client build that can read the state.';

  @override
  Future<int> run() async {
    if (args.rest.isNotEmpty) {
      usageException('outputs takes no arguments after --.');
    }
    final flow = workflow();
    if (synthFirst) await flow.synth();
    if (args.flag('init')) await flow.init();
    await flow.selectWorkspace(create: false);
    await flow.writeDefines(required: true);
    return 0;
  }
}

final class _EngineCommand extends _TerradartCommand {
  _EngineCommand(super.context);

  @override
  String get name => 'engine';

  @override
  String get description =>
      'Print the engine binary terradart runs, downloading OpenTofu when '
      'it is the one.';

  @override
  bool get runsEngine => false;

  @override
  bool get synthesizes => false;

  @override
  Future<int> run() async {
    final config = loadConfig();
    final engine = await EngineResolver(
      settings: config.engine,
      environment: context.environment,
      log: context.console.err,
      warn: context.console.warn,
    ).resolve();
    context.console.out(engine.path);
    return 0;
  }
}

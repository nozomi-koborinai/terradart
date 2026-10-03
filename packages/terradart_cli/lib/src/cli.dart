import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';

import 'cli_exception.dart';
import 'config.dart';
import 'engine.dart';
import 'init_command.dart';
import 'migrate_command.dart';
import 'process_runner.dart';
import 'target.dart';
import 'workflow.dart';

/// Runs the `terradart` command with [arguments] and returns its exit code.
///
/// [runner], [console], [workingDirectory], [environment] (read for `PATH`,
/// `TERRADART_ENV`, `TERRADART_CACHE_DIR` and `TERRADART_OPENTOFU_MIRROR`) and
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
          'Create, synthesize, validate, plan and apply a TerraDart Stack with '
              'OpenTofu or Terraform, and migrate an existing Terraform tree.',
        )
        ..addCommand(
          InitCommand(
            console: io,
            cwd: context.cwd,
            runner: runner,
            dartExecutable: dartExecutable,
          ),
        )
        ..addCommand(_SynthCommand(context))
        ..addCommand(_ValidateCommand(context))
        ..addCommand(_PlanCommand(context))
        ..addCommand(_ApplyCommand(context))
        ..addCommand(_DestroyCommand(context))
        ..addCommand(_OutputsCommand(context))
        ..addCommand(_EngineCommand(context))
        ..addCommand(_StateCommand(context))
        ..addCommand(MigrateCommand(io));
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
            'to runEnvironments (default: \$TERRADART_ENV, else its '
            'defaultEnv, else its only one).',
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
    if (usesBackend) {
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
  bool get usesBackend => runsEngine;
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
      // A flag replaces the engine pubspec.yaml picks, path and kind
      // together: --engine terraform does not run its engine_path, and
      // --engine-path takes its kind from the file name.
      engine: EngineSettings(
        kind: kind == null ? null : EngineKind.parse(kind, '--engine'),
        path: path == null ? null : File(path).absolute.path,
        openTofuVersion: config.engine.openTofuVersion,
      ),
    );
  }

  Workflow workflow({List<String> entryArgs = const []}) {
    final config = loadConfig();
    final flag = _option('env');
    final variable = switch (context.environment[envVariable]) {
      final v? when v.isNotEmpty => v,
      _ => null,
    };
    final request = Request(
      config,
      env: flag ?? variable,
      envSource: flag == null && variable != null
          ? EnvSource.variable
          : EnvSource.flag,
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
    final request = flow.request;
    if (request.env case final env?) {
      context.console.out('env: $env (${request.envSource.label})');
    }
    await flow.synth();
    return 0;
  }
}

final class _ValidateCommand extends _TerradartCommand {
  _ValidateCommand(super.context);

  @override
  String get name => 'validate';

  @override
  String get description =>
      'Synth, then init without the backend and validate — no credentials '
      'or state needed. Arguments after -- go to validate.';

  @override
  bool get usesBackend => false;

  @override
  Future<int> run() async {
    final flow = workflow();
    if (synthFirst) await flow.synth();
    await flow.validate(args.rest);
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
    await flow.checkLocalState();
    await flow.init();
    await flow.selectWorkspace(create: true);
    await flow.checkBackendState();
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
    final outputs = args.flag('outputs');
    if (outputs) flow.checkDefineOutput();
    final autoApprove = args.flag('auto-approve');
    flow.confirmEnvironment('apply', autoApprove: autoApprove);
    await flow.checkLocalState();
    await flow.init();
    await flow.selectWorkspace(create: true);
    await flow.checkBackendState();
    await flow.apply(args.rest, autoApprove: autoApprove);
    if (outputs) await flow.writeDefines(required: false);
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
    final autoApprove = args.flag('auto-approve');
    flow.confirmEnvironment('destroy', autoApprove: autoApprove);
    await flow.checkLocalState();
    await flow.init();
    await flow.selectWorkspace(create: false);
    await flow.checkBackendState();
    await flow.destroy(args.rest, autoApprove: autoApprove);
    return 0;
  }
}

final class _OutputsCommand extends _TerradartCommand {
  _OutputsCommand(super.context) {
    argParser.addFlag(
      'init',
      defaultsTo: true,
      help:
          'Run init first (needed once per checkout for a remote backend; '
          'always run for an environment with backendConfig).',
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
    flow.checkDefineOutput();
    if (args.flag('init')) {
      await flow.init();
    } else if (flow.target.backendConfigArgs.isNotEmpty) {
      context.console.out(
        'Running init anyway: the backend configuration selects which '
        "environment's state the define file comes from.",
      );
      await flow.init();
    }
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

final class _StateCommand extends Command<int> {
  _StateCommand(_Context context) {
    addSubcommand(_StateMigrateCommand(context));
  }

  @override
  String get name => 'state';

  @override
  String get description => 'Work with the state of the Stack.';
}

final class _StateMigrateCommand extends _TerradartCommand {
  _StateMigrateCommand(super.context) {
    argParser.addFlag(
      'auto-approve',
      negatable: false,
      help: 'Move the state without asking (required without a terminal).',
    );
  }

  @override
  String get name => 'migrate';

  @override
  String get description =>
      'Synth, then move the state to the backend the Stack configures '
      '(init -migrate-state) — after the Stack changes its backend.';

  @override
  String get invocation => 'terradart state migrate [--env <name>]';

  @override
  Future<int> run() async {
    if (args.rest.isNotEmpty) {
      usageException('state migrate takes no arguments after --.');
    }
    final flow = workflow();
    if (synthFirst) await flow.synth();
    flow.ensureInitializedEnvironment();
    final from = flow.initializedBackend;
    final to = flow.configuredBackend;
    flow.confirmStateMove(
      autoApprove: args.flag('auto-approve'),
      from: from,
      to: to,
    );
    await flow.migrateState();
    context.console.out('Moved the state to $to.');
    return 0;
  }
}

import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';

import 'cli_exception.dart';
import 'config.dart';
import 'engine.dart';
import 'help.dart';
import 'init_command.dart';
import 'migrate_command.dart';
import 'output/exit_codes.dart';
import 'output/interaction.dart';
import 'output/json_result.dart';
import 'process_runner.dart';
import 'skill/installer.dart';
import 'skill/skill_command.dart';
import 'target.dart';
import 'workflow.dart';

/// Runs the `terradart` command with [arguments] and returns its exit code.
///
/// [runner], [console], [workingDirectory], [environment] (read for `PATH`,
/// `TERRADART_ENV`, `TERRADART_NO_INPUT`, `CI`, the [agentVariables],
/// `TERRADART_CACHE_DIR`, `TERRADART_OPENTOFU_MIRROR` and
/// `TERRADART_NO_SKILL_NOTICE`) and
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
  final cli = TerradartRunner()
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
    ..addCommand(MigrateCommand(io))
    ..addCommand(SkillCommand(console: io, cwd: context.cwd));
  cli.argParser
    ..addFlag(
      'no-input',
      negatable: false,
      help:
          'Never ask, even on a terminal; a command that needs an answer '
          'stops with the flag that gives it. Also: \$$noInputVariable=1, '
          '\$CI, or an AI agent\'s shell.',
    )
    ..addFlag(
      'quiet',
      abbr: 'q',
      negatable: false,
      help:
          'Leave out the values terradart picks by itself (env, engine); '
          'errors and warnings still print.',
    )
    ..addFlag(
      'json',
      negatable: false,
      help:
          'Print one JSON result on stdout (schemaVersion 1) and everything '
          'else on stderr; implies --no-input.',
    );
  if (arguments case ['help', ...final rest]) {
    if (topicHelp(rest, cli) case final text?) {
      io.out(text);
      return 0;
    }
  }

  final path = _commandPath(arguments, cli);
  // `--json` on `migrate` is the migrator's own report, wherever it is
  // written: a global one moves onto the command.
  if (path == 'migrate') arguments = _jsonOntoMigrate(arguments);
  // Set before parsing, so a usage error is a result too.
  if (path != 'migrate' &&
      arguments.takeWhile((a) => a != '--').contains('--json')) {
    io.result = JsonResult(path);
  }
  int finish(int code) {
    if (io.result case final result?) io.printResult(result.encode(code));
    return code;
  }

  try {
    final results = cli.parse(arguments);
    final json = results.flag('json');
    if (!json) io.result = null;
    if (json && results.command == null) {
      throw UsageException('--json needs a command.', cli.usage);
    }
    io
      ..result ??= json ? JsonResult(path) : null
      ..noInput = json && !results.flag('no-input')
          ? '--json'
          : noInputReason(
              context.environment,
              noInputFlag: results.flag('no-input'),
            )
      ..quiet = results.flag('quiet');
    // `--help` prints usage with `print`; with `--json` stdout carries the
    // result alone.
    final code = json
        ? await runZoned(
            () => cli.runCommand(results),
            zoneSpecification: ZoneSpecification(
              print: (_, _, _, line) => io.err(line),
            ),
          )
        : await cli.runCommand(results);
    return finish(code ?? 0);
  } on UsageException catch (e) {
    io.err('$e');
    final code = ExitCode.usage.code;
    if (io.result case final r?) {
      io.printResult(r.encode(code, usage: e.message));
    }
    return code;
  } on CliException catch (e) {
    io.err('terradart: ${e.message}');
    if (e.choices.isNotEmpty) io.err('  Choices: ${e.choices.join(', ')}');
    final next = [for (final add in e.next) commandLine(arguments, add)];
    for (final line in next) {
      io.err('  Next: $line');
    }
    if (io.result case final r?) {
      io.printResult(r.encode(e.exitCode, error: e, errorNext: next));
    }
    return e.exitCode;
  } on Object catch (e) {
    final result = io.result;
    if (result == null) rethrow;
    final error = CliException('$e');
    io
      ..err('terradart: $e')
      ..printResult(result.encode(error.exitCode, error: error));
    return error.exitCode;
  }
}

/// [arguments] with a `--json` written before `migrate` moved after it.
List<String> _jsonOntoMigrate(List<String> arguments) {
  final at = arguments.indexOf('migrate');
  final before = arguments.sublist(0, at);
  final after = arguments.sublist(at + 1);
  if (!before.contains('--json')) return arguments;
  return [
    ...before.where((a) => a != '--json'),
    'migrate',
    if (!after.takeWhile((a) => a != '--').contains('--json')) '--json',
    ...after,
  ];
}

/// The command path the arguments name (`plan`, `state migrate`), for the
/// `--json` result before they are parsed; `terradart` when none.
String _commandPath(List<String> arguments, CommandRunner<int> cli) {
  final path = <String>[];
  var commands = cli.commands;
  for (final a in arguments.takeWhile((a) => a != '--')) {
    final command = commands[a];
    if (command == null) continue;
    path.add(command.name);
    commands = command.subcommands;
  }
  return path.isEmpty ? 'terradart' : path.join(' ');
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

  /// The `Examples:` of `--help`: the simplest use first, the form an agent
  /// runs (`--no-input --json`) last.
  List<String> get examples;

  /// The help topics `--help` points at.
  List<String> get seeAlso => const [];

  @override
  String get usageFooter => commandFooter(examples, seeAlso: seeAlso);

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
    if (context.environment['TERRADART_NO_SKILL_NOTICE'] != '1') {
      if (skillNotice(root) case final notice?) {
        context.console
          ..err('terradart: ${notice.message}')
          ..result?.notices.add(notice);
      }
    }
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

/// `apply --dry-run` and `destroy --dry-run`: what `plan` does, then the
/// command to run without the flag.
Future<int> _dryRun(Workflow flow, String action, List<String> extra) async {
  flow.console.result?.dryRun = true;
  await flow.checkLocalState();
  await flow.init();
  await flow.selectWorkspace(create: action == 'apply');
  await flow.checkBackendState();
  await flow.plan(extra, destroy: action == 'destroy', next: false);
  flow.console.out(
    'Dry run: nothing was ${action == 'apply' ? 'applied' : 'destroyed'}.',
  );
  flow.suggest(action);
  return 0;
}

final class _SynthCommand extends _TerradartCommand {
  _SynthCommand(super.context);

  @override
  List<String> get examples => const [
    'terradart synth',
    'terradart synth --env dev',
    'terradart synth --env dev --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['environments'];

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
      context.console.info('env: $env (${request.envSource.label})');
    }
    await flow.synth();
    return 0;
  }
}

final class _ValidateCommand extends _TerradartCommand {
  _ValidateCommand(super.context);

  @override
  List<String> get examples => const [
    'terradart validate',
    'terradart validate --env prd',
    'terradart validate --env dev --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['environments', 'exit-codes'];

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
  _PlanCommand(super.context) {
    argParser.addFlag(
      'detailed-exitcode',
      negatable: false,
      help: 'Exit 2 when the plan has changes, 0 when it has none.',
    );
  }

  @override
  List<String> get examples => const [
    'terradart plan --env dev',
    'terradart plan --env prd -- -target=google_storage_bucket.assets',
    'terradart plan --env dev --detailed-exitcode --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['environments', 'backends', 'json'];

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
    return flow.plan(
      args.rest,
      detailedExitCode: args.flag('detailed-exitcode'),
    );
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
        'dry-run',
        negatable: false,
        help:
            'Synth, init and plan, and stop there: nothing is applied and '
            'no define file is written.',
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
  List<String> get examples => const [
    'terradart apply --env dev',
    'terradart apply --env prd --dry-run',
    'terradart apply --env dev --auto-approve --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['environments', 'outputs'];

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
    if (args.flag('dry-run')) return _dryRun(flow, 'apply', args.rest);
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
    argParser.addFlag(
      'dry-run',
      negatable: false,
      help: 'Synth, init and plan -destroy, and stop there.',
    );
  }

  @override
  List<String> get examples => const [
    'terradart destroy --env dev',
    'terradart destroy --env dev --dry-run',
    'terradart destroy --env dev --auto-approve --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['environments', 'backends'];

  @override
  String get name => 'destroy';

  @override
  String get description =>
      'Synth, then init and destroy. Arguments after -- go to the engine.';

  @override
  Future<int> run() async {
    final flow = workflow();
    if (synthFirst) await flow.synth();
    if (args.flag('dry-run')) return _dryRun(flow, 'destroy', args.rest);
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
    argParser.addFlag(
      'dry-run',
      negatable: false,
      help: 'Read the outputs and print the file and keys, without writing.',
    );
    addDefineOptions();
  }

  @override
  List<String> get examples => const [
    'terradart outputs --env stg',
    'terradart outputs --env stg --define-file ../app/dart_defines.json',
    'terradart outputs --env stg --dry-run --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['outputs'];

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
    await flow.writeDefines(required: true, dryRun: args.flag('dry-run'));
    return 0;
  }
}

final class _EngineCommand extends _TerradartCommand {
  _EngineCommand(super.context);

  @override
  List<String> get examples => const [
    'terradart engine',
    'terradart engine --engine terraform',
    'terradart engine --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['engines'];

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
    if (context.console.result case final result?) {
      result.engine = (
        kind: engine.kind.name,
        version: await engineVersion(engine, context.runner),
        source: engine.source.id,
        path: engine.path,
      );
    }
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
  List<String> get examples => const [
    'terradart state migrate --env dev',
    'terradart state migrate --env dev --auto-approve --no-input --json',
  ];

  @override
  List<String> get seeAlso => const ['backends', 'environments'];

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

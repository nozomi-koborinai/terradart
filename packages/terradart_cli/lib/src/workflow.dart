import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'backend_secrets.dart';
import 'cli_exception.dart';
import 'engine.dart';
import 'manifest.dart';
import 'output/exit_codes.dart';
import 'output/json_result.dart';
import 'process_runner.dart';
import 'state_engine.dart';
import 'target.dart';

/// Where the CLI prints: progress to [out], warnings to [err], questions
/// through [ask]; with `--json` ([result]) progress goes to [err] too, and
/// stdout carries the result alone.
final class Console {
  Console({required this._out, required this.err, this._ask});

  /// [stdout] and [stderr]; questions read [stdin] when both it and
  /// [stdout] are a terminal (`stdin.hasTerminal` alone is also true for
  /// `< /dev/null`).
  factory Console.io() => Console(
    out: stdout.writeln,
    err: stderr.writeln,
    ask: stdin.hasTerminal && stdout.hasTerminal
        ? (question) {
            stdout.write(question);
            return stdin.readLineSync();
          }
        : null,
  );

  final void Function(String) _out;
  final void Function(String) err;
  final String? Function(String question)? _ask;

  /// The `--json` result the command fills in; `null` without `--json`.
  JsonResult? result;

  /// Progress: stdout, or stderr with `--json`.
  void out(String message) => (result == null ? _out : err)(message);

  /// Prints the `--json` result, the one line on stdout.
  void printResult(String json) => _out(json);

  /// Why nobody is asked although there is a terminal (`--no-input`, `CI`,
  /// an agent's shell); `null` when nothing says so.
  String? noInput;

  /// `--quiet`: [info] prints nothing.
  bool quiet = false;

  /// Prints a question and returns the answer line, `null` at end of input;
  /// `null` itself when nobody can answer — no terminal, or [noInput] — and
  /// commands use their defaults or stop with the flag that decides.
  String? Function(String question)? get ask => noInput == null ? _ask : null;

  /// A value the command picked by itself (a default environment), which
  /// `--quiet` leaves out.
  void info(String message) {
    if (!quiet) out(message);
  }

  void warn(String message) => err('warning: $message');

  /// Asks a yes / no question; [fallback] on an empty answer, `null` when
  /// nobody can answer.
  bool? confirm(String question, {bool fallback = false}) {
    final ask = this.ask;
    if (ask == null) return null;
    while (true) {
      final answer = ask(
        '$question ${fallback ? '[Y/n]' : '[y/N]'} ',
      )?.trim().toLowerCase();
      if (answer == null || answer.isEmpty) return fallback;
      if (answer == 'y' || answer == 'yes') return true;
      if (answer == 'n' || answer == 'no') return false;
      err('Answer y or n.');
    }
  }

  /// Asks for one of [choices] by number or name; `null` when nobody can
  /// answer. The question names [flag], which answers it without asking.
  String? choose(
    String question,
    List<String> choices, {
    required String flag,
  }) {
    final ask = this.ask;
    if (ask == null) return null;
    final listed = [
      for (final (i, c) in choices.indexed) '(${i + 1}) $c',
    ].join('  ');
    while (true) {
      final answer = ask(
        '$question $listed  (non-interactive: $flag <name>) ',
      )?.trim();
      if (answer == null) return null;
      if (choices.contains(answer)) return answer;
      final n = int.tryParse(answer);
      if (n != null && n >= 1 && n <= choices.length) return choices[n - 1];
      err('Answer a number from 1 to ${choices.length}, or a name.');
    }
  }
}

final class Workflow {
  Workflow({
    required this.request,
    required this.runner,
    required this.console,
    required this.cwd,
    required this._resolver,
    this.dartExecutable,
  });

  Request request;
  final ProcessRunner runner;
  final Console console;

  final String cwd;

  final String? dartExecutable;

  final EngineResolver _resolver;
  Engine? _engine;
  String? _version;
  Target? _target;
  bool _stateChecked = false;

  String get _root => request.config.root;

  File get _manifest => File(p.join(_root, '.terradart', 'manifest.json'));

  Future<void> synth() async {
    final entry = request.config.entrypoint;
    if (!File(p.join(_root, entry)).existsSync()) {
      throw CliException(
        'No $entry in ${_show(_root)}. Point terradart.entrypoint in '
        'pubspec.yaml at the Dart file whose main() synthesizes the Stack.',
        kind: ExitCode.projectConfig,
      );
    }
    final dart = dartExecutable ?? dartBinary();
    final args = request.entryArgs;
    console.out('> dart run $entry${args.isEmpty ? '' : ' ${args.join(' ')}'}');
    if (_manifest.existsSync()) _manifest.deleteSync();
    _ignoreStateDir(_manifest.parent);
    final code = await runner.stream(
      dart,
      ['run', entry, ...args],
      workingDirectory: _root,
      environment: {manifestVariable: _manifest.path},
      toStderr: console.result != null,
    );
    if (code != 0) {
      final from = request.envSource == EnvSource.variable
          ? ' (--env ${request.env} comes from $envVariable)'
          : '';
      final isUsageError = code == ExitCode.usage.code;
      throw CliException(
        'synth failed: $entry exited $code$from.',
        kind: isUsageError
            ? (request.env == null
                  ? ExitCode.missingFlag
                  : ExitCode.projectConfig)
            : ExitCode.synthFailed,
        flag: isUsageError ? '--env' : null,
      );
    }
    _target = null;
  }

  Target get target {
    if (_target case final target?) return target;
    final manifest = Manifest.read(_manifest);
    Target target;
    try {
      target = request.resolve(manifest);
    } on CliException catch (e) {
      if (e.kind != ExitCode.missingFlag || e.flag != '--env') rethrow;
      final env = console.choose('Environment?', e.choices, flag: '--env');
      if (env == null) rethrow;
      request = request.withEnv(env, EnvSource.prompt);
      target = request.resolve(manifest);
    }
    _target = target;
    if (console.result case final result?) {
      result.outDir = _show(target.dir);
      if (target.environment case final env?) {
        result.env = (name: env, source: target.environmentSource!.id);
      }
    }
    if (target.ignoredEnv case final env?) {
      console.info(
        '$envVariable=$env ignored: ${request.config.entrypoint} declares no '
        'environments.',
      );
    }
    if (target.environment case final env?) {
      console.info('env: $env (${target.environmentSource!.label})');
    }
    return target;
  }

  void confirmEnvironment(String action, {required bool autoApprove}) {
    if (autoApprove) return;
    final env = target.environment;
    final source = target.environmentSource;
    final ask = console.ask;
    if (ask == null) {
      throw CliException(
        '$action needs --auto-approve when it cannot ask'
        '${console.noInput == null ? ' (no terminal)' : ' (${console.noInput})'}.',
        kind: ExitCode.inputRequired,
        flag: '--auto-approve',
        next: [
          [
            if (env != null && source != EnvSource.flag) ...['--env', env],
            '--auto-approve',
          ],
        ],
      );
    }
    if (env == null || source == null || !source.confirms) return;
    final answer = ask(
      '${action[0].toUpperCase()}${action.substring(1)} environment "$env" '
      '(${source.label})? Only "yes" is accepted: ',
    );
    if (answer?.trim() != 'yes') {
      throw CliException('Cancelled: did not $action environment "$env".');
    }
  }

  String get dir => target.dir;

  Future<Engine> engine() async {
    if (_engine case final engine?) return engine;
    final records = _records();
    final key = target.stateKey;
    final recorded = records.read()[key];
    final engine = await _resolver.resolve(
      recorded: recorded,
      terraformOnly: terraformOnlyProviders(dir),
    );
    _version = await engineVersion(engine, runner);
    console.info(
      'Using ${engine.kind.label} ${_version ?? '(unknown version)'} '
      '(${engine.reason})',
    );
    console.result?.engine = (
      kind: engine.kind.name,
      version: _version,
      source: engine.source.id,
      path: engine.path,
    );
    if (recorded != null) {
      final warning = engineSwitchWarning(recorded, engine.kind, _version);
      if (warning != null) console.warn(warning);
      _stateChecked = true;
    }
    return _engine = engine;
  }

  Future<void> checkLocalState() async {
    final engine = await this.engine();
    if (_stateChecked || !configuredLocalBackend(dir)) return;
    final writer = stateFileWriter(
      localStateFile(dir, target.workspace),
      pinned: pinnedTerraformProviders(dir),
    );
    if (writer == null) return;
    _stateChecked = true;
    _guardState(writer, engine);
  }

  Future<void> checkBackendState() async {
    final engine = await this.engine();
    if (_stateChecked || !initializedRemoteBackend(dir)) return;
    _stateChecked = true;
    final pulled = await runner.capture(engine.path, [
      'state',
      'pull',
    ], workingDirectory: dir);
    if (pulled.exitCode != 0) return;
    final writer = stateTextWriter(
      pulled.stdout,
      pinned: pinnedTerraformProviders(dir),
    );
    if (writer != null) _guardState(writer, engine);
  }

  void _guardState(StateWriter writer, Engine engine) {
    if (writer.kind == engine.kind) return;
    final now = engine.kind.label;
    final was = writer.kind.label;
    console.warn(
      'The state in ${_show(dir)} was written by ${writer.evidence}, but '
      'terradart is about to run $now${_version == null ? '' : ' $_version'} '
      '(${engine.reason}). $now rewrites the state for itself at the next '
      'apply, and $was may not read it back.',
    );
    final settings = request.config.engine;
    if (settings.kind != null || settings.path != null) return;
    final choose =
        'Pass --engine ${writer.kind.name} to keep $was (or set '
        'terradart.engine: ${writer.kind.name} in pubspec.yaml), or '
        '--engine ${engine.kind.name} to move the state to $now.';
    final answer = console.confirm('Run $now on it anyway?');
    if (answer == null) {
      throw CliException(
        'Stopped before running $now on a state $was wrote. $choose',
        kind: ExitCode.inputRequired,
        flag: '--engine',
        choices: [writer.kind.name, engine.kind.name],
        next: [
          ['--engine', writer.kind.name],
        ],
      );
    }
    if (!answer) throw CliException('Stopped. $choose');
  }

  Future<void> init() async {
    final reconfigure = target.backendConfigArgs.isNotEmpty;
    await _engineRun([
      'init',
      '-input=false',
      if (reconfigure) '-reconfigure',
      ...target.backendConfigArgs,
    ]);
    _recordInitializedEnvironment();
  }

  Future<void> selectWorkspace({required bool create}) async {
    final ws = target.workspace;
    if (ws == null) return;
    await _engineRun([
      'workspace',
      'select',
      if (create) '-or-create=true',
      ws,
    ]);
  }

  Future<void> validate(List<String> extra) async {
    await _engineRun(['init', '-backend=false', '-input=false']);
    await _engineRun(['validate', ...extra]);
  }

  String get configuredBackend => _configuredBackend().label;

  String get initializedBackend => _initializedBackend().label;

  void ensureInitializedEnvironment() {
    final env = target.environment;
    if (env == null || target.backendConfig.isEmpty) return;
    final recorded = _readInitializedEnvironment();
    final where = _show(dir);
    if (recorded == env) return;
    final detail = recorded == null
        ? 'TerraDart cannot tell which environment last initialized $where.'
        : 'The last init of $where was environment "$recorded", not "$env".';
    throw CliException(
      '$detail Run `terradart plan --env $env` first so state migrate '
      "copies that environment's state.",
      kind: ExitCode.usage,
    );
  }

  Future<void> migrateState() async {
    await _engineRun([
      'init',
      '-input=false',
      '-migrate-state',
      '-force-copy',
      ...target.backendConfigArgs,
    ]);
    _recordInitializedEnvironment();
  }

  void confirmStateMove({
    required bool autoApprove,
    required String from,
    required String to,
  }) {
    if (autoApprove) return;
    final question = 'Copy the state in ${_show(dir)} from $from to $to?';
    final answer = console.confirm(question);
    if (answer == null) {
      throw CliException(
        'state migrate copies the state to another backend: $question '
        'Pass --auto-approve to run it without asking.',
        kind: ExitCode.inputRequired,
        flag: '--auto-approve',
        next: [
          ['--auto-approve'],
        ],
      );
    }
    if (!answer) throw const CliException('Stopped; the state did not move.');
  }

  Future<int> plan(
    List<String> extra, {
    bool detailedExitCode = false,
    bool destroy = false,
    bool next = true,
  }) async {
    final result = console.result;
    final saved = result == null
        ? null
        : File(p.join(dir, '.terraform', 'terradart.tfplan'));
    final code = await _engineRun(
      [
        'plan',
        '-input=false',
        if (destroy) '-destroy',
        if (detailedExitCode) '-detailed-exitcode',
        if (saved != null) '-out=${saved.path}',
        ...extra,
      ],
      succeeds: {if (detailedExitCode) exitChanges},
    );
    if (saved != null && saved.existsSync()) {
      final engine = await this.engine();
      final shown = await runner.capture(engine.path, [
        'show',
        '-json',
        saved.path,
      ], workingDirectory: dir);
      saved.deleteSync();
      if (shown.exitCode == 0) {
        result!.plan = _parsePlanSummary(shown.stdout);
      }
    }
    if (next && (result?.plan?.hasChanges ?? false)) suggest('apply');
    return code == exitChanges ? exitChanges : 0;
  }

  Future<void> apply(List<String> extra, {required bool autoApprove}) async {
    await _engineRun([
      'apply',
      if (console.ask == null) '-input=false',
      if (autoApprove) '-auto-approve',
      ...extra,
    ]);
    await _record();
  }

  Future<void> destroy(List<String> extra, {required bool autoApprove}) async {
    await _engineRun([
      'destroy',
      if (console.ask == null) '-input=false',
      if (autoApprove) '-auto-approve',
      ...extra,
    ]);
    await _record();
  }

  void checkDefineOutput() {
    final name = target.defineOutput;
    if (name == null || !target.namedDefineOutput) return;
    if (target.declaresDefineOutput ?? _declaresOutput(name)) return;
    final declared = target.declaredDefineOutputs;
    throw CliException(
      'The Stack declares no dart-define output "$name"'
      '${declared == null || declared.isEmpty ? '; add it with addDartDefineOutput(name: \'$name\')' : '; it declares ${declared.join(', ')}'}.',
      kind: ExitCode.projectConfig,
    );
  }

  Future<void> writeDefines({
    required bool required,
    bool dryRun = false,
  }) async {
    final name = target.defineOutput;
    final declared = target.declaresDefineOutput ?? _declaresOutput(name);
    if (name == null || !declared) {
      if (!required && !target.namedDefineOutput) return;
      if (name == null) {
        throw const CliException(
          'The Stack declares no dart-define output; add one with '
          'addDartDefineOutput().',
          kind: ExitCode.projectConfig,
        );
      }
    }
    final engine = await this.engine();
    final result = await runner.capture(engine.path, [
      'output',
      '-json',
      name,
    ], workingDirectory: dir);
    if (result.exitCode != 0) {
      throw CliException(
        '${engine.kind.name} output -json $name failed in ${_show(dir)}:\n'
        '${result.stderr.trim()}\n'
        '${declared ? 'Apply the Stack first (terradart apply${_envFlag()}).' : 'Declare the output with addDartDefineOutput() in the Stack.'}',
        kind: ExitCode.engineFailed,
        engineExitCode: result.exitCode,
      );
    }
    final Object? value;
    try {
      value = jsonDecode(result.stdout);
    } on FormatException {
      throw CliException('Output "$name" is not JSON: ${result.stdout}');
    }
    if (value is! Map || value.values.any((v) => v is! String)) {
      throw CliException(
        'Output "$name" is not a map of strings; declare it with '
        'addDartDefineOutput() in the Stack.',
        kind: ExitCode.projectConfig,
      );
    }
    final file = File(target.defineFile!);
    final shown = _show(file.path);
    console.result
      ?..defineFile = shown
      ..keys = [for (final k in value.keys) '$k'];
    if (dryRun) {
      console.result?.dryRun = true;
      console.out(
        'Would write ${value.length} dart-defines to $shown: '
        '${value.keys.join(', ')}',
      );
      suggest('outputs');
      return;
    }
    await file.parent.create(recursive: true);
    _ignoreStateDir(file.parent);
    await file.writeAsString(
      '${const JsonEncoder.withIndent('  ').convert(value)}\n',
    );
    console
      ..out('Wrote ${value.length} dart-defines to $shown')
      ..out('  flutter run --dart-define-from-file=$shown')
      ..out('  flutter build <target> --dart-define-from-file=$shown');
  }

  static const _initializedEnvFile = 'terradart-env.json';

  _Backend _configuredBackend() {
    final found = readConfiguredBackend(dir);
    final config = {...found.attributes};
    for (final v in target.backendConfig) {
      if (v.contains('=')) {
        final eq = v.indexOf('=');
        final key = v.substring(0, eq).trim();
        if (key.isEmpty) continue;
        config[key] = _unquote(v.substring(eq + 1).trim());
      } else {
        final file = File(p.normalize(p.join(target.config.root, v)));
        if (!file.existsSync()) continue;
        try {
          config.addAll(_parseBackendFile(file.readAsStringSync()));
        } on FormatException {
          continue;
        } on FileSystemException {
          continue;
        }
      }
    }
    return _Backend(found.type, config);
  }

  _Backend _initializedBackend() {
    final file = File(p.join(dir, '.terraform', 'terraform.tfstate'));
    if (!file.existsSync()) return _Backend('local');
    try {
      final json = jsonDecode(file.readAsStringSync());
      if (json case {'backend': final Map<Object?, Object?> backend}) {
        final type = backend['type'];
        final config = backend['config'];
        return _Backend(
          type is String && type.isNotEmpty ? type : 'local',
          config is Map ? _stringConfig(config) : const {},
        );
      }
    } on FormatException {
      return _Backend('local');
    } on FileSystemException {
      return _Backend('local');
    }
    return _Backend('local');
  }

  void _recordInitializedEnvironment() {
    final env = target.environment;
    if (env == null) return;
    final file = File(p.join(dir, '.terraform', _initializedEnvFile));
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(
      '${jsonEncode({'environment': env, 'workspace': target.workspace})}\n',
    );
  }

  String? _readInitializedEnvironment() {
    final file = File(p.join(dir, '.terraform', _initializedEnvFile));
    if (!file.existsSync()) return null;
    try {
      final json = jsonDecode(file.readAsStringSync());
      if (json case {'environment': final String env} when env.isNotEmpty) {
        return env;
      }
    } on FormatException {
      return null;
    } on FileSystemException {
      return null;
    }
    return null;
  }

  bool _declaresOutput(String? name) {
    if (name == null) return false;
    final main = File(p.join(dir, 'main.tf.json'));
    if (!main.existsSync()) return false;
    try {
      final json = jsonDecode(main.readAsStringSync());
      return json is Map &&
          json['output'] is Map &&
          (json['output'] as Map).containsKey(name);
    } on FormatException {
      return false;
    }
  }

  void suggest(String command) =>
      console.result?.next.add('terradart $command${_envFlag()}');

  String _envFlag() => [
    if (target.environment case final env?) ' --env $env',
    if (target.workspace case final ws? when target.environment == null)
      ' --workspace $ws',
  ].join();

  Future<int> _engineRun(
    List<String> args, {
    Set<int> succeeds = const {},
  }) async {
    final engine = await this.engine();
    console.out('> ${engine.kind.name} ${args.join(' ')}  (in ${_show(dir)})');
    final code = await runner.stream(
      engine.path,
      args,
      workingDirectory: dir,
      toStderr: console.result != null,
    );
    if (code != 0 && !succeeds.contains(code)) {
      throw CliException(
        '${engine.kind.name} ${args.first} exited $code.',
        kind: ExitCode.engineFailed,
        engineExitCode: code,
      );
    }
    return code;
  }

  Future<void> _record() async {
    final engine = await this.engine();
    final version = _version;
    if (version == null) return;
    final records = _records();
    _ignoreStateDir(records.file.parent);
    records.write(target.stateKey, EngineRecord(engine.kind, version));
  }

  EngineRecords _records() =>
      EngineRecords(File(p.join(_root, '.terradart', 'engines.json')));

  void _ignoreStateDir(Directory dir) {
    if (!p.equals(dir.path, p.join(_root, '.terradart'))) return;
    dir.createSync(recursive: true);
    final ignore = File(p.join(dir.path, '.gitignore'));
    if (!ignore.existsSync()) ignore.writeAsStringSync('*\n');
  }

  String _show(String path) {
    final rel = p.relative(path, from: cwd);
    return rel.isEmpty ? '.' : rel;
  }
}

String dartBinary() {
  final vm = Platform.resolvedExecutable;
  return p.basenameWithoutExtension(vm) == 'dart' ? vm : 'dart';
}

final class _Backend {
  _Backend(this.type, [Map<String, String> raw = const {}])
    : config = Map.unmodifiable({
        for (final MapEntry(:key, :value) in raw.entries)
          if (key.isNotEmpty && !secretBackendArgument(key)) key: value,
      });

  final String type;
  final Map<String, String> config;

  String get label {
    if (config.isEmpty) return type;
    final keys = config.keys.toList()..sort();
    return '$type (${[for (final k in keys) '$k=${config[k]}'].join(', ')})';
  }
}

PlanSummary? _parsePlanSummary(String stdout) {
  try {
    if (jsonDecode(stdout) case final Map<String, Object?> json) {
      return PlanSummary.fromShowJson(json);
    }
  } on FormatException {
    return null;
  }
  return null;
}

Map<String, String> _stringConfig(Map<Object?, Object?> raw) {
  final out = <String, String>{};
  for (final MapEntry(:key, :value) in raw.entries) {
    if (key is! String || key.isEmpty || value == null) continue;
    if (value is String || value is num || value is bool) out[key] = '$value';
  }
  return out;
}

Map<String, String> _parseBackendFile(String text) {
  final trimmed = text.trim();
  if (trimmed.startsWith('{')) {
    final json = jsonDecode(trimmed);
    if (json is Map) return _stringConfig(json);
    return const {};
  }
  final out = <String, String>{};
  for (final raw in text.split('\n')) {
    final line = _stripLineComment(raw.trim());
    if (line.isEmpty) continue;
    final eq = line.indexOf('=');
    if (eq <= 0) continue;
    final key = line.substring(0, eq).trim();
    if (key.isEmpty) continue;
    out[key] = _unquote(line.substring(eq + 1).trim());
  }
  return out;
}

String _stripLineComment(String line) {
  var quoted = false;
  for (var i = 0; i < line.length; i++) {
    final c = line[i];
    if (c == '"') {
      quoted = !quoted;
      continue;
    }
    if (quoted) continue;
    if (c == '#') return line.substring(0, i).trim();
    if (c == '/' && i + 1 < line.length && line[i + 1] == '/') {
      return line.substring(0, i).trim();
    }
  }
  return line;
}

String _unquote(String value) {
  if (value.length >= 2 && value.startsWith('"') && value.endsWith('"')) {
    return value.substring(1, value.length - 1);
  }
  return value;
}

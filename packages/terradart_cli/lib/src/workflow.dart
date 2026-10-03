import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'engine.dart';
import 'manifest.dart';
import 'process_runner.dart';
import 'state_engine.dart';
import 'target.dart';

/// Where the CLI prints: progress to [out], warnings to [err], questions
/// through [ask].
final class Console {
  Console({
    required this.out,
    required this.err,
    String? Function(String question)? ask,
  }) : _ask = ask;

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

  final void Function(String) out;
  final void Function(String) err;
  final String? Function(String question)? _ask;

  /// Why nobody is asked although there is a terminal (`--no-input`, `CI`,
  /// an agent's shell); `null` when nothing says so.
  String? noInput;

  /// `--quiet`: [info] prints nothing.
  bool quiet = false;

  /// Prints a question and returns the answer line, `null` at end of input;
  /// `null` itself when nobody can answer — no terminal, or [noInput] — and
  /// commands use their defaults or stop with the flag that decides.
  String? Function(String question)? get ask => noInput == null ? _ask : null;

  /// A value the command picked by itself (`env: dev (default)`), which
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

/// The steps the commands are made of, for one [Request].
final class Workflow {
  Workflow({
    required this.request,
    required this.runner,
    required this.console,
    required this.cwd,
    required EngineResolver resolver,
    this.dartExecutable,
  }) : _resolver = resolver;

  /// What the command line asks for; an answer to the environment
  /// question replaces it.
  Request request;
  final ProcessRunner runner;
  final Console console;

  /// The directory paths are printed relative to.
  final String cwd;

  /// The `dart` binary that runs the entry point; `null` is the running VM
  /// when it is `dart`, else `dart` on `PATH`.
  final String? dartExecutable;

  final EngineResolver _resolver;
  Engine? _engine;
  String? _version;
  Target? _target;
  bool _stateChecked = false;

  String get _root => request.config.root;

  File get _manifest => File(p.join(_root, '.terradart', 'manifest.json'));

  /// Runs `dart run <entrypoint>` in the project.
  Future<void> synth() async {
    final entry = request.config.entrypoint;
    if (!File(p.join(_root, entry)).existsSync()) {
      throw CliException(
        'No $entry in ${_show(_root)}. Point terradart.entrypoint in '
        'pubspec.yaml at the Dart file whose main() synthesizes the Stack.',
        exitCode: 64,
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
    );
    if (code != 0) {
      final from = request.envSource == EnvSource.variable
          ? ' (--env ${request.env} comes from $envVariable)'
          : '';
      throw CliException(
        'synth failed: $entry exited $code$from.',
        exitCode: code,
      );
    }
    _target = null;
  }

  /// What this command runs against: what the entry point last wrote, as
  /// its manifest describes it. Prints the environment and why it is the
  /// one.
  Target get target {
    if (_target case final target?) return target;
    final manifest = Manifest.read(_manifest);
    Target target;
    try {
      target = request.resolve(manifest);
    } on CliException catch (e) {
      // Only a missing --env lists its choices and suggests a command.
      if (e.flag != '--env' || e.next.isEmpty) rethrow;
      final env = console.choose('Environment?', e.choices, flag: '--env');
      if (env == null) rethrow;
      request = request.withEnv(env, EnvSource.prompt);
      target = request.resolve(manifest);
    }
    _target = target;
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

  /// Before `apply` or `destroy`, unless [autoApprove]: without a terminal
  /// stops with exit code 3, since the engine cannot ask for approval; on
  /// one asks whether to run against an environment the command line did
  /// not name (`TERRADART_ENV` or the entry point's `defaultEnv`).
  void confirmEnvironment(String action, {required bool autoApprove}) {
    if (autoApprove) return;
    final env = target.environment;
    final source = target.environmentSource;
    final ask = console.ask;
    if (ask == null) {
      throw CliException(
        '$action needs --auto-approve when it cannot ask'
        '${console.noInput == null ? ' (no terminal)' : ' (${console.noInput})'}.',
        exitCode: 3,
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

  /// The Terraform directory this command runs in.
  String get dir => target.dir;

  /// The engine, resolved once and checked against the engine that last
  /// applied the state.
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
    if (recorded != null) {
      final warning = engineSwitchWarning(recorded, engine.kind, _version);
      if (warning != null) console.warn(warning);
      _stateChecked = true;
    }
    return _engine = engine;
  }

  /// Before `init`: stops when the target's local state file was written by
  /// the other engine than the one about to run, and nothing records which
  /// engine last applied it (see [_guardState]). A remote backend is not
  /// read here — a leftover local file is not its state; [checkBackendState]
  /// pulls that after `init`.
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

  /// After `init` and the workspace: the same check against the state the
  /// backend holds (`state pull`), when `init` configured a backend other
  /// than `local` and [checkLocalState] found nothing.
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

  /// A state written by one engine is rewritten for the other at its next
  /// apply, and the first may not read it back. An engine the command line
  /// or `pubspec.yaml` chose runs with a warning; one terradart picked by
  /// itself (`PATH`, the OpenTofu download) needs a yes on the terminal, and
  /// without a terminal stops with the flag that decides.
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
        exitCode: 3,
        flag: '--engine',
        choices: [writer.kind.name, engine.kind.name],
        next: [
          ['--engine', writer.kind.name],
        ],
      );
    }
    if (!answer) throw CliException('Stopped. $choose');
  }

  /// `init`, with the target's backend configuration. A target that passes
  /// `-backend-config` re-initializes (`-reconfigure`) every time, so a
  /// directory shared by several environments never keeps another one's
  /// backend. Records which environment this was, so [ensureInitializedEnvironment]
  /// can refuse to copy a different one's state.
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

  /// Selects the target's workspace, creating it when [create] is set.
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

  /// `init -backend=false`, then `validate`: needs the providers, not the
  /// backend, its credentials or the state.
  Future<void> validate(List<String> extra) async {
    await _engineRun(['init', '-backend=false', '-input=false']);
    await _engineRun(['validate', ...extra]);
  }

  /// The backend the Stack configures, from the `*.tf.json` files in [dir]
  /// plus this environment's partial `-backend-config` (bucket, prefix, and
  /// the rest). `local` when nothing configures one.
  String get configuredBackend => _configuredBackend().label;

  /// The backend the last `init` in [dir] actually configured
  /// (`.terraform/terraform.tfstate`, including bucket and prefix — not only
  /// the type). `local` before any.
  String get initializedBackend => _initializedBackend().label;

  /// Stops when [target] passes `backendConfig` and the last `init` of [dir]
  /// was a different environment, or which environment it was is not
  /// recorded. `init -migrate-state -force-copy` would otherwise copy that
  /// other state into this environment's backend. `--auto-approve` does not
  /// skip this.
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
      exitCode: 64,
    );
  }

  /// `init -migrate-state`: copies the state from the backend the last
  /// `init` configured to the one the Stack configures now. `-force-copy`
  /// answers the engine's copy prompt, which the caller has already asked.
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

  /// Asks before copying the state, unless [autoApprove]. The question names
  /// the full source and target configuration. Nobody to answer stops with
  /// exit code 3.
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
        exitCode: 3,
        flag: '--auto-approve',
        next: [
          ['--auto-approve'],
        ],
      );
    }
    if (!answer) throw const CliException('Stopped; the state did not move.');
  }

  Future<void> plan(List<String> extra) =>
      _engineRun(['plan', '-input=false', ...extra]);

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

  /// Fails when `--define-output` or `pubspec.yaml` names an output the
  /// Stack does not declare — before `apply` changes anything.
  void checkDefineOutput() {
    final name = target.defineOutput;
    if (name == null || !target.namedDefineOutput) return;
    if (target.declaresDefineOutput ?? _declaresOutput(name)) return;
    final declared = target.declaredDefineOutputs;
    throw CliException(
      'The Stack declares no dart-define output "$name"'
      '${declared == null || declared.isEmpty ? '; add it with addDartDefineOutput(name: \'$name\')' : '; it declares ${declared.join(', ')}'}.',
      exitCode: 64,
    );
  }

  /// Writes the define file from `output -json <defineOutput>`.
  ///
  /// When [required] is false (after `apply`), a Stack that declares no
  /// define output is skipped; one `--define-output` or `pubspec.yaml`
  /// names must exist ([checkDefineOutput]).
  Future<void> writeDefines({required bool required}) async {
    final name = target.defineOutput;
    final declared = target.declaresDefineOutput ?? _declaresOutput(name);
    if (name == null || !declared) {
      if (!required && !target.namedDefineOutput) return;
      if (name == null) {
        throw const CliException(
          'The Stack declares no dart-define output; add one with '
          'addDartDefineOutput().',
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
        exitCode: result.exitCode,
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
      );
    }
    final file = File(target.defineFile!);
    await file.parent.create(recursive: true);
    _ignoreStateDir(file.parent);
    await file.writeAsString(
      '${const JsonEncoder.withIndent('  ').convert(value)}\n',
    );
    final shown = _show(file.path);
    console
      ..out('Wrote ${value.length} dart-defines to $shown')
      ..out('  flutter run --dart-define-from-file=$shown')
      ..out('  flutter build <target> --dart-define-from-file=$shown');
  }

  static const _initializedEnvFile = 'terradart-env.json';

  /// Backend arguments whose values must not appear in the migrate question.
  static const _secretBackendKeys = {
    'access_key',
    'access_token',
    'client_secret',
    'credentials',
    'encryption_key',
    'password',
    'sas_token',
    'secret_key',
    'token',
  };

  _Backend _configuredBackend() {
    var spec = const _Backend('local');
    if (Directory(dir).existsSync()) {
      for (final f in Directory(dir).listSync().whereType<File>()) {
        if (!f.path.endsWith('.tf.json')) continue;
        try {
          final found = _backendFromTfJson(jsonDecode(f.readAsStringSync()));
          if (found != null) {
            spec = found;
            break;
          }
        } on FormatException {
          continue;
        } on FileSystemException {
          continue;
        }
      }
    }
    final config = {...spec.config};
    for (final v in target.backendConfig) {
      if (v.contains('=')) {
        final eq = v.indexOf('=');
        final key = v.substring(0, eq).trim();
        if (key.isEmpty || _secretBackendKeys.contains(key)) continue;
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
    return _Backend(spec.type, config);
  }

  _Backend _initializedBackend() {
    final file = File(p.join(dir, '.terraform', 'terraform.tfstate'));
    if (!file.existsSync()) return const _Backend('local');
    try {
      final json = jsonDecode(file.readAsStringSync());
      if (json case {'backend': final Map<Object?, Object?> backend}) {
        final type = backend['type'];
        final config = backend['config'];
        return _Backend(
          type is String && type.isNotEmpty ? type : 'local',
          config is Map ? _publicConfig(config) : const {},
        );
      }
    } on FormatException {
      return const _Backend('local');
    } on FileSystemException {
      return const _Backend('local');
    }
    return const _Backend('local');
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

  /// The environment the last `init` recorded, or `null` when that record
  /// is missing or unreadable.
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

  String _envFlag() => [
    if (target.environment case final env?) ' --env $env',
    if (target.workspace case final ws? when target.environment == null)
      ' --workspace $ws',
  ].join();

  Future<void> _engineRun(List<String> args) async {
    final engine = await this.engine();
    console.out('> ${engine.kind.name} ${args.join(' ')}  (in ${_show(dir)})');
    final code = await runner.stream(engine.path, args, workingDirectory: dir);
    if (code != 0) {
      throw CliException(
        '${engine.kind.name} ${args.first} exited $code.',
        exitCode: code,
      );
    }
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

  /// Keeps `<project>/.terradart/` out of git without editing `.gitignore`.
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

/// The running VM when it is `dart`, else `dart` on `PATH`.
String dartBinary() {
  final vm = Platform.resolvedExecutable;
  return p.basenameWithoutExtension(vm) == 'dart' ? vm : 'dart';
}

/// A backend type plus the configuration that tells one of that type from
/// another (`bucket`, `prefix`), with secret values left out.
final class _Backend {
  const _Backend(this.type, [this.config = const {}]);

  final String type;
  final Map<String, String> config;

  String get label {
    if (config.isEmpty) return type;
    final keys = config.keys.toList()..sort();
    return '$type (${[for (final k in keys) '$k=${config[k]}'].join(', ')})';
  }
}

_Backend? _backendFromTfJson(Object? json) {
  if (json is! Map) return null;
  final terraform = json['terraform'];
  if (terraform is! Map) return null;
  final backend = terraform['backend'];
  if (backend is Map && backend.isNotEmpty) {
    final type = backend.keys.first;
    if (type is! String) return null;
    final body = backend[type];
    return _Backend(type, body is Map ? _publicConfig(body) : const {});
  }
  if (terraform['cloud'] is Map) {
    return _Backend('cloud', _publicConfig(terraform['cloud'] as Map));
  }
  return null;
}

Map<String, String> _publicConfig(Map<Object?, Object?> raw) {
  final out = <String, String>{};
  for (final MapEntry(:key, :value) in raw.entries) {
    if (key is! String || value == null) continue;
    if (Workflow._secretBackendKeys.contains(key)) continue;
    if (value is String || value is num || value is bool) out[key] = '$value';
  }
  return out;
}

/// A partial backend file: a JSON object, or one `key = "value"` assignment
/// per line. Not general HCL.
Map<String, String> _parseBackendFile(String text) {
  final trimmed = text.trim();
  if (trimmed.startsWith('{')) {
    final json = jsonDecode(trimmed);
    if (json is Map) return _publicConfig(json);
    return const {};
  }
  final out = <String, String>{};
  for (final raw in text.split('\n')) {
    final line = _stripLineComment(raw.trim());
    if (line.isEmpty) continue;
    final eq = line.indexOf('=');
    if (eq <= 0) continue;
    final key = line.substring(0, eq).trim();
    if (key.isEmpty || Workflow._secretBackendKeys.contains(key)) continue;
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

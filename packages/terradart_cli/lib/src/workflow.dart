import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'engine.dart';
import 'manifest.dart';
import 'process_runner.dart';
import 'target.dart';

/// Where the CLI prints: progress to [out], warnings to [err].
final class Console {
  const Console({required this.out, required this.err});

  /// [stdout] and [stderr].
  factory Console.io() => Console(out: stdout.writeln, err: stderr.writeln);

  final void Function(String) out;
  final void Function(String) err;

  void warn(String message) => err('warning: $message');
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

  final Request request;
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
    final dart = dartExecutable ?? _dart();
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
      throw CliException('synth failed: $entry exited $code.', exitCode: code);
    }
    _target = null;
  }

  /// What this command runs against: what the entry point last wrote, as
  /// its manifest describes it.
  Target get target => _target ??= request.resolve(Manifest.read(_manifest));

  /// The Terraform directory this command runs in.
  String get dir => target.dir;

  /// The engine, resolved once and checked against the engine that last
  /// applied the state.
  Future<Engine> engine() async {
    if (_engine case final engine?) return engine;
    final records = _records();
    final key = target.stateKey;
    final recorded = records.read()[key];
    final engine = await _resolver.resolve(recorded: recorded);
    _version = await engineVersion(engine, runner);
    console.out(
      'Using ${engine.kind.label} ${_version ?? '(unknown version)'} '
      '(${engine.reason})',
    );
    if (recorded != null) {
      final warning = engineSwitchWarning(recorded, engine.kind, _version);
      if (warning != null) console.warn(warning);
    }
    return _engine = engine;
  }

  /// `init`, with the target's backend configuration. A target that passes
  /// `-backend-config` re-initializes (`-reconfigure`) every time, so a
  /// directory shared by several environments never keeps another one's
  /// backend.
  Future<void> init() async {
    final reconfigure = target.backendConfigArgs.isNotEmpty;
    await _engineRun([
      'init',
      '-input=false',
      if (reconfigure) '-reconfigure',
      ...target.backendConfigArgs,
    ]);
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

  Future<void> plan(List<String> extra) =>
      _engineRun(['plan', '-input=false', ...extra]);

  Future<void> apply(List<String> extra, {required bool autoApprove}) async {
    await _engineRun(['apply', if (autoApprove) '-auto-approve', ...extra]);
    await _record();
  }

  Future<void> destroy(List<String> extra, {required bool autoApprove}) async {
    await _engineRun(['destroy', if (autoApprove) '-auto-approve', ...extra]);
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

  static String _dart() {
    final vm = Platform.resolvedExecutable;
    return p.basenameWithoutExtension(vm) == 'dart' ? vm : 'dart';
  }
}

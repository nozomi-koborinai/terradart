import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

typedef Call = ({
  String executable,
  List<String> args,
  String? workingDirectory,
  Map<String, String>? environment,
  bool streamed,
  bool toStderr,
});

typedef FakeSynth = ({
  Map<String, Object?> files,
  Map<String, Object?>? manifest,
  int exitCode,
});

FakeSynth plainEntry(Map<String, Object?> files) =>
    (files: files, manifest: null, exitCode: 0);

FakeSynth runStackEntry({
  String dir = 'tf-out',
  List<String> dartDefines = const [],
}) => (
  files: {dir: mainTf(outputs: dartDefines)},
  manifest: {
    'version': 1,
    'environments': null,
    'selected': null,
    'roots': [_root(null, dir, null, const [], dartDefines)],
  },
  exitCode: 0,
);

FakeSynth runEnvironmentsEntry(
  List<String> args,
  List<String> envs, {
  String Function(String env)? dir,
  String? Function(String env)? workspace,
  List<String> Function(String env)? backendConfig,
  List<String> dartDefines = const ['dart_defines'],
  String? defaultEnv,
}) {
  final i = args.indexOf('--env');
  final selected = i >= 0 ? args[i + 1] : null;
  if (selected != null && !envs.contains(selected)) {
    return (files: const {}, manifest: null, exitCode: 64);
  }
  String dirOf(String env) => dir?.call(env) ?? 'tf-out/$env';
  final written = selected == null ? envs : [selected];
  return (
    files: {for (final e in written) dirOf(e): mainTf(outputs: dartDefines)},
    manifest: {
      'version': 1,
      'environments': envs,
      'selected': selected,
      'default': defaultEnv,
      'roots': [
        for (final e in written)
          _root(
            e,
            dirOf(e),
            workspace?.call(e),
            backendConfig?.call(e) ?? const [],
            dartDefines,
          ),
      ],
    },
    exitCode: 0,
  );
}

Map<String, Object?> _root(
  String? env,
  String dir,
  String? workspace,
  List<String> backendConfig,
  List<String> dartDefines,
) => {
  'environment': env,
  'dir': dir,
  'workspace': workspace,
  'backend_config': backendConfig,
  'dart_defines': dartDefines,
};

final class FakeRunner implements ProcessRunner {
  FakeRunner({
    this.synth,
    this.outputs = const {},
    this.engineVersion = '1.13.1',
    this.failOn,
    this.failCode = 1,
    this.pulledState,
    this.planChanges = const [],
  });

  final FakeSynth Function(List<String> entryArgs)? synth;

  final Map<String, Object?> outputs;

  final String engineVersion;

  final String? failOn;

  final int failCode;

  final List<List<String>> planChanges;

  final String? pulledState;

  final calls = <Call>[];

  List<String> get engineCalls => [
    for (final c in calls)
      if (c.executable != 'dart') c.args.join(' '),
  ];

  @override
  Future<int> stream(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool toStderr = false,
  }) async {
    calls.add((
      executable: executable,
      args: arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      streamed: true,
      toStderr: toStderr,
    ));
    if (arguments.first == 'run') {
      final result = synth?.call(arguments.sublist(2)) ?? plainEntry(const {});
      for (final MapEntry(:key, :value) in result.files.entries) {
        final file = File(p.join(workingDirectory!, key, 'main.tf.json'));
        file.parent.createSync(recursive: true);
        file.writeAsStringSync(jsonEncode(value));
      }
      final path = environment?['TERRADART_MANIFEST'];
      if (result.manifest case final manifest? when path != null) {
        File(path)
          ..parent.createSync(recursive: true)
          ..writeAsStringSync(jsonEncode(manifest));
      }
      return result.exitCode;
    }
    if (arguments.first == failOn) return failCode;
    if (arguments.first == 'plan') {
      for (final a in arguments) {
        if (a.startsWith('-out=')) {
          File(a.substring('-out='.length))
            ..parent.createSync(recursive: true)
            ..writeAsStringSync('plan');
        }
      }
      if (arguments.contains('-detailed-exitcode') && planChanges.isNotEmpty) {
        return 2;
      }
    }
    return 0;
  }

  @override
  Future<CapturedProcess> capture(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  }) async {
    calls.add((
      executable: executable,
      args: arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      streamed: false,
      toStderr: false,
    ));
    if (arguments case ['version', '-json']) {
      return (
        exitCode: 0,
        stdout: jsonEncode({'terraform_version': engineVersion}),
        stderr: '',
      );
    }
    if (arguments case ['show', '-json', _]) {
      return (
        exitCode: 0,
        stdout: jsonEncode({
          'resource_changes': [
            for (final actions in planChanges)
              {
                'change': {'actions': actions},
              },
          ],
        }),
        stderr: '',
      );
    }
    if (arguments case ['state', 'pull']) {
      return (exitCode: 0, stdout: pulledState ?? '', stderr: '');
    }
    if (arguments case ['output', '-json', final name]) {
      if (outputs[name] case final value?) {
        return (exitCode: 0, stdout: jsonEncode(value), stderr: '');
      }
      return (
        exitCode: 1,
        stdout: '',
        stderr: 'Error: Output "$name" not found',
      );
    }
    return (exitCode: 0, stdout: '', stderr: '');
  }
}

Map<String, Object?> mainTf({List<String> outputs = const []}) => {
  'terraform': {'required_version': '>= 1.11.0'},
  if (outputs.isNotEmpty)
    'output': {
      for (final o in outputs) o: {'value': 'x'},
    },
};

final class TestProject {
  TestProject._(this.root, this.binDir);

  static TestProject create({
    String terradart = '',
    List<String> engines = const ['tofu'],
  }) {
    final root = Directory.systemTemp.createTempSync('terradart_cli_test_');
    addTearDown(() => root.deleteSync(recursive: true));
    File(p.join(root.path, 'pubspec.yaml')).writeAsStringSync(
      'name: my_app\nenvironment:\n  sdk: ^3.12.0\n'
      '${terradart.isEmpty ? '' : 'terradart:\n$terradart'}',
    );
    File(p.join(root.path, 'bin', 'infra.dart'))
      ..createSync(recursive: true)
      ..writeAsStringSync('void main() {}\n');
    final bin = Directory(p.join(root.path, '.fake-bin'))..createSync();
    for (final e in engines) {
      fakeExecutable(bin.path, e);
    }
    return TestProject._(root.path, bin.path);
  }

  final String root;
  final String binDir;

  String path(String rel) => p.join(root, rel);

  Map<String, String> get environment => {
    'PATH': binDir,
    if (Platform.isWindows) 'PATHEXT': '.EXE',
    'TERRADART_CACHE_DIR': p.join(root, '.cache'),
  };

  String engine(String name) =>
      p.join(binDir, Platform.isWindows ? '$name.exe' : name);

  Future<({int code, String out, String err})> run(
    List<String> args,
    FakeRunner runner, {
    Map<String, String> env = const {},
    List<String>? input,
  }) async {
    final out = StringBuffer();
    final err = StringBuffer();
    final lines = [...?input];
    final code = await runTerradart(
      args,
      runner: runner,
      console: Console(
        out: out.writeln,
        err: err.writeln,
        ask: input == null
            ? null
            : (question) {
                out.writeln(question);
                return lines.isEmpty ? null : lines.removeAt(0);
              },
      ),
      workingDirectory: root,
      environment: {...environment, ...env},
      dartExecutable: 'dart',
    );
    return (code: code, out: '$out', err: '$err');
  }
}

String fakeExecutable(String dir, String name) {
  final file = File(p.join(dir, Platform.isWindows ? '$name.exe' : name))
    ..writeAsStringSync('#!/bin/sh\nexit 0\n');
  if (!Platform.isWindows) {
    Process.runSync('chmod', ['755', file.path]);
  }
  return file.path;
}

List<int> tarGz(Map<String, List<int>> files) {
  final out = BytesBuilder();
  void entry(String name, List<int> data, int type) {
    final h = Uint8List(512);
    void put(int at, String s) =>
        h.setRange(at, at + s.length, ascii.encode(s));
    put(0, name.length > 100 ? name.substring(0, 100) : name);
    put(100, '0000755\x00');
    put(108, '0000000\x00');
    put(116, '0000000\x00');
    put(124, '${data.length.toRadixString(8).padLeft(11, '0')}\x00');
    put(136, '00000000000\x00');
    h[156] = type;
    put(257, 'ustar\x00');
    put(263, '00');
    h.fillRange(148, 156, 0x20);
    final sum = h.fold<int>(0, (a, b) => a + b);
    put(148, '${sum.toRadixString(8).padLeft(6, '0')}\x00 ');
    out
      ..add(h)
      ..add(data)
      ..add(Uint8List((512 - data.length % 512) % 512));
  }

  for (final MapEntry(key: name, value: data) in files.entries) {
    if (name.length > 100) {
      final record = ' path=$name\n';
      var length = record.length;
      while ('$length$record'.length != length) {
        length = '$length$record'.length;
      }
      entry('PaxHeader', utf8.encode('$length$record'), 0x78);
    }
    entry(name, data, 0x30);
  }
  out.add(Uint8List(1024));
  return gzip.encode(out.takeBytes());
}

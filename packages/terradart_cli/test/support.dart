import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

/// One process the CLI asked for.
typedef Call = ({
  String executable,
  List<String> args,
  String? workingDirectory,
  bool streamed,
});

/// A [ProcessRunner] that records every call; `dart run` writes the
/// `main.tf.json` files [synth] returns, and the engine answers
/// `version -json` and `output -json`.
final class FakeRunner implements ProcessRunner {
  FakeRunner({
    this.synth,
    this.outputs = const {},
    this.engineVersion = '1.13.1',
    this.failOn,
  });

  /// Relative directory → `main.tf.json` content, written on `dart run`
  /// from the entry point's arguments.
  final Map<String, Object?> Function(List<String> entryArgs)? synth;

  /// `output -json <name>` answers, by output name.
  final Map<String, Object?> outputs;

  final String engineVersion;

  /// The engine subcommand that exits 1.
  final String? failOn;

  final calls = <Call>[];

  /// The engine calls, as `subcommand args...` strings.
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
  }) async {
    calls.add((
      executable: executable,
      args: arguments,
      workingDirectory: workingDirectory,
      streamed: true,
    ));
    if (arguments.first == 'run') {
      final files = synth?.call(arguments.sublist(2)) ?? const {};
      for (final MapEntry(:key, :value) in files.entries) {
        final file = File(p.join(workingDirectory!, key, 'main.tf.json'));
        file.parent.createSync(recursive: true);
        file.writeAsStringSync(jsonEncode(value));
      }
      return 0;
    }
    return arguments.first == failOn ? 1 : 0;
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
      streamed: false,
    ));
    if (arguments case ['version', '-json']) {
      return (
        exitCode: 0,
        stdout: jsonEncode({'terraform_version': engineVersion}),
        stderr: '',
      );
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

/// A `main.tf.json` with an `output` block holding [outputs].
Map<String, Object?> mainTf({List<String> outputs = const []}) => {
  'terraform': {'required_version': '>= 1.11.0'},
  if (outputs.isNotEmpty)
    'output': {
      for (final o in outputs) o: {'value': 'x'},
    },
};

/// A temporary project: `pubspec.yaml` with [terradart] as its `terradart:`
/// section, an empty `bin/infra.dart`, and `bin/` dirs holding fake
/// `tofu` / `terraform` binaries for [engines].
final class TestProject {
  TestProject._(this.root, this.binDir);

  static TestProject create({
    String terradart = '',
    List<String> engines = const ['tofu'],
  }) {
    final root = Directory.systemTemp.createTempSync('terradart_cli_test_');
    addTearDown(() => root.deleteSync(recursive: true));
    File(p.join(root.path, 'pubspec.yaml')).writeAsStringSync(
      'name: my_app\nenvironment:\n  sdk: ^3.10.0\n'
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

  /// The environment the CLI runs with: only the fake engines on `PATH`.
  Map<String, String> get environment => {
    'PATH': binDir,
    if (Platform.isWindows) 'PATHEXT': '.EXE',
    'TERRADART_CACHE_DIR': p.join(root, '.cache'),
  };

  String engine(String name) =>
      p.join(binDir, Platform.isWindows ? '$name.exe' : name);

  /// Runs the CLI against this project.
  Future<({int code, String out, String err})> run(
    List<String> args,
    FakeRunner runner,
  ) async {
    final out = StringBuffer();
    final err = StringBuffer();
    final code = await runTerradart(
      args,
      runner: runner,
      console: Console(out: out.writeln, err: err.writeln),
      workingDirectory: root,
      environment: environment,
      dartExecutable: 'dart',
    );
    return (code: code, out: '$out', err: '$err');
  }
}

/// Writes an executable placeholder named [name] into [dir].
String fakeExecutable(String dir, String name) {
  final file = File(p.join(dir, Platform.isWindows ? '$name.exe' : name))
    ..writeAsStringSync('#!/bin/sh\nexit 0\n');
  if (!Platform.isWindows) {
    Process.runSync('chmod', ['755', file.path]);
  }
  return file.path;
}

/// A gzip-compressed tar holding [files] (name → bytes); a name longer than
/// 100 bytes is written with a PAX `path` record.
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

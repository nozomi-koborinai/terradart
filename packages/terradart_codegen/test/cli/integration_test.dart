@Tags(['integration'])
library;

import 'dart:io';
import 'dart:isolate';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/version_command.dart';
import 'package:test/test.dart';

void main() {
  const entry = 'bin/terradart.dart';

  group('terradart CLI subprocess', () {
    late Directory snapshotDir;
    late String snapshotPath;
    late String packageConfigPath;

    setUpAll(() async {
      packageConfigPath = (await Isolate.packageConfig)!.toFilePath();
      snapshotDir = Directory.systemTemp.createTempSync('tdc_cli_dill_');
      snapshotPath = p.join(snapshotDir.path, 'terradart.dill');
      final compile = await Process.run(Platform.resolvedExecutable, [
        'compile',
        'kernel',
        entry,
        '-o',
        snapshotPath,
      ]);
      expect(
        compile.exitCode,
        0,
        reason: '${compile.stdout}\n${compile.stderr}',
      );
    });

    tearDownAll(() {
      if (snapshotDir.existsSync()) snapshotDir.deleteSync(recursive: true);
    });

    Future<ProcessResult> runCli(List<String> args) => Process.run(
      Platform.resolvedExecutable,
      ['--packages=$packageConfigPath', snapshotPath, ...args],
    );

    test('--version prints version and exits 0', () async {
      final result = await runCli(['--version']);
      expect(result.exitCode, 0, reason: result.stderr.toString());
      expect((result.stdout as String).trim(), terradartCliVersion);
    });

    test('version subcommand prints version and exits 0', () async {
      final result = await runCli(['version']);
      expect(result.exitCode, 0, reason: result.stderr.toString());
      expect((result.stdout as String).trim(), terradartCliVersion);
    });

    test('wrap --help lists maintainer flags', () async {
      final result = await runCli(['wrap', '--help']);
      expect(result.exitCode, 0, reason: result.stderr.toString());
      final out = result.stdout as String;
      expect(out, contains('--provider'));
      expect(out, contains('--output'));
      expect(out, contains('--source'));
      expect(out, contains('--check'));
    });

    test('unknown subcommand exits 64 (usage error)', () async {
      final result = await runCli(['no-such-command']);
      expect(result.exitCode, 64);
    });

    test('wrap without --provider exits 64 (usage error)', () async {
      final result = await runCli(['wrap']);
      expect(result.exitCode, 64);
    });

    test('dart compile exe produces a runnable binary', () async {
      final tmpExe = p.join(
        Directory.systemTemp.createTempSync('tdc_').path,
        'terradart',
      );
      final compile = await Process.run(Platform.resolvedExecutable, [
        'compile',
        'exe',
        entry,
        '-o',
        tmpExe,
      ]);
      expect(
        compile.exitCode,
        0,
        reason: '${compile.stdout}\n${compile.stderr}',
      );
      final run = await Process.run(tmpExe, ['--version']);
      expect(run.exitCode, 0);
      expect((run.stdout as String).trim(), terradartCliVersion);
    }, skip: Platform.environment['TERRADART_RUN_AOT_TESTS'] != '1');
  });
}

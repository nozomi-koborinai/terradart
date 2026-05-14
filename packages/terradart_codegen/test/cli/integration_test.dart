@Tags(['integration'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/version_command.dart';
import 'package:test/test.dart';

void main() {
  // Use a working-directory anchored entry path. `dart test` is normally run
  // from the package root (`packages/terradart_codegen`), so a relative
  // `bin/terradart.dart` resolves correctly. A Platform.script-based variant
  // would also work for CI; we pick the simpler relative path here for
  // predictability.
  const entry = 'bin/terradart.dart';

  group('terradart CLI subprocess', () {
    test('--version prints version and exits 0', () async {
      final result = await Process.run(
        Platform.resolvedExecutable, // dart
        ['run', entry, '--version'],
      );
      expect(result.exitCode, 0, reason: result.stderr.toString());
      expect((result.stdout as String).trim(), terradartCliVersion);
    });

    test('version subcommand prints version and exits 0', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['run', entry, 'version'],
      );
      expect(result.exitCode, 0, reason: result.stderr.toString());
      expect((result.stdout as String).trim(), terradartCliVersion);
    });

    test('codegen --help lists all flags', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['run', entry, 'codegen', '--help'],
      );
      expect(result.exitCode, 0, reason: result.stderr.toString());
      final out = result.stdout as String;
      expect(out, contains('--provider'));
      expect(out, contains('--version'));
      expect(out, contains('--output'));
      expect(out, contains('--services'));
      expect(out, contains('--source'));
      expect(out, contains('terradart Dart bindings'));
    });

    test('unknown subcommand exits 64 (usage error)', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['run', entry, 'no-such-command'],
      );
      expect(result.exitCode, 64);
    });

    test('codegen without --provider exits 64 (usage error)', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['run', entry, 'codegen'],
      );
      expect(result.exitCode, 64);
    });

    test('codegen with malformed --provider exits 64', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['run', entry, 'codegen', '--provider', 'invalid_id_no_slash'],
      );
      expect(result.exitCode, 64);
    });

    test('codegen with missing --source surfaces dataError (65)', () async {
      final tmp =
          await Directory.systemTemp.createTemp('terradart_cli_no_source_');
      addTearDown(() async => tmp.delete(recursive: true));
      final result = await Process.run(
        Platform.resolvedExecutable,
        [
          'run',
          entry,
          'codegen',
          '--provider',
          'hashicorp/google',
          '--output',
          tmp.path,
        ],
      );
      expect(result.exitCode, 65);
    });

    test(
      'codegen emits expected files for a curated service via fixtures',
      () async {
        final tmp = await Directory.systemTemp.createTemp('terradart_cli_e2e_');
        addTearDown(() async => tmp.delete(recursive: true));

        // Build a `--source` directory matching the layout the
        // _DefaultCodegenExecutor expects: schema.json + mm/<resource>.yaml.
        final srcDir =
            await Directory.systemTemp.createTemp('terradart_cli_src_');
        addTearDown(() async => srcDir.delete(recursive: true));
        await File(p.join(srcDir.path, 'schema.json')).writeAsString(
          await File('test/fixtures/schema/google_pubsub_topic.schema.json')
              .readAsString(),
        );
        final mmDir =
            await Directory(p.join(srcDir.path, 'mm')).create(recursive: true);
        await File(p.join(mmDir.path, 'google_pubsub_topic.yaml'))
            .writeAsString(
          await File('test/fixtures/mm/Topic.yaml').readAsString(),
        );

        final result = await Process.run(
          Platform.resolvedExecutable,
          [
            'run',
            entry,
            'codegen',
            '--provider',
            'hashicorp/google',
            '--version',
            '5.32.0',
            '--services',
            'pubsub',
            '--output',
            tmp.path,
            '--source',
            srcDir.path,
          ],
        );

        expect(
          result.exitCode,
          0,
          reason: '''
stdout:
${result.stdout}
stderr:
${result.stderr}
''',
        );

        final emitted = tmp
            .listSync(recursive: true)
            .whereType<File>()
            .where((f) => f.path.endsWith('.dart'))
            .toList();
        expect(emitted, isNotEmpty);
        expect(
          emitted.any((f) => p.basename(f.path).contains('pubsub')),
          isTrue,
          reason: 'expected at least one pubsub_*.dart, got: '
              '${emitted.map((f) => p.basename(f.path)).toList()}',
        );
      },
    );

    test(
      'dart compile exe produces a runnable binary',
      () async {
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
      },
      skip: Platform.environment['TERRADART_RUN_AOT_TESTS'] != '1',
    );
  });
}

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('WrapPromoteCommand args parse', () {
    test('wrap-promote is registered in the cli runner', () {
      final runner = buildCliRunner();
      final cmd = runner.commands['wrap-promote'];
      expect(cmd, isNotNull);
      expect(cmd!.name, 'wrap-promote');
    });

    test('missing <resource> positional → usage error', () {
      final runner = buildCliRunner();
      expect(
        () => runner
            .run(['wrap-promote', '--source', '/tmp', '--output', '/tmp']),
        throwsA(isA<UsageException>()),
      );
    });

    test('--source missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-promote',
        'google_pubsub_topic',
        '--output',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('--output missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-promote',
        'google_pubsub_topic',
        '--source',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('--provider hashicorp/aws → usage error with registry-driven message',
        () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap-promote',
          'google_pubsub_topic',
          '--provider',
          'hashicorp/aws',
          '--source',
          '/tmp',
          '--output',
          '/tmp',
        ]),
        throwsA(
          isA<UsageException>().having(
            (e) => e.message,
            'message',
            allOf(
              contains('hashicorp/aws'),
              contains('not supported'),
              contains('Available: hashicorp/google'),
            ),
          ),
        ),
      );
    });
  });

  group('WrapPromoteCommand happy + errors', () {
    test('emits marker section appended to existing yaml', () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_');
      try {
        // Pre-create an existing yaml (as if from wrap-init).
        final yamlPath = File(
          p.join(tmpOut.path, 'google_synthetic_choice.yaml'),
        );
        yamlPath.writeAsStringSync(
          '# pre-existing wrap-init content\noutputDir: synthetic\n',
        );

        final code = await buildCliRunner().run([
          'wrap-promote',
          'google_synthetic_choice',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          tmpOut.path,
        ]);
        expect(code, 0);
        final body = yamlPath.readAsStringSync();
        expect(body, contains('# === wrap-promote additions'));
        expect(body, contains('# === end wrap-promote additions'));
        expect(body, contains('sealed class GoogleSyntheticChoice'));
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });

    test('E403: yaml does not exist', () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_');
      try {
        final code = await buildCliRunner().run([
          'wrap-promote',
          'google_synthetic_choice',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          tmpOut.path,
        ]);
        expect(code, CliExitCodes.dataError);
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });

    test('E404: MM YAML missing', () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_');
      try {
        // Pre-create the existing yaml.
        File(
          p.join(tmpOut.path, 'google_pubsub_topic.yaml'),
        ).writeAsStringSync('outputDir: pubsub\n');
        // Point --source at a directory WITHOUT mm/google_pubsub_topic.yaml.
        // We synthesise this by using a tmp source dir with only schema/.
        final tmpSrc = await Directory.systemTemp.createTemp(
          'phase4_promote_src_',
        );
        try {
          // Copy the schema fixture for google_pubsub_topic into tmpSrc/schema/.
          final schemaDir = Directory(p.join(tmpSrc.path, 'schema'));
          schemaDir.createSync();
          await File(
            p.join(
              'test',
              'fixtures',
              'schema',
              'google_pubsub_topic_v7.schema.json',
            ),
          ).copy(p.join(schemaDir.path, 'google_pubsub_topic_v7.schema.json'));

          final code = await buildCliRunner().run([
            'wrap-promote',
            'google_pubsub_topic',
            '--source',
            tmpSrc.path,
            '--output',
            tmpOut.path,
          ]);
          expect(code, CliExitCodes.dataError);
        } finally {
          await tmpSrc.delete(recursive: true);
        }
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });

    test('E402: marker section exists and --force not passed', () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_');
      try {
        final yamlPath = File(
          p.join(tmpOut.path, 'google_synthetic_choice.yaml'),
        );
        yamlPath.writeAsStringSync('outputDir: synthetic\n');
        // First run: creates the marker.
        final code1 = await buildCliRunner().run([
          'wrap-promote',
          'google_synthetic_choice',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          tmpOut.path,
        ]);
        expect(code1, 0);
        // Second run without --force: refuses.
        final code2 = await buildCliRunner().run([
          'wrap-promote',
          'google_synthetic_choice',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          tmpOut.path,
        ]);
        expect(code2, CliExitCodes.dataError);
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });

    test(
      '--force regenerates the marker section without accumulating markers',
      () async {
        final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_');
        try {
          final yamlPath = File(
            p.join(tmpOut.path, 'google_synthetic_choice.yaml'),
          );
          yamlPath.writeAsStringSync('outputDir: synthetic\n');
          await buildCliRunner().run([
            'wrap-promote',
            'google_synthetic_choice',
            '--source',
            p.join('test', 'fixtures'),
            '--output',
            tmpOut.path,
          ]);
          final code2 = await buildCliRunner().run([
            'wrap-promote',
            'google_synthetic_choice',
            '--source',
            p.join('test', 'fixtures'),
            '--output',
            tmpOut.path,
            '--force',
          ]);
          expect(code2, 0);
          final after2 = yamlPath.readAsStringSync();
          // Exactly one marker pair in the file.
          expect(
            '=== wrap-promote additions'.allMatches(after2).length,
            1,
          );
          expect(
            '=== end wrap-promote additions'.allMatches(after2).length,
            1,
          );
          // The pre-existing outputDir line is preserved.
          expect(after2, contains('outputDir: synthetic'));
        } finally {
          await tmpOut.delete(recursive: true);
        }
      },
    );
  });
}

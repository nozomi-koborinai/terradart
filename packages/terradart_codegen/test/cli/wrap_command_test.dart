import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('WrapCommand args parse', () {
    test('wrap command is registered', () {
      final runner = buildCliRunner();
      final wrap = runner.commands['wrap'];
      expect(wrap, isNotNull);
      expect(wrap!.name, 'wrap');
    });

    test('--source missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap',
        '--provider',
        'hashicorp/google',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('invalid --provider format throws UsageException', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap',
          '--provider',
          'INVALID',
          '--source',
          '/tmp',
        ]),
        throwsA(isA<UsageException>()),
      );
    });
  });

  group('WrapCommand integration', () {
    test(
        'emits 14 files (12 resource Layer 2 + 1 data source Layer 2 + 1 data source Layer 1)',
        () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_wrap_');
      try {
        final runner = buildCliRunner();
        final code = await runner.run([
          'wrap',
          '--provider',
          'hashicorp/google',
          '--source',
          p.join('test', 'fixtures', 'wrap', 'source'),
          '--output',
          tmpOut.path,
        ]);
        expect(code, 0);

        final files = <String>[];
        for (final ent in Directory(tmpOut.path).listSync(recursive: true)) {
          if (ent is File && ent.path.endsWith('.dart')) {
            files.add(p.relative(ent.path, from: tmpOut.path));
          }
        }
        expect(files, hasLength(14));
        expect(files, contains(p.join('pubsub', 'google_pubsub_topic.dart')));
        expect(files, contains(p.join('data', 'google_project.dart')));
        expect(
          files,
          contains(p.join('generated', 'data_google_project.schema.dart')),
        );
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });

    test('all generated files start with GENERATED FILE header', () async {
      final tmpOut = await Directory.systemTemp.createTemp('phase4_wrap_');
      try {
        final runner = buildCliRunner();
        await runner.run([
          'wrap',
          '--provider',
          'hashicorp/google',
          '--source',
          p.join('test', 'fixtures', 'wrap', 'source'),
          '--output',
          tmpOut.path,
        ]);
        for (final ent in Directory(tmpOut.path).listSync(recursive: true)) {
          if (ent is File && ent.path.endsWith('.dart')) {
            final firstLine = ent.readAsLinesSync().first;
            expect(firstLine, '// GENERATED FILE - DO NOT EDIT',
                reason: ent.path);
          }
        }
      } finally {
        await tmpOut.delete(recursive: true);
      }
    });
  });
}

@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:test/test.dart';

void main() {
  test('L4-g: terradart wrap-promote is idempotent (run twice with --force)',
      () async {
    final tmpOut = await Directory.systemTemp.createTemp('phase4_promote_det_');
    try {
      final yamlPath =
          File(p.join(tmpOut.path, 'google_synthetic_choice.yaml'));
      yamlPath.writeAsStringSync('outputDir: synthetic\n');

      Future<String> runOnce({bool force = false}) async {
        await buildCliRunner().run([
          'wrap-promote',
          'google_synthetic_choice',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          tmpOut.path,
          if (force) '--force',
        ]);
        return yamlPath.readAsStringSync();
      }

      final after1 = await runOnce();
      // Brief sleep so SystemClock COULD differ across midnight; tolerated by
      // the assertion below (we strip the date line before byte comparison).
      await Future<void>.delayed(const Duration(milliseconds: 50));
      final after2 = await runOnce(force: true);

      // No marker accumulation: exactly one begin + one end across the file.
      expect('=== wrap-promote additions'.allMatches(after2).length, 1);
      expect('=== end wrap-promote additions'.allMatches(after2).length, 1);
      // Body above the marker is preserved verbatim.
      expect(after2, contains('outputDir: synthetic'));
      // Date-stripped bodies are byte-identical (tolerates rare midnight
      // crossover during the test run).
      String stripDate(String yaml) => yaml.replaceAll(
          RegExp(r'# Generated on \d{4}-\d{2}-\d{2}\..*\n'), '');
      expect(stripDate(after2), stripDate(after1));
    } finally {
      await tmpOut.delete(recursive: true);
    }
  });
}

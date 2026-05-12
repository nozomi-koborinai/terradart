@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:test/test.dart';

/// L4-d invariant: `terradart wrap` is deterministic. Running the command
/// twice against the same source schema must produce byte-identical output
/// trees (same set of files, same relative paths, same byte content).
///
/// Determinism matters because Wave 3a's `--check` mode and Wave 4's CI
/// gate both depend on a stable canonical output -- any per-run drift
/// (timestamps, iteration order over hash maps, etc.) would make those
/// gates flaky.
void main() {
  test(
    'L4-d: terradart wrap is deterministic (2 consecutive runs byte-identical)',
    () async {
      final tmpA = await Directory.systemTemp.createTemp('phase4_det_a_');
      final tmpB = await Directory.systemTemp.createTemp('phase4_det_b_');
      try {
        List<String> args(String out) => [
              'wrap',
              '--provider',
              'hashicorp/google',
              '--source',
              p.join('test', 'fixtures', 'wrap', 'source'),
              '--output',
              out,
            ];

        final codeA = await buildCliRunner().run(args(tmpA.path));
        expect(codeA, 0, reason: 'first wrap run failed (exit $codeA)');
        final codeB = await buildCliRunner().run(args(tmpB.path));
        expect(codeB, 0, reason: 'second wrap run failed (exit $codeB)');

        final filesA = Directory(tmpA.path)
            .listSync(recursive: true)
            .whereType<File>()
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
        final filesB = Directory(tmpB.path)
            .listSync(recursive: true)
            .whereType<File>()
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

        expect(
          filesB.length,
          filesA.length,
          reason: 'file count diverged: A=${filesA.length} B=${filesB.length}',
        );

        for (var i = 0; i < filesA.length; i++) {
          final relA = p.relative(filesA[i].path, from: tmpA.path);
          final relB = p.relative(filesB[i].path, from: tmpB.path);
          expect(relB, relA, reason: 'file path order diverged at index $i');
          expect(
            filesB[i].readAsStringSync(),
            filesA[i].readAsStringSync(),
            reason: 'non-deterministic content in $relA',
          );
        }
      } finally {
        await tmpA.delete(recursive: true);
        await tmpB.delete(recursive: true);
      }
    },
  );
}

@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:test/test.dart';

void main() {
  test('L4-e: terradart wrap-init is deterministic (2 runs byte-identical)',
      () async {
    final tmpA = await Directory.systemTemp.createTemp('phase4_init_det_a_');
    final tmpB = await Directory.systemTemp.createTemp('phase4_init_det_b_');
    try {
      Future<void> runInto(String out) async {
        await buildCliRunner().run([
          'wrap-init',
          'google_pubsub_topic',
          '--source',
          p.join('test', 'fixtures'),
          '--output',
          out,
          '--force',
        ]);
      }

      await runInto(tmpA.path);
      // Brief sleep to ensure a different wall-clock instant between runs.
      // SystemClock's banner timestamp is date-only, but any non-date drift
      // (e.g. line ordering) would still be exposed.
      await Future<void>.delayed(const Duration(milliseconds: 50));
      await runInto(tmpB.path);

      final a = File(p.join(tmpA.path, 'google_pubsub_topic.yaml'))
          .readAsStringSync();
      final b = File(p.join(tmpB.path, 'google_pubsub_topic.yaml'))
          .readAsStringSync();
      expect(b, a);
    } finally {
      await tmpA.delete(recursive: true);
      await tmpB.delete(recursive: true);
    }
  });
}

@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// L4-a invariant: every file in `test/golden/handwritten_baseline/` must
/// be byte-identical with its live counterpart in
/// `lib/src/<service>/<basename>.dart`.
///
/// The baseline is the Wave 0 freeze of the 13 hand-written wrappers
/// (12 Tier 1 resources + 1 data source). Any drift between the live files
/// and the baseline indicates someone edited production code without
/// re-freezing the baseline -- the wrap codegen pipeline (Wave 3a) must
/// remain a 1:1 replacement, so the baseline acts as the contract.
void main() {
  test(
    'L4-a: handwritten_baseline <-> lib/src/<service>/google_*.dart byte-identical',
    () {
      final baselineDir = Directory(
        p.join('test', 'golden', 'handwritten_baseline'),
      );
      expect(
        baselineDir.existsSync(),
        isTrue,
        reason: 'baseline dir missing: ${baselineDir.path}',
      );

      // Search across every subdir of `lib/src/` that ships a hand-written
      // wrapper. Order is irrelevant -- baseline filenames are unique.
      const candidates = <String>[
        'lib/src/pubsub',
        'lib/src/cloud_tasks',
        'lib/src/secret_manager',
        'lib/src/cloud_scheduler',
        'lib/src/iam',
        'lib/src/project',
        'lib/src/data',
      ];

      final missing = <String>[];
      final differing = <String>[];

      final baselineFiles = baselineDir.listSync().whereType<File>().toList()
        ..sort((a, b) => a.path.compareTo(b.path));

      for (final f in baselineFiles) {
        final base = p.basename(f.path);
        String? actualPath;
        for (final candidate in candidates) {
          final c = File(p.join(candidate, base));
          if (c.existsSync()) {
            actualPath = c.path;
            break;
          }
        }
        if (actualPath == null) {
          missing.add(base);
          continue;
        }
        if (f.readAsStringSync() != File(actualPath).readAsStringSync()) {
          differing.add(base);
        }
      }

      expect(missing, isEmpty, reason: 'missing in lib/src/: $missing');
      expect(differing, isEmpty, reason: 'differing files: $differing');
    },
  );
}

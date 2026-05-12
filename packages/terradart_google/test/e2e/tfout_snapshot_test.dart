@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// L4-b invariant: every quickstart in `examples/<service>_quickstart` must
/// synth to a `tf-out/main.tf.json` that matches its checked-in baseline at
/// `test/golden/tfout_snapshot_<service>.json`.
///
/// Baselines are regenerated via `tool/freeze_tfout_snapshots.dart`. The
/// env vars below mirror the CI `terraform_validate` matrix so the
/// snapshot stays in sync with what CI actually validates.
void main() {
  const services = <String>[
    'pubsub',
    'cloud_tasks',
    'secret_manager',
    'cloud_scheduler',
    'iam',
  ];

  // Mirrors CI `terraform_validate` env. We deliberately ADD to (not
  // replace) the parent environment because `dart` itself needs PATH /
  // PUB_CACHE / etc -- the synth output is env-driven only through these
  // two keys, so any extra vars are inert.
  const env = <String, String>{
    'GCP_PROJECT_ID': 'ci-test-project-id',
    'DB_PASSWORD': 'ci-test-secret',
  };

  // Resolve the examples dir from the package root (test cwd is
  // `packages/terradart_google/`). Repo layout: `<repo>/packages/...` and
  // `<repo>/examples/...`.
  final examplesRoot = p.normalize(p.join('..', '..', 'examples'));

  for (final svc in services) {
    test('L4-b: $svc tf-out unchanged', () async {
      final exDir = p.join(examplesRoot, '${svc}_quickstart');
      final synth = await Process.run(
        'dart',
        ['run', 'bin/infra.dart'],
        workingDirectory: exDir,
        environment: env,
      );
      expect(
        synth.exitCode,
        0,
        reason: 'dart run failed for $svc:\n${synth.stderr}\n${synth.stdout}',
      );

      final actualFile = File(p.join(exDir, 'tf-out', 'main.tf.json'));
      expect(
        actualFile.existsSync(),
        isTrue,
        reason: 'tf-out/main.tf.json not produced for $svc',
      );
      final actual = jsonDecode(actualFile.readAsStringSync());

      final expectedFile = File(
        p.join('test', 'golden', 'tfout_snapshot_$svc.json'),
      );
      expect(
        expectedFile.existsSync(),
        isTrue,
        reason: 'missing snapshot baseline: ${expectedFile.path}',
      );
      final expected = jsonDecode(expectedFile.readAsStringSync());

      expect(
        actual,
        equals(expected),
        reason:
            '$svc tf-out drifted. Re-run '
            '`dart run tool/freeze_tfout_snapshots.dart` if intentional.',
      );
    });
  }
}

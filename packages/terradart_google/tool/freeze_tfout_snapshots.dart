// Regenerates the 5 quickstart tf-out snapshots under
// `test/golden/tfout_snapshot_<service>.json`. Mirrors the CI
// `terraform_validate` matrix env (`GCP_PROJECT_ID=ci-test-project-id`,
// `DB_PASSWORD=ci-test-secret`) so the snapshots match what the
// `tfout_snapshot_test.dart` e2e test produces on every run.
//
// Idempotent: re-running with no source changes overwrites the snapshots
// with byte-identical content.
//
// Usage (from packages/terradart_google):
//   dart run tool/freeze_tfout_snapshots.dart
// Or from the repo root:
//   dart run packages/terradart_google/tool/freeze_tfout_snapshots.dart
import 'dart:io';
import 'package:path/path.dart' as p;

// Resolve paths from the script location rather than cwd so the script
// works regardless of where it's invoked from.
final _scriptDir = p.dirname(Platform.script.toFilePath());
final _packageDir = p.normalize(p.join(_scriptDir, '..'));
final _repoRoot = p.normalize(p.join(_packageDir, '..', '..'));

const _services = <String>[
  'pubsub',
  'cloud_tasks',
  'secret_manager',
  'cloud_scheduler',
  'iam',
];

const _env = <String, String>{
  'GCP_PROJECT_ID': 'ci-test-project-id',
  'DB_PASSWORD': 'ci-test-secret',
};

Future<void> main() async {
  for (final svc in _services) {
    final exDir = p.join(_repoRoot, 'examples', '${svc}_quickstart');

    // 1. dart pub get (in case .dart_tool is stale or missing).
    final pubGet = await Process.run('dart', [
      'pub',
      'get',
    ], workingDirectory: exDir);
    if (pubGet.exitCode != 0) {
      stderr.writeln('pub get failed for $svc:\n${pubGet.stderr}');
      exit(1);
    }

    // 2. dart run bin/infra.dart with CI env vars.
    final synth = await Process.run(
      'dart',
      ['run', 'bin/infra.dart'],
      workingDirectory: exDir,
      environment: _env,
    );
    if (synth.exitCode != 0) {
      stderr.writeln('synth failed for $svc:\n${synth.stderr}');
      exit(1);
    }

    // 3. Copy tf-out/main.tf.json -> test/golden/tfout_snapshot_<svc>.json.
    final src = File(p.join(exDir, 'tf-out', 'main.tf.json'));
    if (!src.existsSync()) {
      stderr.writeln('no tf-out/main.tf.json produced for $svc');
      exit(1);
    }
    final dst = File(
      p.join(_packageDir, 'test', 'golden', 'tfout_snapshot_$svc.json'),
    );
    dst.parent.createSync(recursive: true);
    // Preserve the synth output verbatim. `synth.dart` already pretty-prints
    // with 2-space indentation, so a raw copy keeps diffs reviewable.
    dst.writeAsStringSync(src.readAsStringSync());
    stdout.writeln('frozen: ${dst.path}');
  }
}

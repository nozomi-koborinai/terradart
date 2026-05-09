// Regenerates Tier 1 schema carriers under
// `packages/terradart_google/lib/src/generated/`.
//
// Pipeline:
//   1. Invoke terradart_codegen's `runCodegen` against the canonical Tier 1
//      provider-schema fixture, filtered to the 11 Tier 1 resource names.
//   2. Rename each emitted `<resource>.dart` to `<resource>.schema.dart` so
//      schemantic's emitted `part '<resource>.schema.g.dart';` directive
//      resolves correctly when the build_runner step runs.
//   3. Execute `dart run build_runner build --delete-conflicting-outputs`
//      from `packages/terradart_google/` to materialise each
//      `<resource>.schema.g.dart` part file.
//
// The script is idempotent: re-running it on a clean tree should yield no
// `git diff`. Intended invocation is manual, once per Tier 1 schema bump:
//
//     (cd packages/terradart_google && dart run tool/regen_tier1.dart)
//
// To refresh the underlying fixture from a live provider, see
// `validation/tf-out/` (init google provider, then
// `terraform providers schema -json > <fixture>`). The 11 Tier 1
// resource bodies are then extracted into
// `packages/terradart_codegen/test/fixtures/schema/tier1_full.schema.json`.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/codegen_entry.dart';

/// The 12 Tier 1 resource names. `google_project_service` and
/// `google_service_account` round out the foundational primitives every
/// Tier 1 GCP example depends on; `google_project` (data source) is
/// intentionally excluded — data sources don't have a schema-generation
/// requirement in v0.0.x.
const _tier1Resources = <String>[
  'google_pubsub_topic',
  'google_pubsub_subscription',
  'google_pubsub_topic_iam_member',
  'google_pubsub_subscription_iam_member',
  'google_cloud_tasks_queue',
  'google_cloud_tasks_queue_iam_member',
  'google_secret_manager_secret',
  'google_secret_manager_secret_version',
  'google_secret_manager_secret_iam_member',
  'google_cloud_scheduler_job',
  'google_project_service',
  'google_service_account',
];

Future<void> main() async {
  final stopwatch = Stopwatch()..start();
  final repoRoot = _findRepoRoot();
  final fixturePath = p.join(
    repoRoot,
    'packages',
    'terradart_codegen',
    'test',
    'fixtures',
    'schema',
    'tier1_full.schema.json',
  );
  final outDir = p.join(
    repoRoot,
    'packages',
    'terradart_google',
    'lib',
    'src',
    'generated',
  );

  if (!File(fixturePath).existsSync()) {
    stderr.writeln('Tier 1 fixture not found: $fixturePath');
    exit(1);
  }
  Directory(outDir).createSync(recursive: true);

  // Step 1: run the emitter against the fixture, filtering to the Tier 1 set.
  // The emitter writes `<resource>.dart`; we'll rename in step 2.
  stdout.writeln('Step 1/3: emitting ${_tier1Resources.length} schema files');
  final result = await runCodegen(
    schemaJsonPath: fixturePath,
    mmYamlPaths: const {},
    outputDir: outDir,
    providerVersion: '7.31.0',
    onlyResources: _tier1Resources,
  );
  if (result.emittedFiles.length != _tier1Resources.length) {
    stderr.writeln(
      'Expected ${_tier1Resources.length} emitted files, got '
      '${result.emittedFiles.length}',
    );
    exit(1);
  }

  // Step 2: rename `<resource>.dart` → `<resource>.schema.dart` so schemantic's
  // `part '<resource>.schema.g.dart';` directive resolves.
  stdout.writeln('Step 2/3: renaming files to *.schema.dart');
  for (final emitted in result.emittedFiles) {
    final dir = p.dirname(emitted);
    final base = p.basenameWithoutExtension(
      emitted,
    ); // e.g. google_pubsub_topic
    final renamed = p.join(dir, '$base.schema.dart');
    File(emitted).renameSync(renamed);
  }

  // Step 3: invoke schemantic via build_runner to produce the .schema.g.dart
  // part files.
  final pkgDir = p.join(repoRoot, 'packages', 'terradart_google');
  stdout.writeln(
    'Step 3/3: dart run build_runner build --delete-conflicting-outputs',
  );
  final br = await Process.run('dart', [
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ], workingDirectory: pkgDir);
  if (br.exitCode != 0) {
    stderr.writeln('build_runner failed:\n${br.stdout}\n${br.stderr}');
    exit(br.exitCode);
  }

  stopwatch.stop();
  final schemaCount = Directory(
    outDir,
  ).listSync().where((e) => e.path.endsWith('.schema.dart')).length;
  final gCount = Directory(
    outDir,
  ).listSync().where((e) => e.path.endsWith('.schema.g.dart')).length;
  stdout.writeln(
    'Done: regenerated $schemaCount schema files + '
    '$gCount .g.dart parts in '
    '${(stopwatch.elapsedMilliseconds / 1000).toStringAsFixed(1)}s',
  );
}

/// Walks up from CWD until it finds a directory containing the workspace root
/// pubspec (`name: _terradart_workspace`).
String _findRepoRoot() {
  var dir = Directory.current;
  for (var i = 0; i < 6; i++) {
    final pubspec = File(p.join(dir.path, 'pubspec.yaml'));
    if (pubspec.existsSync() &&
        pubspec.readAsStringSync().contains('name: _terradart_workspace')) {
      return dir.path;
    }
    final parent = dir.parent;
    if (parent.path == dir.path) break;
    dir = parent;
  }
  throw StateError(
    'Could not locate terradart workspace root from '
    '${Directory.current.path}',
  );
}

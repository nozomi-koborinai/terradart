// packages/terradart_google/test/synth/encode_round_trip_test.dart
//
// Gate 6: encode round-trip structural test (PR 2 of Plan 5.D codegen
// correctness work — see docs/superpowers/plans/2026-05-16-plan5d-2-encode-gate6-plan.md).
//
// Discovers every sealed-class member declared in production yaml overrides
// via [SealedClassExtractor], constructs a synthetic instance via the
// hand-curated [_syntheticInstances] lookup table, invokes encode() (with
// toArgMap() fallback), and asserts the encoded shape:
//
//   * the encoded value is non-empty (Map or single-element List<Map>);
//   * every required attr's snake_case schema key appears as a key SOMEWHERE
//     in the encoded payload (top-level or nested under a discriminator
//     block — the production wire format mostly puts ctor params inside a
//     `{<discriminator>: [<innerMap>]}` block per the schema's `nesting_mode`
//     conventions, so a recursive key walk is necessary);
//   * no raw TfArg<T> values leak ANYWHERE in the encoded payload
//     (every encoder should have unwrapped via `.toTfJson()` at
//     serialization time — walked recursively).
//
// Component B-3-a shipped the FRAMEWORK only — the lookup table was empty
// and the whole group was marked `skip:`. Component B-3-b (this commit)
// fills the table for all 34 sealed-class members and removes the skip.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/cloud_functions.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_scheduler.dart';
import 'package:terradart_google/firebase_app_hosting.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/storage.dart';
import 'package:test/test.dart';

/// Hand-curated lookup: sealed-class-member-name -> a thunk that returns a
/// constructed instance. Each thunk supplies synthetic `TfArg<T>` values for
/// required params and omits all optional params (the framework tests the
/// all-optionals-null encode path).
///
/// Add an entry per new sealed-class member shipped in future waves. Gate 6
/// fails loudly when a sealed-class is extracted from yaml but no entry
/// exists here — keeping the table in lockstep with yaml is a curator
/// responsibility.
///
/// Replication members are private (`_AutoReplication` / `_UserManagedReplication`);
/// the lookup key uses the literal private-class name produced by the
/// extractor, but thunk bodies construct via the public `Replication.auto()` /
/// `Replication.userManaged(...)` factories.
final Map<String, Object Function()> _syntheticInstances = {
  // --- Access (8) — bigquery_dataset ---------------------------------------
  'AccessUserByEmail': () =>
      AccessUserByEmail(userByEmail: TfArg.literal('user@example.com')),
  'AccessGroupByEmail': () =>
      AccessGroupByEmail(groupByEmail: TfArg.literal('group@example.com')),
  'AccessSpecialGroup': () =>
      AccessSpecialGroup(specialGroup: TfArg.literal('projectReaders')),
  'AccessDomain': () => AccessDomain(domain: TfArg.literal('example.com')),
  'AccessIamMember': () =>
      AccessIamMember(iamMember: TfArg.literal('allUsers')),
  'AccessView': () => AccessView(
        view: DatasetView(
          projectId: TfArg.literal('p'),
          datasetId: TfArg.literal('d'),
          tableId: TfArg.literal('t'),
        ),
      ),
  'AccessDataset': () => AccessDataset(
        dataset: DatasetAccessChild(
          dataset: DatasetReference(
            projectId: TfArg.literal('p'),
            datasetId: TfArg.literal('d'),
          ),
          targetTypes: [TfArg.literal('VIEWS')],
        ),
      ),
  'AccessRoutine': () => AccessRoutine(
        routine: DatasetRoutineRef(
          projectId: TfArg.literal('p'),
          datasetId: TfArg.literal('d'),
          routineId: TfArg.literal('r'),
        ),
      ),

  // --- EnvVarSource (2) — cloud_run_v2_service -----------------------------
  'EnvVarFromLiteral': () => EnvVarFromLiteral(TfArg.literal('mock-value')),
  'EnvVarFromSecret': () =>
      EnvVarFromSecret(secret: TfArg.literal('mock-secret')),

  // --- VolumeSource (5) — cloud_run_v2_service -----------------------------
  'VolumeSecret': () => VolumeSecret(secret: TfArg.literal('mock-secret')),
  'CloudSqlVolume': () => const CloudSqlVolume(),
  'EmptyDirVolume': () => const EmptyDirVolume(),
  'GcsVolume': () => GcsVolume(bucket: TfArg.literal('mock-bucket')),
  'NfsVolume': () => NfsVolume(
        server: TfArg.literal('nfs.example.com'),
        path: TfArg.literal('/exports/data'),
      ),

  // --- JobEnvVarSource (2) — cloud_run_v2_job ------------------------------
  'JobEnvVarFromLiteral': () =>
      JobEnvVarFromLiteral(TfArg.literal('mock-value')),
  'JobEnvVarFromSecret': () => JobEnvVarFromSecret(
        secret: TfArg.literal('mock-secret'),
        version: TfArg.literal('latest'),
      ),

  // --- JobVolumeSource (5) — cloud_run_v2_job ------------------------------
  'JobVolumeSecret': () =>
      JobVolumeSecret(secret: TfArg.literal('mock-secret')),
  'JobCloudSqlVolume': () => const JobCloudSqlVolume(),
  'JobEmptyDirVolume': () => const JobEmptyDirVolume(),
  'JobGcsVolume': () => JobGcsVolume(bucket: TfArg.literal('mock-bucket')),
  'JobNfsVolume': () => JobNfsVolume(server: TfArg.literal('nfs.example.com')),

  // --- SchedulerTarget (3) — cloud_scheduler_job ---------------------------
  'PubsubTarget': () =>
      PubsubTarget(topicName: TfArg.literal('projects/p/topics/t')),
  'HttpTarget': () =>
      HttpTarget(uri: TfArg.literal('https://example.com/webhook')),
  'AppEngineHttpTarget': () =>
      AppEngineHttpTarget(relativeUri: TfArg.literal('/handler')),

  // --- SourceConfig (2) — cloudfunctions2_function -------------------------
  'StorageSource': () => StorageSource(
        bucket: TfArg.literal('mock-bucket'),
        object: TfArg.literal('mock-object.zip'),
      ),
  'RepoSource': () => RepoSource(repoName: TfArg.literal('mock-repo')),

  // --- UpdatePolicy (2) — cloudfunctions2_function -------------------------
  'AutomaticUpdatePolicy': () => const AutomaticUpdatePolicy(),
  'OnDeployUpdatePolicy': () => const OnDeployUpdatePolicy(),

  // --- AppHostingBuildSource (2) — firebase_app_hosting_build --------------
  'AppHostingBuildSourceCodebase': () => const AppHostingBuildSourceCodebase(),
  'AppHostingBuildSourceContainer': () => AppHostingBuildSourceContainer(
        image: TfArg.literal('us-central1-docker.pkg.dev/p/r/web:1.0.0'),
      ),

  // --- BackupRecurrence (2) — firestore_backup_schedule --------------------
  // These return List<Map<String, Object?>> (single-element, per the
  // nesting_mode: list, max_items: 1 schema convention). The dispatch logic
  // unwraps to the single inner map for the structural assertions.
  'DailyRecurrence': () => const DailyRecurrence(),
  'WeeklyRecurrence': () => const WeeklyRecurrence(),

  // --- IndexFieldSpec (4) — firestore_index --------------------------------
  'IndexFieldOrder': () => const IndexFieldOrder(FirestoreIndexOrder.ascending),
  'IndexFieldArrayConfig': () => const IndexFieldArrayConfig(),
  'IndexFieldSearchConfig': () => const IndexFieldSearchConfig(),
  'IndexFieldVectorConfig': () => const IndexFieldVectorConfig(dimension: 768),

  // --- Replication (2, private members) — secret_manager_secret ------------
  // Extractor produces the literal `_AutoReplication` / `_UserManagedReplication`
  // names; the thunks must construct via the public `Replication.auto()` /
  // `Replication.userManaged(...)` factories.
  '_AutoReplication': () => Replication.auto(),
  '_UserManagedReplication': () =>
      Replication.userManaged([Replica(location: TfArg.literal('us-east1'))]),

  // --- BucketObjectContent (2) — storage_bucket_object ---------------------
  'BucketObjectFromSource': () =>
      BucketObjectFromSource(source: TfArg.literal('./mock/path.bin')),
  'BucketObjectFromContent': () =>
      BucketObjectFromContent(content: TfArg.literal('mock-inline-payload')),
};

void main() {
  group('Gate 6: encode round-trip structural', () {
    final yamlDir = Directory(
      p.join(
        '..',
        'terradart_codegen',
        'lib',
        'src',
        'codegen',
        'wrapper_overrides',
        'yaml',
      ),
    );
    final yamlFiles = yamlDir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.yaml'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

    for (final yamlFile in yamlFiles) {
      final yamlSource = yamlFile.readAsStringSync();
      if (!yamlSource.contains('sealed class')) continue;

      final preludeStart = yamlSource.indexOf('prelude:');
      if (preludeStart < 0) continue;
      final preludeText = yamlSource.substring(preludeStart);
      final sealedClasses = const SealedClassExtractor().extract(preludeText);

      for (final sealed in sealedClasses) {
        for (final member in sealed.members) {
          test(
              '${sealed.name}.${member.name}: encode() round-trips '
              'with required keys present', () {
            final thunk = _syntheticInstances[member.name];
            expect(
              thunk,
              isNotNull,
              reason: 'Gate 6 lookup table missing entry for ${member.name}. '
                  'Add a constructor thunk to _syntheticInstances in '
                  'encode_round_trip_test.dart. See Plan 5.D PR 2 Task 10.',
            );

            final instance = thunk!();

            // Production wrappers expose either `encode()` (most common) or
            // `toArgMap()` (e.g. cloud_run_v2_service helpers). Try
            // `encode()` first via dynamic dispatch; fall back to
            // `toArgMap()`. Both can return either `Map<String, Object?>`
            // OR a single-element `List<Map<String, Object?>>` (the latter
            // used by `BackupRecurrence.{DailyRecurrence,WeeklyRecurrence}`
            // because their underlying blocks are
            // `nesting_mode: list, max_items: 1`).
            final dyn = instance as dynamic;
            Object? raw;
            try {
              raw = dyn.encode();
            } on NoSuchMethodError {
              raw = dyn.toArgMap();
            }

            // The encoded payload must be non-empty (as a wire-shape — for
            // the Map case, at least one key; for the List<Map> case, at
            // least one element).
            if (raw is Map) {
              expect(raw, isNotEmpty, reason: 'encoded Map must not be empty');
            } else if (raw is List) {
              expect(
                raw,
                isNotEmpty,
                reason: 'encoded List<Map> must not be empty',
              );
            }

            // Unwrap to a Map for the required-key + TfArg-leak walks.
            late Map<String, Object?> result;
            if (raw is Map<String, Object?>) {
              result = raw;
            } else if (raw is List &&
                raw.length == 1 &&
                raw.first is Map<String, Object?>) {
              result = raw.first as Map<String, Object?>;
            } else {
              fail(
                'encode()/toArgMap() must return Map<String, Object?> '
                'or single-element List<Map<String, Object?>>. '
                'Got: ${raw.runtimeType}',
              );
            }

            // Collect every key encountered anywhere in the encoded
            // payload, descending through nested Maps and List<Map>
            // values. Production sealed-class members mostly follow the
            // discriminator-block pattern (`{<discriminator>: [<innerMap>]}`)
            // where the constructor's required params live INSIDE the
            // inner map rather than at the top level — a recursive walk
            // is the only way the required-key invariant can pass for
            // both that pattern and the flat-merge pattern uniformly.
            // The invariant Gate 6 enforces is "the wrapper's encode()
            // mentions every required ctor param somewhere in its output";
            // a recursive search still catches the bug of an encoder
            // accidentally dropping a required attr (the key would be
            // absent at every depth).
            final allKeys = _collectAllKeys(result);
            for (final param in member.params.where((p) => p.required)) {
              // Convert camelCase param name -> snake_case schema key.
              final schemaKey = _camelToSnake(param.name);
              expect(
                allKeys,
                contains(schemaKey),
                reason: 'required attr "$schemaKey" '
                    '(camel: ${param.name}) must appear as a key somewhere '
                    'in the encoded payload (top-level or nested under a '
                    'discriminator block). Top-level keys observed: '
                    '${result.keys.toList()}; all keys recursively: '
                    '${allKeys.toList()}.',
              );
            }
            // No raw TfArg<T> may leak anywhere in the encoded payload —
            // every TfArg must have been unwrapped via `.toTfJson()` at
            // serialization time. Walk all values recursively, not just
            // the top-level map's values: nested helper-class encoders
            // could forget the unwrap deep in the tree.
            final tfArgLeaks = _findTfArgLeaks(result);
            expect(
              tfArgLeaks,
              isEmpty,
              reason: 'encoded values must be TfArg-unwrapped '
                  '(.toTfJson() should have been called). Found raw '
                  'TfArg instances at: $tfArgLeaks',
            );
          });
        }
      }
    }
  });
}

String _camelToSnake(String camel) {
  final buf = StringBuffer();
  for (var i = 0; i < camel.length; i++) {
    final ch = camel[i];
    if (i > 0 && ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
      buf.write('_');
      buf.write(ch.toLowerCase());
    } else {
      buf.write(ch);
    }
  }
  return buf.toString();
}

/// Returns every key encountered anywhere in [root], descending through
/// nested Map and List values. Used by the required-attr assertion so a
/// ctor param nested under a discriminator block (e.g.
/// `{'gcs': [{'bucket': ...}]}`) is found at any depth.
Set<String> _collectAllKeys(Object? root) {
  final keys = <String>{};
  void walk(Object? node) {
    if (node is Map) {
      for (final entry in node.entries) {
        if (entry.key is String) keys.add(entry.key as String);
        walk(entry.value);
      }
    } else if (node is List) {
      for (final item in node) {
        walk(item);
      }
    }
  }

  walk(root);
  return keys;
}

/// Walks [root] recursively and returns a list of human-readable paths
/// where a raw [TfArg] instance was found. The encoded payload must
/// never contain a raw TfArg — every encoder should have unwrapped via
/// `.toTfJson()` before returning. An empty result means the wrapper is
/// clean.
List<String> _findTfArgLeaks(Object? root) {
  final leaks = <String>[];
  void walk(Object? node, String path) {
    if (node is TfArg) {
      leaks.add('$path (runtimeType=${node.runtimeType})');
      return;
    }
    if (node is Map) {
      for (final entry in node.entries) {
        walk(entry.value, '$path.${entry.key}');
      }
    } else if (node is List) {
      for (var i = 0; i < node.length; i++) {
        walk(node[i], '$path[$i]');
      }
    }
  }

  walk(root, r'$');
  return leaks;
}

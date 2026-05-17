// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_database`.
const Set<String> _googleFirestoreDatabaseSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `type` -- choose between Cloud Firestore's two API modes. Forces
/// replacement when changed.
enum FirestoreDatabaseType {
  firestoreNative('FIRESTORE_NATIVE'),
  datastoreMode('DATASTORE_MODE');

  const FirestoreDatabaseType(this.terraformValue);
  final String terraformValue;
}

/// `database_edition` -- pricing + feature tier. `enterprise` unlocks the
/// MongoDB-compatible / Realtime-Updates / Data-Access modes but forces
/// `type` to be `firestoreNative`.
enum DatabaseEdition {
  standard('STANDARD'),
  enterprise('ENTERPRISE');

  const DatabaseEdition(this.terraformValue);
  final String terraformValue;
}

/// `concurrency_mode` -- transaction concurrency strategy.
/// `optimistic` is the default for Native mode; `pessimistic` is the
/// default for Datastore mode. `optimisticWithEntityGroups` is a legacy
/// Datastore-mode option.
enum ConcurrencyMode {
  optimistic('OPTIMISTIC'),
  pessimistic('PESSIMISTIC'),
  optimisticWithEntityGroups('OPTIMISTIC_WITH_ENTITY_GROUPS');

  const ConcurrencyMode(this.terraformValue);
  final String terraformValue;
}

/// `app_engine_integration_mode` -- whether the database participates in
/// the legacy App Engine integration. Only meaningful for Datastore-mode
/// databases that were originally provisioned via App Engine.
enum AppEngineIntegrationMode {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AppEngineIntegrationMode(this.terraformValue);
  final String terraformValue;
}

/// `point_in_time_recovery_enablement` -- when `enabled`, reads can
/// target timestamps within the past 7 days (1-minute granularity beyond
/// the most-recent hour). Default `disabled`.
enum PointInTimeRecoveryEnablement {
  enabled('POINT_IN_TIME_RECOVERY_ENABLED'),
  disabled('POINT_IN_TIME_RECOVERY_DISABLED');

  const PointInTimeRecoveryEnablement(this.terraformValue);
  final String terraformValue;
}

/// `delete_protection_state` -- when `enabled`, the database refuses
/// delete operations until protection is disabled. Default `unspecified`
/// (server-side equivalent to `disabled`).
enum DeleteProtectionState {
  unspecified('DELETE_PROTECTION_STATE_UNSPECIFIED'),
  enabled('DELETE_PROTECTION_ENABLED'),
  disabled('DELETE_PROTECTION_DISABLED');

  const DeleteProtectionState(this.terraformValue);
  final String terraformValue;
}

/// `firestore_data_access_mode` -- whether the Firestore document API is
/// accessible. Only valid for `enterprise` edition. Use to lock down a
/// database to MongoDB-compatible / Realtime-Updates access only.
enum FirestoreDataAccessMode {
  enabled('DATA_ACCESS_MODE_ENABLED'),
  disabled('DATA_ACCESS_MODE_DISABLED');

  const FirestoreDataAccessMode(this.terraformValue);
  final String terraformValue;
}

/// `mongodb_compatible_data_access_mode` -- whether the MongoDB-compatible
/// API is accessible. Only valid for `enterprise` edition.
enum MongodbCompatibleDataAccessMode {
  enabled('DATA_ACCESS_MODE_ENABLED'),
  disabled('DATA_ACCESS_MODE_DISABLED');

  const MongodbCompatibleDataAccessMode(this.terraformValue);
  final String terraformValue;
}

/// `realtime_updates_mode` -- whether the WebSocket-based realtime
/// listener API is accessible. Only valid for `enterprise` edition.
enum RealtimeUpdatesMode {
  enabled('REALTIME_UPDATES_MODE_ENABLED'),
  disabled('REALTIME_UPDATES_MODE_DISABLED');

  const RealtimeUpdatesMode(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// `cmek_config` block (single, max_items=1). Wraps the database in
/// Customer-Managed Encryption. Setting this on an existing database
/// forces replacement -- CMEK cannot be added or removed in place.
@immutable
class CmekConfig {
  const CmekConfig({required this.kmsKeyName});

  /// KMS key resource path:
  /// `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}`.
  /// The KMS location MUST match the Firestore database location.
  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Factory wrapper for `google_firestore_database` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firestore_database.`).
/// - `name`: database ID (4-63 chars, `[a-z][0-9]-`). Use the literal
///   `'(default)'` for the project's default database.
/// - `locationId`: GCP region or multi-region (`'asia-northeast1'`,
///   `'nam5'`, `'eur3'`). See
///   https://cloud.google.com/firestore/docs/locations.
/// - `type`: [FirestoreDatabaseType.firestoreNative] for the Firestore
///   document API, or [FirestoreDatabaseType.datastoreMode] for the
///   legacy Datastore API. Forces replacement when changed.
///
/// Example (default Native-mode database in asia-northeast1):
/// ```dart
/// final db = GoogleFirestoreDatabase(
///   localName: 'default',
///   name: TfArg.literal('(default)'),
///   locationId: TfArg.literal('asia-northeast1'),
///   type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
///   pointInTimeRecoveryEnablement: TfArg.literal(
///     PointInTimeRecoveryEnablement.enabled,
///   ),
///   deleteProtectionState: TfArg.literal(
///     DeleteProtectionState.enabled,
///   ),
/// );
/// ```
///
/// Manages one Cloud Firestore database in a GCP project. A project can
/// host multiple named databases; the `'(default)'` database is created
/// implicitly when the Firestore API is first enabled, so importing it
/// (via `terraform import`) is often the right move before placing it
/// under Terraform control.
final class GoogleFirestoreDatabase extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firestore_database';

  GoogleFirestoreDatabase({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> locationId,
    required TfArg<FirestoreDatabaseType> type,
    CmekConfig? cmekConfig,
    TfArg<DatabaseEdition>? databaseEdition,
    TfArg<ConcurrencyMode>? concurrencyMode,
    TfArg<AppEngineIntegrationMode>? appEngineIntegrationMode,
    TfArg<PointInTimeRecoveryEnablement>? pointInTimeRecoveryEnablement,
    TfArg<DeleteProtectionState>? deleteProtectionState,
    TfArg<String>? deletionPolicy,
    TfArg<FirestoreDataAccessMode>? firestoreDataAccessMode,
    TfArg<MongodbCompatibleDataAccessMode>? mongodbCompatibleDataAccessMode,
    TfArg<RealtimeUpdatesMode>? realtimeUpdatesMode,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'location_id': locationId,
           'type': type,
           if (cmekConfig != null)
             'cmek_config': TfArg.literal([cmekConfig.encode()]),
           if (databaseEdition != null) 'database_edition': databaseEdition,
           if (concurrencyMode != null) 'concurrency_mode': concurrencyMode,
           if (appEngineIntegrationMode != null)
             'app_engine_integration_mode': appEngineIntegrationMode,
           if (pointInTimeRecoveryEnablement != null)
             'point_in_time_recovery_enablement': pointInTimeRecoveryEnablement,
           if (deleteProtectionState != null)
             'delete_protection_state': deleteProtectionState,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (firestoreDataAccessMode != null)
             'firestore_data_access_mode': firestoreDataAccessMode,
           if (mongodbCompatibleDataAccessMode != null)
             'mongodb_compatible_data_access_mode':
                 mongodbCompatibleDataAccessMode,
           if (realtimeUpdatesMode != null)
             'realtime_updates_mode': realtimeUpdatesMode,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleFirestoreDatabaseSensitive;

  /// Reference to `name` attribute (`google_firestore_database.<id>.name`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/databases/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` attribute (server-assigned UUID4 for the database).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` attribute (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `create_time` attribute (RFC3339).
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `key_prefix` attribute -- the Datastore-style
  /// application-ID key prefix for this database.
  TfRef<String> get keyPrefix => TfRef.attribute<String>(this, 'key_prefix');

  /// Reference to `earliest_version_time` attribute. RFC3339; the
  /// oldest timestamp from which point-in-time reads are supported.
  TfRef<String> get earliestVersionTime =>
      TfRef.attribute<String>(this, 'earliest_version_time');
}

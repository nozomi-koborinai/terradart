// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_firestore_database`.
const Set<String> _googleFirestoreDatabaseSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `type` -- choose between Cloud Firestore's two API modes. Forces
/// replacement when changed.
extension type const FirestoreDatabaseType._(TfArg<String> _)
    implements TfArg<String> {
  FirestoreDatabaseType.variable(String name) : this._(TfArg.variable(name));
  FirestoreDatabaseType.expression(String template)
    : this._(TfArg.expression(template));
  const FirestoreDatabaseType.arg(TfArg<String> arg) : this._(arg);

  static const firestoreNative = FirestoreDatabaseType._(
    TfArgLiteral('FIRESTORE_NATIVE'),
  );
  static const datastoreMode = FirestoreDatabaseType._(
    TfArgLiteral('DATASTORE_MODE'),
  );

  static const List<FirestoreDatabaseType> values = [
    firestoreNative,
    datastoreMode,
  ];
}

/// `database_edition` -- pricing + feature tier. `enterprise` unlocks the
/// MongoDB-compatible / Realtime-Updates / Data-Access modes but forces
/// `type` to be `firestoreNative`.
extension type const DatabaseEdition._(TfArg<String> _)
    implements TfArg<String> {
  DatabaseEdition.variable(String name) : this._(TfArg.variable(name));
  DatabaseEdition.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseEdition.arg(TfArg<String> arg) : this._(arg);

  static const standard = DatabaseEdition._(TfArgLiteral('STANDARD'));
  static const enterprise = DatabaseEdition._(TfArgLiteral('ENTERPRISE'));

  static const List<DatabaseEdition> values = [standard, enterprise];
}

/// `concurrency_mode` -- transaction concurrency strategy.
/// `optimistic` is the default for Native mode; `pessimistic` is the
/// default for Datastore mode. `optimisticWithEntityGroups` is a legacy
/// Datastore-mode option.
extension type const ConcurrencyMode._(TfArg<String> _)
    implements TfArg<String> {
  ConcurrencyMode.variable(String name) : this._(TfArg.variable(name));
  ConcurrencyMode.expression(String template)
    : this._(TfArg.expression(template));
  const ConcurrencyMode.arg(TfArg<String> arg) : this._(arg);

  static const optimistic = ConcurrencyMode._(TfArgLiteral('OPTIMISTIC'));
  static const pessimistic = ConcurrencyMode._(TfArgLiteral('PESSIMISTIC'));
  static const optimisticWithEntityGroups = ConcurrencyMode._(
    TfArgLiteral('OPTIMISTIC_WITH_ENTITY_GROUPS'),
  );

  static const List<ConcurrencyMode> values = [
    optimistic,
    pessimistic,
    optimisticWithEntityGroups,
  ];
}

/// `app_engine_integration_mode` -- whether the database participates in
/// the legacy App Engine integration. Only meaningful for Datastore-mode
/// databases that were originally provisioned via App Engine.
extension type const AppEngineIntegrationMode._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineIntegrationMode.variable(String name) : this._(TfArg.variable(name));
  AppEngineIntegrationMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineIntegrationMode.arg(TfArg<String> arg) : this._(arg);

  static const enabled = AppEngineIntegrationMode._(TfArgLiteral('ENABLED'));
  static const disabled = AppEngineIntegrationMode._(TfArgLiteral('DISABLED'));

  static const List<AppEngineIntegrationMode> values = [enabled, disabled];
}

/// `point_in_time_recovery_enablement` -- when `enabled`, reads can
/// target timestamps within the past 7 days (1-minute granularity beyond
/// the most-recent hour). Default `disabled`.
extension type const PointInTimeRecoveryEnablement._(TfArg<String> _)
    implements TfArg<String> {
  PointInTimeRecoveryEnablement.variable(String name)
    : this._(TfArg.variable(name));
  PointInTimeRecoveryEnablement.expression(String template)
    : this._(TfArg.expression(template));
  const PointInTimeRecoveryEnablement.arg(TfArg<String> arg) : this._(arg);

  static const enabled = PointInTimeRecoveryEnablement._(
    TfArgLiteral('POINT_IN_TIME_RECOVERY_ENABLED'),
  );
  static const disabled = PointInTimeRecoveryEnablement._(
    TfArgLiteral('POINT_IN_TIME_RECOVERY_DISABLED'),
  );

  static const List<PointInTimeRecoveryEnablement> values = [enabled, disabled];
}

/// `delete_protection_state` -- when `enabled`, the database refuses
/// delete operations until protection is disabled. Default `unspecified`
/// (server-side equivalent to `disabled`).
extension type const DeleteProtectionState._(TfArg<String> _)
    implements TfArg<String> {
  DeleteProtectionState.variable(String name) : this._(TfArg.variable(name));
  DeleteProtectionState.expression(String template)
    : this._(TfArg.expression(template));
  const DeleteProtectionState.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = DeleteProtectionState._(
    TfArgLiteral('DELETE_PROTECTION_STATE_UNSPECIFIED'),
  );
  static const enabled = DeleteProtectionState._(
    TfArgLiteral('DELETE_PROTECTION_ENABLED'),
  );
  static const disabled = DeleteProtectionState._(
    TfArgLiteral('DELETE_PROTECTION_DISABLED'),
  );

  static const List<DeleteProtectionState> values = [
    unspecified,
    enabled,
    disabled,
  ];
}

/// `firestore_data_access_mode` -- whether the Firestore document API is
/// accessible. Only valid for `enterprise` edition. Use to lock down a
/// database to MongoDB-compatible / Realtime-Updates access only.
extension type const FirestoreDataAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  FirestoreDataAccessMode.variable(String name) : this._(TfArg.variable(name));
  FirestoreDataAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const FirestoreDataAccessMode.arg(TfArg<String> arg) : this._(arg);

  static const enabled = FirestoreDataAccessMode._(
    TfArgLiteral('DATA_ACCESS_MODE_ENABLED'),
  );
  static const disabled = FirestoreDataAccessMode._(
    TfArgLiteral('DATA_ACCESS_MODE_DISABLED'),
  );

  static const List<FirestoreDataAccessMode> values = [enabled, disabled];
}

/// `mongodb_compatible_data_access_mode` -- whether the MongoDB-compatible
/// API is accessible. Only valid for `enterprise` edition.
extension type const MongodbCompatibleDataAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  MongodbCompatibleDataAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  MongodbCompatibleDataAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const MongodbCompatibleDataAccessMode.arg(TfArg<String> arg) : this._(arg);

  static const enabled = MongodbCompatibleDataAccessMode._(
    TfArgLiteral('DATA_ACCESS_MODE_ENABLED'),
  );
  static const disabled = MongodbCompatibleDataAccessMode._(
    TfArgLiteral('DATA_ACCESS_MODE_DISABLED'),
  );

  static const List<MongodbCompatibleDataAccessMode> values = [
    enabled,
    disabled,
  ];
}

/// `realtime_updates_mode` -- whether the WebSocket-based realtime
/// listener API is accessible. Only valid for `enterprise` edition.
extension type const RealtimeUpdatesMode._(TfArg<String> _)
    implements TfArg<String> {
  RealtimeUpdatesMode.variable(String name) : this._(TfArg.variable(name));
  RealtimeUpdatesMode.expression(String template)
    : this._(TfArg.expression(template));
  const RealtimeUpdatesMode.arg(TfArg<String> arg) : this._(arg);

  static const enabled = RealtimeUpdatesMode._(
    TfArgLiteral('REALTIME_UPDATES_MODE_ENABLED'),
  );
  static const disabled = RealtimeUpdatesMode._(
    TfArgLiteral('REALTIME_UPDATES_MODE_DISABLED'),
  );

  static const List<RealtimeUpdatesMode> values = [enabled, disabled];
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// Typed helper for the `cmek_config` block of
/// `google_firestore_database` (derived from provider schema).
@immutable
final class FirestoreDatabaseCmekConfig {
  const FirestoreDatabaseCmekConfig({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_firestore_database`.
///
/// A Cloud Firestore Database.
///
/// If you wish to use Firestore with App Engine, use the
/// [`google_app_engine_application`](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/app_engine_application)
/// resource instead. If you were previously using the
/// `google_app_engine_application` resource exclusively for managing a
/// Firestore database and would like to use the `google_firestore_database`
/// resource instead, please follow the instructions
/// [here](https://cloud.google.com/firestore/docs/app-engine-requirement).
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
///   'default',
///   name: TfArg.literal('(default)'),
///   locationId: TfArg.literal('asia-northeast1'),
///   type: FirestoreDatabaseType.firestoreNative,
///   pointInTimeRecoveryEnablement: PointInTimeRecoveryEnablement.enabled,
///   deleteProtectionState: DeleteProtectionState.enabled,
/// );
/// ```
///
/// Manages one Cloud Firestore database in a GCP project. A project can
/// host multiple named databases; the `'(default)'` database is created
/// implicitly when the Firestore API is first enabled, so importing it
/// (via `terraform import`) is often the right move before placing it
/// under Terraform control.
final class GoogleFirestoreDatabase extends Resource {
  static const String tfType = 'google_firestore_database';

  GoogleFirestoreDatabase(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> locationId,
    required FirestoreDatabaseType type,
    FirestoreDatabaseCmekConfig? cmekConfig,
    DatabaseEdition? databaseEdition,
    ConcurrencyMode? concurrencyMode,
    AppEngineIntegrationMode? appEngineIntegrationMode,
    PointInTimeRecoveryEnablement? pointInTimeRecoveryEnablement,
    DeleteProtectionState? deleteProtectionState,
    TfArg<String>? deletionPolicy,
    FirestoreDataAccessMode? firestoreDataAccessMode,
    MongodbCompatibleDataAccessMode? mongodbCompatibleDataAccessMode,
    RealtimeUpdatesMode? realtimeUpdatesMode,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location_id': locationId,
           'type': type,
           if (cmekConfig != null)
             'cmek_config': TfArg.literal(cmekConfig.encode()),
           'database_edition': ?databaseEdition,
           'concurrency_mode': ?concurrencyMode,
           'app_engine_integration_mode': ?appEngineIntegrationMode,
           'point_in_time_recovery_enablement': ?pointInTimeRecoveryEnablement,
           'delete_protection_state': ?deleteProtectionState,
           'deletion_policy': ?deletionPolicy,
           'firestore_data_access_mode': ?firestoreDataAccessMode,
           'mongodb_compatible_data_access_mode':
               ?mongodbCompatibleDataAccessMode,
           'realtime_updates_mode': ?realtimeUpdatesMode,
           'tags': ?tags,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirestoreDatabase>`.
  RefTo<GoogleFirestoreDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `earliest_version_time` attribute.
  TfRef<String> get earliestVersionTime =>
      TfRef.attribute<String>(this, 'earliest_version_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key_prefix` attribute.
  TfRef<String> get keyPrefix => TfRef.attribute<String>(this, 'key_prefix');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `version_retention_period` attribute.
  TfRef<String> get versionRetentionPeriod =>
      TfRef.attribute<String>(this, 'version_retention_period');

  /// Reference to `app_engine_integration_mode` attribute.
  TfRef<String> get appEngineIntegrationMode =>
      TfRef.attribute<String>(this, 'app_engine_integration_mode');

  /// Reference to `concurrency_mode` attribute.
  TfRef<String> get concurrencyMode =>
      TfRef.attribute<String>(this, 'concurrency_mode');

  /// Reference to `database_edition` attribute.
  TfRef<String> get databaseEdition =>
      TfRef.attribute<String>(this, 'database_edition');

  /// Reference to `delete_protection_state` attribute.
  TfRef<String> get deleteProtectionState =>
      TfRef.attribute<String>(this, 'delete_protection_state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `firestore_data_access_mode` attribute.
  TfRef<String> get firestoreDataAccessMode =>
      TfRef.attribute<String>(this, 'firestore_data_access_mode');

  /// Reference to `location_id` attribute.
  TfRef<String> get locationId => TfRef.attribute<String>(this, 'location_id');

  /// Reference to `mongodb_compatible_data_access_mode` attribute.
  TfRef<String> get mongodbCompatibleDataAccessMode =>
      TfRef.attribute<String>(this, 'mongodb_compatible_data_access_mode');

  /// Reference to `point_in_time_recovery_enablement` attribute.
  TfRef<String> get pointInTimeRecoveryEnablement =>
      TfRef.attribute<String>(this, 'point_in_time_recovery_enablement');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `realtime_updates_mode` attribute.
  TfRef<String> get realtimeUpdatesMode =>
      TfRef.attribute<String>(this, 'realtime_updates_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

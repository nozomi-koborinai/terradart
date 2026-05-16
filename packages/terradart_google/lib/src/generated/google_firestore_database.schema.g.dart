// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firestore_database.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class CmekConfig {
  /// Creates a [CmekConfig] from a JSON map.
  factory CmekConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  CmekConfig._(this._json);

  CmekConfig({required String kmsKeyName}) {
    _json = {'kms_key_name': kmsKeyName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CmekConfig].
  static const SchemanticType<CmekConfig> $schema = _CmekConfigTypeFactory();

  String get kmsKeyName {
    return _json['kms_key_name'] as String;
  }

  set kmsKeyName(String value) {
    _json['kms_key_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CmekConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CmekConfigTypeFactory extends SchemanticType<CmekConfig> {
  const _CmekConfigTypeFactory();

  @override
  CmekConfig parse(Object? json) {
    return CmekConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CmekConfig',
    definition: $Schema
        .object(
          properties: {
            'kms_key_name': $Schema.string(
              description:
                  'The resource ID of a Cloud KMS key. If set, the database created will\nbe a Customer-managed Encryption Key (CMEK) database encrypted with\nthis key. This feature is allowlist only in initial launch.\n\nOnly keys in the same location as this database are allowed to be used\nfor encryption. For Firestore\'s nam5 multi-region, this corresponds to Cloud KMS\nmulti-region us. For Firestore\'s eur3 multi-region, this corresponds to\nCloud KMS multi-region europe. See https://cloud.google.com/kms/docs/locations.\n\nThis value should be the KMS key resource ID in the format of\n\'projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}\'.\nHow to retrieve this resource ID is listed at\nhttps://cloud.google.com/kms/docs/getting-resource-ids#getting_the_id_for_a_key_and_version.',
            ),
          },
          required: ['kms_key_name'],
          description:
              'The CMEK (Customer Managed Encryption Key) configuration for a Firestore\ndatabase. If not present, the database is secured by the default Google\nencryption key.',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleFirestoreDatabase {
  /// Creates a [GoogleFirestoreDatabase] from a JSON map.
  factory GoogleFirestoreDatabase.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirestoreDatabase._(this._json);

  GoogleFirestoreDatabase({
    String? appEngineIntegrationMode,
    String? concurrencyMode,
    String? databaseEdition,
    String? deleteProtectionState,
    String? deletionPolicy,
    String? firestoreDataAccessMode,
    String? id,
    required String locationId,
    String? mongodbCompatibleDataAccessMode,
    required String name,
    String? pointInTimeRecoveryEnablement,
    String? project,
    String? realtimeUpdatesMode,
    Map<String, String>? tags,
    required String type,
    CmekConfig? cmekConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'app_engine_integration_mode': ?appEngineIntegrationMode,
      'concurrency_mode': ?concurrencyMode,
      'database_edition': ?databaseEdition,
      'delete_protection_state': ?deleteProtectionState,
      'deletion_policy': ?deletionPolicy,
      'firestore_data_access_mode': ?firestoreDataAccessMode,
      'id': ?id,
      'location_id': locationId,
      'mongodb_compatible_data_access_mode': ?mongodbCompatibleDataAccessMode,
      'name': name,
      'point_in_time_recovery_enablement': ?pointInTimeRecoveryEnablement,
      'project': ?project,
      'realtime_updates_mode': ?realtimeUpdatesMode,
      'tags': ?tags,
      'type': type,
      'cmek_config': ?cmekConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirestoreDatabase].
  static const SchemanticType<GoogleFirestoreDatabase> $schema =
      _GoogleFirestoreDatabaseTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get appEngineIntegrationMode {
    return _json['app_engine_integration_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set appEngineIntegrationMode(String? value) {
    if (value == null) {
      _json.remove('app_engine_integration_mode');
    } else {
      _json['app_engine_integration_mode'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get concurrencyMode {
    return _json['concurrency_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set concurrencyMode(String? value) {
    if (value == null) {
      _json.remove('concurrency_mode');
    } else {
      _json['concurrency_mode'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get databaseEdition {
    return _json['database_edition'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set databaseEdition(String? value) {
    if (value == null) {
      _json.remove('database_edition');
    } else {
      _json['database_edition'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get deleteProtectionState {
    return _json['delete_protection_state'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set deleteProtectionState(String? value) {
    if (value == null) {
      _json.remove('delete_protection_state');
    } else {
      _json['delete_protection_state'] = value;
    }
  }

  String? get deletionPolicy {
    return _json['deletion_policy'] as String?;
  }

  set deletionPolicy(String? value) {
    if (value == null) {
      _json.remove('deletion_policy');
    } else {
      _json['deletion_policy'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get firestoreDataAccessMode {
    return _json['firestore_data_access_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set firestoreDataAccessMode(String? value) {
    if (value == null) {
      _json.remove('firestore_data_access_mode');
    } else {
      _json['firestore_data_access_mode'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  String get locationId {
    return _json['location_id'] as String;
  }

  set locationId(String value) {
    _json['location_id'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get mongodbCompatibleDataAccessMode {
    return _json['mongodb_compatible_data_access_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set mongodbCompatibleDataAccessMode(String? value) {
    if (value == null) {
      _json.remove('mongodb_compatible_data_access_mode');
    } else {
      _json['mongodb_compatible_data_access_mode'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get pointInTimeRecoveryEnablement {
    return _json['point_in_time_recovery_enablement'] as String?;
  }

  set pointInTimeRecoveryEnablement(String? value) {
    if (value == null) {
      _json.remove('point_in_time_recovery_enablement');
    } else {
      _json['point_in_time_recovery_enablement'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get realtimeUpdatesMode {
    return _json['realtime_updates_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set realtimeUpdatesMode(String? value) {
    if (value == null) {
      _json.remove('realtime_updates_mode');
    } else {
      _json['realtime_updates_mode'] = value;
    }
  }

  Map<String, String>? get tags {
    return (_json['tags'] as Map?)?.cast<String, String>();
  }

  set tags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('tags');
    } else {
      _json['tags'] = value;
    }
  }

  String get type {
    return _json['type'] as String;
  }

  set type(String value) {
    _json['type'] = value;
  }

  CmekConfig? get cmekConfig {
    return _json['cmek_config'] == null
        ? null
        : CmekConfig.fromJson(_json['cmek_config'] as Map<String, dynamic>);
  }

  set cmekConfig(CmekConfig? value) {
    if (value == null) {
      _json.remove('cmek_config');
    } else {
      _json['cmek_config'] = value;
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleFirestoreDatabase] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirestoreDatabaseTypeFactory
    extends SchemanticType<GoogleFirestoreDatabase> {
  const _GoogleFirestoreDatabaseTypeFactory();

  @override
  GoogleFirestoreDatabase parse(Object? json) {
    return GoogleFirestoreDatabase._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirestoreDatabase',
    definition: $Schema
        .object(
          properties: {
            'app_engine_integration_mode': $Schema.string(
              description:
                  'The App Engine integration mode to use for this database. Possible values: ["ENABLED", "DISABLED"]',
            ),
            'concurrency_mode': $Schema.string(
              description:
                  'The concurrency control mode to use for this database. Possible values: ["OPTIMISTIC", "PESSIMISTIC", "OPTIMISTIC_WITH_ENTITY_GROUPS"]',
            ),
            'database_edition': $Schema.string(
              description:
                  'The database edition. When set to \'ENTERPRISE\', then type must be set to\n\'FIRESTORE_NATIVE\'. Possible values: ["STANDARD", "ENTERPRISE"]',
            ),
            'delete_protection_state': $Schema.string(
              description:
                  'State of delete protection for the database.\nWhen delete protection is enabled, this database cannot be deleted.\nThe default value is \'DELETE_PROTECTION_STATE_UNSPECIFIED\', which is currently equivalent to \'DELETE_PROTECTION_DISABLED\'.\n**Note:** Additionally, to delete this database using \'terraform destroy\', \'deletion_policy\' must be set to \'DELETE\'. Possible values: ["DELETE_PROTECTION_STATE_UNSPECIFIED", "DELETE_PROTECTION_ENABLED", "DELETE_PROTECTION_DISABLED"]',
            ),
            'deletion_policy': $Schema.string(
              description:
                  'Deletion behavior for this database.\nIf the deletion policy is \'ABANDON\', the database will be removed from Terraform state but not deleted from Google Cloud upon destruction.\nIf the deletion policy is \'DELETE\', the database will both be removed from Terraform state and deleted from Google Cloud upon destruction.\nThe default value is \'ABANDON\'.\nSee also \'delete_protection\'.',
            ),
            'firestore_data_access_mode': $Schema.string(
              description:
                  'The Firestore API data access mode to use for this database. Can only be\nspecified for \'ENTERPRISE\' edition databases. Possible values: ["DATA_ACCESS_MODE_ENABLED", "DATA_ACCESS_MODE_DISABLED"]',
            ),
            'id': $Schema.string(),
            'location_id': $Schema.string(
              description:
                  'The location of the database. Available locations are listed at\nhttps://cloud.google.com/firestore/docs/locations.',
            ),
            'mongodb_compatible_data_access_mode': $Schema.string(
              description:
                  'The MongoDB compatible API data access mode to use for this database. Can\nonly be specified for \'ENTERPRISE\' edition databases. Possible values: ["DATA_ACCESS_MODE_ENABLED", "DATA_ACCESS_MODE_DISABLED"]',
            ),
            'name': $Schema.string(
              description:
                  'The ID to use for the database, which will become the final\ncomponent of the database\'s resource name. This value should be 4-63\ncharacters. Valid characters are /[a-z][0-9]-/ with first character\na letter and the last a letter or a number. Must not be\nUUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.\n"(default)" database id is also valid.',
            ),
            'point_in_time_recovery_enablement': $Schema.string(
              description:
                  'Whether to enable the PITR feature on this database.\nIf \'POINT_IN_TIME_RECOVERY_ENABLED\' is selected, reads are supported on selected versions of the data from within the past 7 days.\nversionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour\nand reads against 1-minute snapshots beyond 1 hour and within 7 days.\nIf \'POINT_IN_TIME_RECOVERY_DISABLED\' is selected, reads are supported on any version of the data from within the past 1 hour. Default value: "POINT_IN_TIME_RECOVERY_DISABLED" Possible values: ["POINT_IN_TIME_RECOVERY_ENABLED", "POINT_IN_TIME_RECOVERY_DISABLED"]',
            ),
            'project': $Schema.string(),
            'realtime_updates_mode': $Schema.string(
              description:
                  'The Realtime Updates mode to use for this database. Can only be specified\nfor \'ENTERPRISE\' edition databases. Possible values: ["REALTIME_UPDATES_MODE_ENABLED", "REALTIME_UPDATES_MODE_DISABLED"]',
            ),
            'tags': $Schema.object(
              description:
                  'Input only. A map of resource manager tags. Resource manager tag keys\nand values have the same definition as resource manager tags.\nKeys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.\nThe field is ignored when empty. The field is immutable and causes\nresource replacement when mutated. To apply tags to an existing resource, see\nthe \'google_tags_tag_value\' resource.',
              additionalProperties: $Schema.string(),
            ),
            'type': $Schema.string(
              description:
                  'The type of the database.\nSee https://cloud.google.com/datastore/docs/firestore-or-datastore\nfor information about how to choose. Possible values: ["FIRESTORE_NATIVE", "DATASTORE_MODE"]',
            ),
            'cmek_config': $Schema.fromMap({'\$ref': r'#/$defs/CmekConfig'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['location_id', 'name', 'type'],
        )
        .value,
    dependencies: [CmekConfig.$schema, Timeouts.$schema],
  );
}

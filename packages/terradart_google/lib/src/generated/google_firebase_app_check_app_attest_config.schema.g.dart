// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_check_app_attest_config.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

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

base class GoogleFirebaseAppCheckAppAttestConfig {
  /// Creates a [GoogleFirebaseAppCheckAppAttestConfig] from a JSON map.
  factory GoogleFirebaseAppCheckAppAttestConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseAppCheckAppAttestConfig._(this._json);

  GoogleFirebaseAppCheckAppAttestConfig({
    required String appId,
    String? id,
    String? project,
    String? tokenTtl,
    Timeouts? timeouts,
  }) {
    _json = {
      'app_id': appId,
      'id': ?id,
      'project': ?project,
      'token_ttl': ?tokenTtl,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppCheckAppAttestConfig].
  static const SchemanticType<GoogleFirebaseAppCheckAppAttestConfig> $schema =
      _GoogleFirebaseAppCheckAppAttestConfigTypeFactory();

  String get appId {
    return _json['app_id'] as String;
  }

  set appId(String value) {
    _json['app_id'] = value;
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
  String? get tokenTtl {
    return _json['token_ttl'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set tokenTtl(String? value) {
    if (value == null) {
      _json.remove('token_ttl');
    } else {
      _json['token_ttl'] = value;
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

  /// Serializes this [GoogleFirebaseAppCheckAppAttestConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppCheckAppAttestConfigTypeFactory
    extends SchemanticType<GoogleFirebaseAppCheckAppAttestConfig> {
  const _GoogleFirebaseAppCheckAppAttestConfigTypeFactory();

  @override
  GoogleFirebaseAppCheckAppAttestConfig parse(Object? json) {
    return GoogleFirebaseAppCheckAppAttestConfig._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppCheckAppAttestConfig',
    definition: $Schema
        .object(
          properties: {
            'app_id': $Schema.string(
              description:
                  'The ID of an\n[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'token_ttl': $Schema.string(
              description:
                  'Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.\nIf unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.\n\nA duration in seconds with up to nine fractional digits, ending with \'s\'. Example: "3.5s".',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['app_id'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

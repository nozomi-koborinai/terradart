// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_check_debug_token.schema.dart';

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

base class GoogleFirebaseAppCheckDebugToken {
  /// Creates a [GoogleFirebaseAppCheckDebugToken] from a JSON map.
  factory GoogleFirebaseAppCheckDebugToken.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseAppCheckDebugToken._(this._json);

  GoogleFirebaseAppCheckDebugToken({
    required String appId,
    required String displayName,
    String? id,
    String? project,
    required String token,
    Timeouts? timeouts,
  }) {
    _json = {
      'app_id': appId,
      'display_name': displayName,
      'id': ?id,
      'project': ?project,
      'token': token,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppCheckDebugToken].
  static const SchemanticType<GoogleFirebaseAppCheckDebugToken> $schema =
      _GoogleFirebaseAppCheckDebugTokenTypeFactory();

  String get appId {
    return _json['app_id'] as String;
  }

  set appId(String value) {
    _json['app_id'] = value;
  }

  String get displayName {
    return _json['display_name'] as String;
  }

  set displayName(String value) {
    _json['display_name'] = value;
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

  String get token {
    return _json['token'] as String;
  }

  set token(String value) {
    _json['token'] = value;
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

  /// Serializes this [GoogleFirebaseAppCheckDebugToken] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppCheckDebugTokenTypeFactory
    extends SchemanticType<GoogleFirebaseAppCheckDebugToken> {
  const _GoogleFirebaseAppCheckDebugTokenTypeFactory();

  @override
  GoogleFirebaseAppCheckDebugToken parse(Object? json) {
    return GoogleFirebaseAppCheckDebugToken._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppCheckDebugToken',
    definition: $Schema
        .object(
          properties: {
            'app_id': $Schema.string(
              description:
                  'The ID of a\n[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),\n[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),\nor [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)',
            ),
            'display_name': $Schema.string(
              description:
                  'A human readable display name used to identify this debug token.',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'token': $Schema.string(
              description:
                  'The secret token itself. Must be provided during creation, and must be a UUID4,\ncase insensitive. You may use a method of your choice such as random/random_uuid\nto generate the token.\n\nThis field is immutable once set, and cannot be updated. You can, however, delete\nthis debug token to revoke it.\n\nFor security reasons, this field will never be populated in any response.',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['app_id', 'display_name', 'token'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

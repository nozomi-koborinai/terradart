// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firestore_user_creds.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete}) {
    _json = {'create': ?create, 'delete': ?delete};
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
          properties: {'create': $Schema.string(), 'delete': $Schema.string()},
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleFirestoreUserCreds {
  /// Creates a [GoogleFirestoreUserCreds] from a JSON map.
  factory GoogleFirestoreUserCreds.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirestoreUserCreds._(this._json);

  GoogleFirestoreUserCreds({
    required String database,
    String? id,
    required String name,
    String? project,
    Timeouts? timeouts,
  }) {
    _json = {
      'database': database,
      'id': ?id,
      'name': name,
      'project': ?project,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirestoreUserCreds].
  static const SchemanticType<GoogleFirestoreUserCreds> $schema =
      _GoogleFirestoreUserCredsTypeFactory();

  String get database {
    return _json['database'] as String;
  }

  set database(String value) {
    _json['database'] = value;
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

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
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

  /// Serializes this [GoogleFirestoreUserCreds] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirestoreUserCredsTypeFactory
    extends SchemanticType<GoogleFirestoreUserCreds> {
  const _GoogleFirestoreUserCredsTypeFactory();

  @override
  GoogleFirestoreUserCreds parse(Object? json) {
    return GoogleFirestoreUserCreds._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirestoreUserCreds',
    definition: $Schema
        .object(
          properties: {
            'database': $Schema.string(
              description: 'The Firestore database ID.',
            ),
            'id': $Schema.string(),
            'name': $Schema.string(
              description:
                  'The ID to use for the user creds, which will become the final component\nof the user cred\'s resource name.\n\nThis value should be 4-63 characters. Valid characters are /[a-z][0-9]-/\nwith first character a letter and the last a letter or a number. Must not\nbe UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.',
            ),
            'project': $Schema.string(),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['database', 'name'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

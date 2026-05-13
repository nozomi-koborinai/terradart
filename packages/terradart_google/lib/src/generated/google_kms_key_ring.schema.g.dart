// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_kms_key_ring.schema.dart';

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

base class GoogleKmsKeyRing {
  /// Creates a [GoogleKmsKeyRing] from a JSON map.
  factory GoogleKmsKeyRing.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleKmsKeyRing._(this._json);

  GoogleKmsKeyRing({
    String? id,
    required String location,
    required String name,
    String? project,
    Timeouts? timeouts,
  }) {
    _json = {
      'id': ?id,
      'location': location,
      'name': name,
      'project': ?project,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleKmsKeyRing].
  static const SchemanticType<GoogleKmsKeyRing> $schema =
      _GoogleKmsKeyRingTypeFactory();

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

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
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

  /// Serializes this [GoogleKmsKeyRing] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleKmsKeyRingTypeFactory
    extends SchemanticType<GoogleKmsKeyRing> {
  const _GoogleKmsKeyRingTypeFactory();

  @override
  GoogleKmsKeyRing parse(Object? json) {
    return GoogleKmsKeyRing._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleKmsKeyRing',
    definition: $Schema
        .object(
          properties: {
            'id': $Schema.string(),
            'location': $Schema.string(
              description:
                  'The location for the KeyRing.\nA full list of valid locations can be found by running \'gcloud kms locations list\'.',
            ),
            'name': $Schema.string(
              description: 'The resource name for the KeyRing.',
            ),
            'project': $Schema.string(),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['location', 'name'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

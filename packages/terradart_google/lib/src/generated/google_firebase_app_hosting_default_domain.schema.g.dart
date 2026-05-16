// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_hosting_default_domain.schema.dart';

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

base class GoogleFirebaseAppHostingDefaultDomain {
  /// Creates a [GoogleFirebaseAppHostingDefaultDomain] from a JSON map.
  factory GoogleFirebaseAppHostingDefaultDomain.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseAppHostingDefaultDomain._(this._json);

  GoogleFirebaseAppHostingDefaultDomain({
    required String backend,
    bool? disabled,
    required String domainId,
    String? id,
    required String location,
    String? project,
    Timeouts? timeouts,
  }) {
    _json = {
      'backend': backend,
      'disabled': ?disabled,
      'domain_id': domainId,
      'id': ?id,
      'location': location,
      'project': ?project,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppHostingDefaultDomain].
  static const SchemanticType<GoogleFirebaseAppHostingDefaultDomain> $schema =
      _GoogleFirebaseAppHostingDefaultDomainTypeFactory();

  String get backend {
    return _json['backend'] as String;
  }

  set backend(String value) {
    _json['backend'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get disabled {
    return _json['disabled'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set disabled(bool? value) {
    if (value == null) {
      _json.remove('disabled');
    } else {
      _json['disabled'] = value;
    }
  }

  String get domainId {
    return _json['domain_id'] as String;
  }

  set domainId(String value) {
    _json['domain_id'] = value;
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

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
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

  /// Serializes this [GoogleFirebaseAppHostingDefaultDomain] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppHostingDefaultDomainTypeFactory
    extends SchemanticType<GoogleFirebaseAppHostingDefaultDomain> {
  const _GoogleFirebaseAppHostingDefaultDomainTypeFactory();

  @override
  GoogleFirebaseAppHostingDefaultDomain parse(Object? json) {
    return GoogleFirebaseAppHostingDefaultDomain._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppHostingDefaultDomain',
    definition: $Schema
        .object(
          properties: {
            'backend': $Schema.string(
              description:
                  'The ID of the Backend that this Domain is associated with',
            ),
            'disabled': $Schema.boolean(
              description: 'Whether the domain is disabled. Defaults to false.',
            ),
            'domain_id': $Schema.string(
              description:
                  'Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app',
            ),
            'id': $Schema.string(),
            'location': $Schema.string(
              description:
                  'The location of the Backend that this Domain is associated with',
            ),
            'project': $Schema.string(),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['backend', 'domain_id', 'location'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

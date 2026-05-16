// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_hosting_domain.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Redirect {
  /// Creates a [Redirect] from a JSON map.
  factory Redirect.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Redirect._(this._json);

  Redirect({String? status, required String uri}) {
    _json = {'status': ?status, 'uri': uri};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Redirect].
  static const SchemanticType<Redirect> $schema = _RedirectTypeFactory();

  String? get status {
    return _json['status'] as String?;
  }

  set status(String? value) {
    if (value == null) {
      _json.remove('status');
    } else {
      _json['status'] = value;
    }
  }

  String get uri {
    return _json['uri'] as String;
  }

  set uri(String value) {
    _json['uri'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Redirect] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RedirectTypeFactory extends SchemanticType<Redirect> {
  const _RedirectTypeFactory();

  @override
  Redirect parse(Object? json) {
    return Redirect._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Redirect',
    definition: $Schema
        .object(
          properties: {
            'status': $Schema.string(
              description:
                  'The status code to use in a redirect response. Must be a valid HTTP 3XX\nstatus code. Defaults to 302 if not present.',
            ),
            'uri': $Schema.string(
              description:
                  'The URI of the redirect\'s intended destination. This URI will be\nprepended to the original request path. URI without a scheme are\nassumed to be HTTPS.',
            ),
          },
          required: ['uri'],
          description: 'Specifies redirect behavior for a domain.',
        )
        .value,
    dependencies: [],
  );
}

base class Serve {
  /// Creates a [Serve] from a JSON map.
  factory Serve.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Serve._(this._json);

  Serve({Redirect? redirect}) {
    _json = {'redirect': ?redirect?.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Serve].
  static const SchemanticType<Serve> $schema = _ServeTypeFactory();

  Redirect? get redirect {
    return _json['redirect'] == null
        ? null
        : Redirect.fromJson(_json['redirect'] as Map<String, dynamic>);
  }

  set redirect(Redirect? value) {
    if (value == null) {
      _json.remove('redirect');
    } else {
      _json['redirect'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Serve] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ServeTypeFactory extends SchemanticType<Serve> {
  const _ServeTypeFactory();

  @override
  Serve parse(Object? json) {
    return Serve._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Serve',
    definition: $Schema
        .object(
          properties: {
            'redirect': $Schema.fromMap({'\$ref': r'#/$defs/Redirect'}),
          },
          description:
              'The serving behavior of the domain. If specified, the domain will\nserve content other than its Backend\'s live content.',
        )
        .value,
    dependencies: [Redirect.$schema],
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

base class GoogleFirebaseAppHostingDomain {
  /// Creates a [GoogleFirebaseAppHostingDomain] from a JSON map.
  factory GoogleFirebaseAppHostingDomain.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirebaseAppHostingDomain._(this._json);

  GoogleFirebaseAppHostingDomain({
    required String backend,
    required String domainId,
    String? id,
    required String location,
    String? project,
    Serve? serve,
    Timeouts? timeouts,
  }) {
    _json = {
      'backend': backend,
      'domain_id': domainId,
      'id': ?id,
      'location': location,
      'project': ?project,
      'serve': ?serve?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppHostingDomain].
  static const SchemanticType<GoogleFirebaseAppHostingDomain> $schema =
      _GoogleFirebaseAppHostingDomainTypeFactory();

  String get backend {
    return _json['backend'] as String;
  }

  set backend(String value) {
    _json['backend'] = value;
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

  Serve? get serve {
    return _json['serve'] == null
        ? null
        : Serve.fromJson(_json['serve'] as Map<String, dynamic>);
  }

  set serve(Serve? value) {
    if (value == null) {
      _json.remove('serve');
    } else {
      _json['serve'] = value;
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

  /// Serializes this [GoogleFirebaseAppHostingDomain] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppHostingDomainTypeFactory
    extends SchemanticType<GoogleFirebaseAppHostingDomain> {
  const _GoogleFirebaseAppHostingDomainTypeFactory();

  @override
  GoogleFirebaseAppHostingDomain parse(Object? json) {
    return GoogleFirebaseAppHostingDomain._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppHostingDomain',
    definition: $Schema
        .object(
          properties: {
            'backend': $Schema.string(
              description:
                  'The ID of the Backend that this Domain is associated with',
            ),
            'domain_id': $Schema.string(
              description:
                  'Id of the domain to create.\nMust be a valid domain name, such as "foo.com"',
            ),
            'id': $Schema.string(),
            'location': $Schema.string(
              description:
                  'The location of the Backend that this Domain is associated with',
            ),
            'project': $Schema.string(),
            'serve': $Schema.fromMap({'\$ref': r'#/$defs/Serve'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['backend', 'domain_id', 'location'],
        )
        .value,
    dependencies: [Serve.$schema, Timeouts.$schema],
  );
}

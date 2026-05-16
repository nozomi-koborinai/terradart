// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_hosting_build.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Codebase {
  /// Creates a [Codebase] from a JSON map.
  factory Codebase.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Codebase._(this._json);

  Codebase({String? branch, String? commit}) {
    _json = {'branch': ?branch, 'commit': ?commit};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Codebase].
  static const SchemanticType<Codebase> $schema = _CodebaseTypeFactory();

  String? get branch {
    return _json['branch'] as String?;
  }

  set branch(String? value) {
    if (value == null) {
      _json.remove('branch');
    } else {
      _json['branch'] = value;
    }
  }

  String? get commit {
    return _json['commit'] as String?;
  }

  set commit(String? value) {
    if (value == null) {
      _json.remove('commit');
    } else {
      _json['commit'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Codebase] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CodebaseTypeFactory extends SchemanticType<Codebase> {
  const _CodebaseTypeFactory();

  @override
  Codebase parse(Object? json) {
    return Codebase._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Codebase',
    definition: $Schema
        .object(
          properties: {
            'branch': $Schema.string(
              description:
                  'The branch in the codebase to build from, using the latest commit.',
            ),
            'commit': $Schema.string(
              description: 'The commit in the codebase to build from.',
            ),
          },
          description:
              'A codebase source, representing the state of the codebase\nthat the build will be created at.',
        )
        .value,
    dependencies: [],
  );
}

base class Container {
  /// Creates a [Container] from a JSON map.
  factory Container.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Container._(this._json);

  Container({required String image}) {
    _json = {'image': image};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Container].
  static const SchemanticType<Container> $schema = _ContainerTypeFactory();

  String get image {
    return _json['image'] as String;
  }

  set image(String value) {
    _json['image'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Container] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ContainerTypeFactory extends SchemanticType<Container> {
  const _ContainerTypeFactory();

  @override
  Container parse(Object? json) {
    return Container._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Container',
    definition: $Schema
        .object(
          properties: {
            'image': $Schema.string(
              description:
                  'A URI representing a container for the backend to use.',
            ),
          },
          required: ['image'],
          description:
              'The URI of an Artifact Registry\n[container\nimage](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)\nto use as the build source.',
        )
        .value,
    dependencies: [],
  );
}

base class Source {
  /// Creates a [Source] from a JSON map.
  factory Source.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Source._(this._json);

  Source({Codebase? codebase, Container? container}) {
    _json = {
      'codebase': ?codebase?.toJson(),
      'container': ?container?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Source].
  static const SchemanticType<Source> $schema = _SourceTypeFactory();

  Codebase? get codebase {
    return _json['codebase'] == null
        ? null
        : Codebase.fromJson(_json['codebase'] as Map<String, dynamic>);
  }

  set codebase(Codebase? value) {
    if (value == null) {
      _json.remove('codebase');
    } else {
      _json['codebase'] = value;
    }
  }

  Container? get container {
    return _json['container'] == null
        ? null
        : Container.fromJson(_json['container'] as Map<String, dynamic>);
  }

  set container(Container? value) {
    if (value == null) {
      _json.remove('container');
    } else {
      _json['container'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Source] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SourceTypeFactory extends SchemanticType<Source> {
  const _SourceTypeFactory();

  @override
  Source parse(Object? json) {
    return Source._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Source',
    definition: $Schema
        .object(
          properties: {
            'codebase': $Schema.fromMap({'\$ref': r'#/$defs/Codebase'}),
            'container': $Schema.fromMap({'\$ref': r'#/$defs/Container'}),
          },
          description: 'The source for the build.',
        )
        .value,
    dependencies: [Codebase.$schema, Container.$schema],
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

base class GoogleFirebaseAppHostingBuild {
  /// Creates a [GoogleFirebaseAppHostingBuild] from a JSON map.
  factory GoogleFirebaseAppHostingBuild.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirebaseAppHostingBuild._(this._json);

  GoogleFirebaseAppHostingBuild({
    Map<String, String>? annotations,
    required String backend,
    required String buildId,
    String? displayName,
    String? id,
    Map<String, String>? labels,
    required String location,
    String? project,
    required Source source,
    Timeouts? timeouts,
  }) {
    _json = {
      'annotations': ?annotations,
      'backend': backend,
      'build_id': buildId,
      'display_name': ?displayName,
      'id': ?id,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'source': source.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppHostingBuild].
  static const SchemanticType<GoogleFirebaseAppHostingBuild> $schema =
      _GoogleFirebaseAppHostingBuildTypeFactory();

  Map<String, String>? get annotations {
    return (_json['annotations'] as Map?)?.cast<String, String>();
  }

  set annotations(Map<String, String>? value) {
    if (value == null) {
      _json.remove('annotations');
    } else {
      _json['annotations'] = value;
    }
  }

  String get backend {
    return _json['backend'] as String;
  }

  set backend(String value) {
    _json['backend'] = value;
  }

  String get buildId {
    return _json['build_id'] as String;
  }

  set buildId(String value) {
    _json['build_id'] = value;
  }

  String? get displayName {
    return _json['display_name'] as String?;
  }

  set displayName(String? value) {
    if (value == null) {
      _json.remove('display_name');
    } else {
      _json['display_name'] = value;
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

  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
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

  Source get source {
    return Source.fromJson(_json['source'] as Map<String, dynamic>);
  }

  set source(Source value) {
    _json['source'] = value;
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

  /// Serializes this [GoogleFirebaseAppHostingBuild] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppHostingBuildTypeFactory
    extends SchemanticType<GoogleFirebaseAppHostingBuild> {
  const _GoogleFirebaseAppHostingBuildTypeFactory();

  @override
  GoogleFirebaseAppHostingBuild parse(Object? json) {
    return GoogleFirebaseAppHostingBuild._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppHostingBuild',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Unstructured key value map that may be set by external tools to\nstore and arbitrary metadata. They are not queryable and should be\npreserved when modifying objects.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \'effective_annotations\' for all of the annotations present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'backend': $Schema.string(
              description: 'The ID of the Backend that this Build applies to',
            ),
            'build_id': $Schema.string(
              description: 'The user-specified ID of the build being created.',
            ),
            'display_name': $Schema.string(
              description: 'Human-readable name. 63 character limit.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'Unstructured key value map that can be used to organize and categorize\nobjects.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description:
                  'The location of the Backend that this Build applies to',
            ),
            'project': $Schema.string(),
            'source': $Schema.fromMap({'\$ref': r'#/$defs/Source'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['backend', 'build_id', 'location', 'source'],
        )
        .value,
    dependencies: [Source.$schema, Timeouts.$schema],
  );
}

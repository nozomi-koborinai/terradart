// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_hosting_backend.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Codebase {
  /// Creates a [Codebase] from a JSON map.
  factory Codebase.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Codebase._(this._json);

  Codebase({required String repository, String? rootDirectory}) {
    _json = {'repository': repository, 'root_directory': ?rootDirectory};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Codebase].
  static const SchemanticType<Codebase> $schema = _CodebaseTypeFactory();

  String get repository {
    return _json['repository'] as String;
  }

  set repository(String value) {
    _json['repository'] = value;
  }

  String? get rootDirectory {
    return _json['root_directory'] as String?;
  }

  set rootDirectory(String? value) {
    if (value == null) {
      _json.remove('root_directory');
    } else {
      _json['root_directory'] = value;
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
            'repository': $Schema.string(
              description:
                  'The resource name for the Developer Connect\n[\'gitRepositoryLink\'](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)\nconnected to this backend, in the format:\n\nprojects/{project}/locations/{location}/connections/{connection}/gitRepositoryLinks/{repositoryLink}',
            ),
            'root_directory': $Schema.string(
              description:
                  'If \'repository\' is provided, the directory relative to the root of the\nrepository to use as the root for the deployed web app.',
            ),
          },
          required: ['repository'],
          description:
              'The connection to an external source repository to watch for event-driven\nupdates to the backend.',
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

base class GoogleFirebaseAppHostingBackend {
  /// Creates a [GoogleFirebaseAppHostingBackend] from a JSON map.
  factory GoogleFirebaseAppHostingBackend.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirebaseAppHostingBackend._(this._json);

  GoogleFirebaseAppHostingBackend({
    Map<String, String>? annotations,
    required String appId,
    required String backendId,
    String? displayName,
    String? environment,
    String? id,
    Map<String, String>? labels,
    required String location,
    String? project,
    required String serviceAccount,
    required String servingLocality,
    Codebase? codebase,
    Timeouts? timeouts,
  }) {
    _json = {
      'annotations': ?annotations,
      'app_id': appId,
      'backend_id': backendId,
      'display_name': ?displayName,
      'environment': ?environment,
      'id': ?id,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'service_account': serviceAccount,
      'serving_locality': servingLocality,
      'codebase': ?codebase?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppHostingBackend].
  static const SchemanticType<GoogleFirebaseAppHostingBackend> $schema =
      _GoogleFirebaseAppHostingBackendTypeFactory();

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

  String get appId {
    return _json['app_id'] as String;
  }

  set appId(String value) {
    _json['app_id'] = value;
  }

  String get backendId {
    return _json['backend_id'] as String;
  }

  set backendId(String value) {
    _json['backend_id'] = value;
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

  String? get environment {
    return _json['environment'] as String?;
  }

  set environment(String? value) {
    if (value == null) {
      _json.remove('environment');
    } else {
      _json['environment'] = value;
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

  String get serviceAccount {
    return _json['service_account'] as String;
  }

  set serviceAccount(String value) {
    _json['service_account'] = value;
  }

  String get servingLocality {
    return _json['serving_locality'] as String;
  }

  set servingLocality(String value) {
    _json['serving_locality'] = value;
  }

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

  /// Serializes this [GoogleFirebaseAppHostingBackend] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppHostingBackendTypeFactory
    extends SchemanticType<GoogleFirebaseAppHostingBackend> {
  const _GoogleFirebaseAppHostingBackendTypeFactory();

  @override
  GoogleFirebaseAppHostingBackend parse(Object? json) {
    return GoogleFirebaseAppHostingBackend._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppHostingBackend',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Unstructured key value map that may be set by external tools to\nstore and arbitrary metadata. They are not queryable and should be\npreserved when modifying objects.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \'effective_annotations\' for all of the annotations present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'app_id': $Schema.string(
              description:
                  'The [ID of a Web\nApp](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)\nassociated with the backend.',
            ),
            'backend_id': $Schema.string(
              description:
                  'Id of the backend. Also used as the service ID for Cloud Run, and as part\nof the default domain name.',
            ),
            'display_name': $Schema.string(
              description: 'Human-readable name. 63 character limit.',
            ),
            'environment': $Schema.string(
              description:
                  'The environment name of the backend, used to load environment variables\nfrom environment specific configuration.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'Unstructured key value map that can be used to organize and categorize\nobjects.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description:
                  'The canonical IDs of a Google Cloud location such as "us-east1".',
            ),
            'project': $Schema.string(),
            'service_account': $Schema.string(
              description:
                  'The name of the service account used for Cloud Build and Cloud Run.\nShould have the role roles/firebaseapphosting.computeRunner\nor equivalent permissions.',
            ),
            'serving_locality': $Schema.string(
              description:
                  'Immutable. Specifies how App Hosting will serve the content for this backend. It will\neither be contained to a single region (REGIONAL_STRICT) or allowed to use\nApp Hosting\'s global-replicated serving infrastructure (GLOBAL_ACCESS). Possible values: ["REGIONAL_STRICT", "GLOBAL_ACCESS"]',
            ),
            'codebase': $Schema.fromMap({'\$ref': r'#/$defs/Codebase'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: [
            'app_id',
            'backend_id',
            'location',
            'service_account',
            'serving_locality',
          ],
        )
        .value,
    dependencies: [Codebase.$schema, Timeouts.$schema],
  );
}

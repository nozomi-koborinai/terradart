// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_data_connect_service.schema.dart';

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

base class GoogleFirebaseDataConnectService {
  /// Creates a [GoogleFirebaseDataConnectService] from a JSON map.
  factory GoogleFirebaseDataConnectService.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseDataConnectService._(this._json);

  GoogleFirebaseDataConnectService({
    Map<String, String>? annotations,
    String? deletionPolicy,
    String? displayName,
    String? id,
    Map<String, String>? labels,
    required String location,
    String? project,
    required String serviceId,
    Timeouts? timeouts,
  }) {
    _json = {
      'annotations': ?annotations,
      'deletion_policy': ?deletionPolicy,
      'display_name': ?displayName,
      'id': ?id,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'service_id': serviceId,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseDataConnectService].
  static const SchemanticType<GoogleFirebaseDataConnectService> $schema =
      _GoogleFirebaseDataConnectServiceTypeFactory();

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

  String get serviceId {
    return _json['service_id'] as String;
  }

  set serviceId(String value) {
    _json['service_id'] = value;
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

  /// Serializes this [GoogleFirebaseDataConnectService] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseDataConnectServiceTypeFactory
    extends SchemanticType<GoogleFirebaseDataConnectService> {
  const _GoogleFirebaseDataConnectServiceTypeFactory();

  @override
  GoogleFirebaseDataConnectService parse(Object? json) {
    return GoogleFirebaseDataConnectService._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseDataConnectService',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Optional. Stores small amounts of arbitrary data.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \'effective_annotations\' for all of the annotations present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'deletion_policy': $Schema.string(
              description:
                  'The deletion policy for the database. Setting the field to FORCE allows the\nService to be deleted even if a Schema or Connector is present. By default,\nthe Service deletion will only succeed when no Schema or Connectors are\npresent.\nPossible values: DEFAULT, FORCE',
            ),
            'display_name': $Schema.string(
              description:
                  'Optional. Mutable human-readable name. 63 character limit.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'Optional. Labels as key value pairs.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description:
                  'The region in which the service resides, e.g. "us-central1" or "asia-east1".',
            ),
            'project': $Schema.string(),
            'service_id': $Schema.string(
              description:
                  'Required. The ID to use for the service, which will become the final component of the\nservice\'s resource name.',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['location', 'service_id'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

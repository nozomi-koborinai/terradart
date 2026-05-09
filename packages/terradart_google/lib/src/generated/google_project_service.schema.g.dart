// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_project_service.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? read, String? update}) {
    _json = {
      'create': ?create,
      'delete': ?delete,
      'read': ?read,
      'update': ?update,
    };
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

  String? get read {
    return _json['read'] as String?;
  }

  set read(String? value) {
    if (value == null) {
      _json.remove('read');
    } else {
      _json['read'] = value;
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
            'read': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleProjectService {
  /// Creates a [GoogleProjectService] from a JSON map.
  factory GoogleProjectService.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleProjectService._(this._json);

  GoogleProjectService({
    bool? disableDependentServices,
    bool? disableOnDestroy,
    String? id,
    String? project,
    required String service,
    Timeouts? timeouts,
  }) {
    _json = {
      'disable_dependent_services': ?disableDependentServices,
      'disable_on_destroy': ?disableOnDestroy,
      'id': ?id,
      'project': ?project,
      'service': service,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleProjectService].
  static const SchemanticType<GoogleProjectService> $schema =
      _GoogleProjectServiceTypeFactory();

  bool? get disableDependentServices {
    return _json['disable_dependent_services'] as bool?;
  }

  set disableDependentServices(bool? value) {
    if (value == null) {
      _json.remove('disable_dependent_services');
    } else {
      _json['disable_dependent_services'] = value;
    }
  }

  bool? get disableOnDestroy {
    return _json['disable_on_destroy'] as bool?;
  }

  set disableOnDestroy(bool? value) {
    if (value == null) {
      _json.remove('disable_on_destroy');
    } else {
      _json['disable_on_destroy'] = value;
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

  String get service {
    return _json['service'] as String;
  }

  set service(String value) {
    _json['service'] = value;
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

  /// Serializes this [GoogleProjectService] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleProjectServiceTypeFactory
    extends SchemanticType<GoogleProjectService> {
  const _GoogleProjectServiceTypeFactory();

  @override
  GoogleProjectService parse(Object? json) {
    return GoogleProjectService._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleProjectService',
    definition: $Schema
        .object(
          properties: {
            'disable_dependent_services': $Schema.boolean(),
            'disable_on_destroy': $Schema.boolean(),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'service': $Schema.string(),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['service'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

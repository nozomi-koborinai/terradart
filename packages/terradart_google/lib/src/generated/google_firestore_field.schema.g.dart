// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firestore_field.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Indexes {
  /// Creates a [Indexes] from a JSON map.
  factory Indexes.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Indexes._(this._json);

  Indexes({String? arrayConfig, String? order, String? queryScope}) {
    _json = {
      'array_config': ?arrayConfig,
      'order': ?order,
      'query_scope': ?queryScope,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Indexes].
  static const SchemanticType<Indexes> $schema = _IndexesTypeFactory();

  String? get arrayConfig {
    return _json['array_config'] as String?;
  }

  set arrayConfig(String? value) {
    if (value == null) {
      _json.remove('array_config');
    } else {
      _json['array_config'] = value;
    }
  }

  String? get order {
    return _json['order'] as String?;
  }

  set order(String? value) {
    if (value == null) {
      _json.remove('order');
    } else {
      _json['order'] = value;
    }
  }

  String? get queryScope {
    return _json['query_scope'] as String?;
  }

  set queryScope(String? value) {
    if (value == null) {
      _json.remove('query_scope');
    } else {
      _json['query_scope'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Indexes] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _IndexesTypeFactory extends SchemanticType<Indexes> {
  const _IndexesTypeFactory();

  @override
  Indexes parse(Object? json) {
    return Indexes._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Indexes',
    definition: $Schema
        .object(
          properties: {
            'array_config': $Schema.string(
              description:
                  'Indicates that this field supports operations on arrayValues. Only one of \'order\' and \'arrayConfig\' can\nbe specified. Possible values: ["CONTAINS"]',
            ),
            'order': $Schema.string(
              description:
                  'Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=, !=.\nOnly one of \'order\' and \'arrayConfig\' can be specified. Possible values: ["ASCENDING", "DESCENDING"]',
            ),
            'query_scope': $Schema.string(
              description:
                  'The scope at which a query is run. Collection scoped queries require you specify\nthe collection at query time. Collection group scope allows queries across all\ncollections with the same id. Default value: "COLLECTION" Possible values: ["COLLECTION", "COLLECTION_GROUP"]',
            ),
          },
          description:
              'The indexes to configure on the field. Order or array contains must be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class IndexConfig {
  /// Creates a [IndexConfig] from a JSON map.
  factory IndexConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  IndexConfig._(this._json);

  IndexConfig({List<Indexes>? indexes}) {
    _json = {'indexes': ?indexes?.map((e) => e.toJson()).toList()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [IndexConfig].
  static const SchemanticType<IndexConfig> $schema = _IndexConfigTypeFactory();

  List<Indexes>? get indexes {
    return (_json['indexes'] as List?)
        ?.map((e) => Indexes.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set indexes(List<Indexes>? value) {
    if (value == null) {
      _json.remove('indexes');
    } else {
      _json['indexes'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [IndexConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _IndexConfigTypeFactory extends SchemanticType<IndexConfig> {
  const _IndexConfigTypeFactory();

  @override
  IndexConfig parse(Object? json) {
    return IndexConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'IndexConfig',
    definition: $Schema
        .object(
          properties: {
            'indexes': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Indexes'}),
            ),
          },
          description:
              'The single field index configuration for this field.\nCreating an index configuration for this field will override any inherited configuration with the\nindexes specified. Configuring the index configuration with an empty block disables all indexes on\nthe field.',
        )
        .value,
    dependencies: [Indexes.$schema],
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

base class TtlConfig {
  /// Creates a [TtlConfig] from a JSON map.
  factory TtlConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  TtlConfig._(this._json);

  TtlConfig() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TtlConfig].
  static const SchemanticType<TtlConfig> $schema = _TtlConfigTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TtlConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TtlConfigTypeFactory extends SchemanticType<TtlConfig> {
  const _TtlConfigTypeFactory();

  @override
  TtlConfig parse(Object? json) {
    return TtlConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TtlConfig',
    definition: $Schema
        .object(
          properties: {},
          description:
              'The TTL configuration for this Field. If set to an empty block (i.e. \'ttl_config {}\'), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleFirestoreField {
  /// Creates a [GoogleFirestoreField] from a JSON map.
  factory GoogleFirestoreField.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirestoreField._(this._json);

  GoogleFirestoreField({
    required String collection,
    String? database,
    required String field,
    String? id,
    String? project,
    IndexConfig? indexConfig,
    Timeouts? timeouts,
    TtlConfig? ttlConfig,
  }) {
    _json = {
      'collection': collection,
      'database': ?database,
      'field': field,
      'id': ?id,
      'project': ?project,
      'index_config': ?indexConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
      'ttl_config': ?ttlConfig?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirestoreField].
  static const SchemanticType<GoogleFirestoreField> $schema =
      _GoogleFirestoreFieldTypeFactory();

  String get collection {
    return _json['collection'] as String;
  }

  set collection(String value) {
    _json['collection'] = value;
  }

  String? get database {
    return _json['database'] as String?;
  }

  set database(String? value) {
    if (value == null) {
      _json.remove('database');
    } else {
      _json['database'] = value;
    }
  }

  String get field {
    return _json['field'] as String;
  }

  set field(String value) {
    _json['field'] = value;
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

  IndexConfig? get indexConfig {
    return _json['index_config'] == null
        ? null
        : IndexConfig.fromJson(_json['index_config'] as Map<String, dynamic>);
  }

  set indexConfig(IndexConfig? value) {
    if (value == null) {
      _json.remove('index_config');
    } else {
      _json['index_config'] = value;
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

  TtlConfig? get ttlConfig {
    return _json['ttl_config'] == null
        ? null
        : TtlConfig.fromJson(_json['ttl_config'] as Map<String, dynamic>);
  }

  set ttlConfig(TtlConfig? value) {
    if (value == null) {
      _json.remove('ttl_config');
    } else {
      _json['ttl_config'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleFirestoreField] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirestoreFieldTypeFactory
    extends SchemanticType<GoogleFirestoreField> {
  const _GoogleFirestoreFieldTypeFactory();

  @override
  GoogleFirestoreField parse(Object? json) {
    return GoogleFirestoreField._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirestoreField',
    definition: $Schema
        .object(
          properties: {
            'collection': $Schema.string(
              description: 'The id of the collection group to configure.',
            ),
            'database': $Schema.string(
              description:
                  'The Firestore database id. Defaults to \'"(default)"\'.',
            ),
            'field': $Schema.string(
              description: 'The id of the field to configure.',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'index_config': $Schema.fromMap({'\$ref': r'#/$defs/IndexConfig'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'ttl_config': $Schema.fromMap({'\$ref': r'#/$defs/TtlConfig'}),
          },
          required: ['collection', 'field'],
        )
        .value,
    dependencies: [IndexConfig.$schema, Timeouts.$schema, TtlConfig.$schema],
  );
}

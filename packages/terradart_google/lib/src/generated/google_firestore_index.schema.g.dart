// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firestore_index.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class GeoSpec {
  /// Creates a [GeoSpec] from a JSON map.
  factory GeoSpec.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  GeoSpec._(this._json);

  GeoSpec({required bool geoJsonIndexingDisabled}) {
    _json = {'geo_json_indexing_disabled': geoJsonIndexingDisabled};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GeoSpec].
  static const SchemanticType<GeoSpec> $schema = _GeoSpecTypeFactory();

  bool get geoJsonIndexingDisabled {
    return _json['geo_json_indexing_disabled'] as bool;
  }

  set geoJsonIndexingDisabled(bool value) {
    _json['geo_json_indexing_disabled'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GeoSpec] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GeoSpecTypeFactory extends SchemanticType<GeoSpec> {
  const _GeoSpecTypeFactory();

  @override
  GeoSpec parse(Object? json) {
    return GeoSpec._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GeoSpec',
    definition: $Schema
        .object(
          properties: {
            'geo_json_indexing_disabled': $Schema.boolean(
              description:
                  'If true, disables GeoJSON indexing for the field. By default, GeoJSON points are indexed.\nFirestore GeoPoints are indexed regardless of the value of this field.',
            ),
          },
          required: ['geo_json_indexing_disabled'],
          description:
              'The specification for building a geo search index for a field.',
        )
        .value,
    dependencies: [],
  );
}

base class IndexSpecs {
  /// Creates a [IndexSpecs] from a JSON map.
  factory IndexSpecs.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  IndexSpecs._(this._json);

  IndexSpecs({String? indexType, String? matchType}) {
    _json = {'index_type': ?indexType, 'match_type': ?matchType};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [IndexSpecs].
  static const SchemanticType<IndexSpecs> $schema = _IndexSpecsTypeFactory();

  String? get indexType {
    return _json['index_type'] as String?;
  }

  set indexType(String? value) {
    if (value == null) {
      _json.remove('index_type');
    } else {
      _json['index_type'] = value;
    }
  }

  String? get matchType {
    return _json['match_type'] as String?;
  }

  set matchType(String? value) {
    if (value == null) {
      _json.remove('match_type');
    } else {
      _json['match_type'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [IndexSpecs] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _IndexSpecsTypeFactory extends SchemanticType<IndexSpecs> {
  const _IndexSpecsTypeFactory();

  @override
  IndexSpecs parse(Object? json) {
    return IndexSpecs._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'IndexSpecs',
    definition: $Schema
        .object(
          properties: {
            'index_type': $Schema.string(
              description: 'Ways to index the text field value.',
            ),
            'match_type': $Schema.string(
              description: 'How to match the text field value.',
            ),
          },
          description:
              'Specifications for how the field should be indexed. Repeated so that the field can be indexed in multiple ways.',
        )
        .value,
    dependencies: [],
  );
}

base class TextSpec {
  /// Creates a [TextSpec] from a JSON map.
  factory TextSpec.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  TextSpec._(this._json);

  TextSpec({required List<IndexSpecs> indexSpecs}) {
    _json = {'index_specs': indexSpecs.map((e) => e.toJson()).toList()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TextSpec].
  static const SchemanticType<TextSpec> $schema = _TextSpecTypeFactory();

  List<IndexSpecs> get indexSpecs {
    return (_json['index_specs'] as List)
        .map((e) => IndexSpecs.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set indexSpecs(List<IndexSpecs> value) {
    _json['index_specs'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TextSpec] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TextSpecTypeFactory extends SchemanticType<TextSpec> {
  const _TextSpecTypeFactory();

  @override
  TextSpec parse(Object? json) {
    return TextSpec._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TextSpec',
    definition: $Schema
        .object(
          properties: {
            'index_specs': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/IndexSpecs'}),
            ),
          },
          required: ['index_specs'],
          description:
              'The specification for building a text search index for a field.',
        )
        .value,
    dependencies: [IndexSpecs.$schema],
  );
}

base class SearchConfig {
  /// Creates a [SearchConfig] from a JSON map.
  factory SearchConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SearchConfig._(this._json);

  SearchConfig({GeoSpec? geoSpec, TextSpec? textSpec}) {
    _json = {'geo_spec': ?geoSpec?.toJson(), 'text_spec': ?textSpec?.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SearchConfig].
  static const SchemanticType<SearchConfig> $schema =
      _SearchConfigTypeFactory();

  GeoSpec? get geoSpec {
    return _json['geo_spec'] == null
        ? null
        : GeoSpec.fromJson(_json['geo_spec'] as Map<String, dynamic>);
  }

  set geoSpec(GeoSpec? value) {
    if (value == null) {
      _json.remove('geo_spec');
    } else {
      _json['geo_spec'] = value;
    }
  }

  TextSpec? get textSpec {
    return _json['text_spec'] == null
        ? null
        : TextSpec.fromJson(_json['text_spec'] as Map<String, dynamic>);
  }

  set textSpec(TextSpec? value) {
    if (value == null) {
      _json.remove('text_spec');
    } else {
      _json['text_spec'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SearchConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SearchConfigTypeFactory extends SchemanticType<SearchConfig> {
  const _SearchConfigTypeFactory();

  @override
  SearchConfig parse(Object? json) {
    return SearchConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SearchConfig',
    definition: $Schema
        .object(
          properties: {
            'geo_spec': $Schema.fromMap({'\$ref': r'#/$defs/GeoSpec'}),
            'text_spec': $Schema.fromMap({'\$ref': r'#/$defs/TextSpec'}),
          },
          description:
              'Indicates that this field supports text or geo-search operations. Only one of \'order\', \'arrayConfig\', \'searchConfig\' and\n\'vectorConfig\' can be specified.',
        )
        .value,
    dependencies: [GeoSpec.$schema, TextSpec.$schema],
  );
}

base class Flat {
  /// Creates a [Flat] from a JSON map.
  factory Flat.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Flat._(this._json);

  Flat() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Flat].
  static const SchemanticType<Flat> $schema = _FlatTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Flat] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _FlatTypeFactory extends SchemanticType<Flat> {
  const _FlatTypeFactory();

  @override
  Flat parse(Object? json) {
    return Flat._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Flat',
    definition: $Schema
        .object(
          properties: {},
          description: 'Indicates the vector index is a flat index.',
        )
        .value,
    dependencies: [],
  );
}

base class VectorConfig {
  /// Creates a [VectorConfig] from a JSON map.
  factory VectorConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  VectorConfig._(this._json);

  VectorConfig({num? dimension, Flat? flat}) {
    _json = {'dimension': ?dimension, 'flat': ?flat?.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [VectorConfig].
  static const SchemanticType<VectorConfig> $schema =
      _VectorConfigTypeFactory();

  num? get dimension {
    return _json['dimension'] as num?;
  }

  set dimension(num? value) {
    if (value == null) {
      _json.remove('dimension');
    } else {
      _json['dimension'] = value;
    }
  }

  Flat? get flat {
    return _json['flat'] == null
        ? null
        : Flat.fromJson(_json['flat'] as Map<String, dynamic>);
  }

  set flat(Flat? value) {
    if (value == null) {
      _json.remove('flat');
    } else {
      _json['flat'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [VectorConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VectorConfigTypeFactory extends SchemanticType<VectorConfig> {
  const _VectorConfigTypeFactory();

  @override
  VectorConfig parse(Object? json) {
    return VectorConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'VectorConfig',
    definition: $Schema
        .object(
          properties: {
            'dimension': $Schema.number(
              description:
                  'The resulting index will only include vectors of this dimension, and can be used for vector search\nwith the same dimension.',
            ),
            'flat': $Schema.fromMap({'\$ref': r'#/$defs/Flat'}),
          },
          description:
              'Indicates that this field supports vector search operations. Only one of \'order\', \'arrayConfig\', \'searchConfig\' and\n\'vectorConfig\' can be specified. Vector Fields should come after the field path \'__name__\'.',
        )
        .value,
    dependencies: [Flat.$schema],
  );
}

base class Fields {
  /// Creates a [Fields] from a JSON map.
  factory Fields.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Fields._(this._json);

  Fields({
    String? arrayConfig,
    String? fieldPath,
    String? order,
    SearchConfig? searchConfig,
    VectorConfig? vectorConfig,
  }) {
    _json = {
      'array_config': ?arrayConfig,
      'field_path': ?fieldPath,
      'order': ?order,
      'search_config': ?searchConfig?.toJson(),
      'vector_config': ?vectorConfig?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Fields].
  static const SchemanticType<Fields> $schema = _FieldsTypeFactory();

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

  String? get fieldPath {
    return _json['field_path'] as String?;
  }

  set fieldPath(String? value) {
    if (value == null) {
      _json.remove('field_path');
    } else {
      _json['field_path'] = value;
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

  SearchConfig? get searchConfig {
    return _json['search_config'] == null
        ? null
        : SearchConfig.fromJson(_json['search_config'] as Map<String, dynamic>);
  }

  set searchConfig(SearchConfig? value) {
    if (value == null) {
      _json.remove('search_config');
    } else {
      _json['search_config'] = value;
    }
  }

  VectorConfig? get vectorConfig {
    return _json['vector_config'] == null
        ? null
        : VectorConfig.fromJson(_json['vector_config'] as Map<String, dynamic>);
  }

  set vectorConfig(VectorConfig? value) {
    if (value == null) {
      _json.remove('vector_config');
    } else {
      _json['vector_config'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Fields] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _FieldsTypeFactory extends SchemanticType<Fields> {
  const _FieldsTypeFactory();

  @override
  Fields parse(Object? json) {
    return Fields._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Fields',
    definition: $Schema
        .object(
          properties: {
            'array_config': $Schema.string(
              description:
                  'Indicates that this field supports operations on arrayValues. Only one of \'order\', \'arrayConfig\', \'searchConfig\' and\n\'vectorConfig\' can be specified. Possible values: ["CONTAINS"]',
            ),
            'field_path': $Schema.string(description: 'Name of the field.'),
            'order': $Schema.string(
              description:
                  'Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.\nOnly one of \'order\', \'arrayConfig\', \'searchConfig\' and \'vectorConfig\' can be specified. Possible values: ["ASCENDING", "DESCENDING"]',
            ),
            'search_config': $Schema.fromMap({
              '\$ref': r'#/$defs/SearchConfig',
            }),
            'vector_config': $Schema.fromMap({
              '\$ref': r'#/$defs/VectorConfig',
            }),
          },
          description:
              'The fields supported by this index. The last non-stored field entry is\nalways for the field path \'__name__\'. If, on creation, \'__name__\' was not\nspecified as the last field, it will be added automatically with the same\ndirection as that of the last field defined. If the final field in a\ncomposite index is not directional, the \'__name__\' will be ordered\n\'"ASCENDING"\' (unless explicitly specified otherwise).',
        )
        .value,
    dependencies: [SearchConfig.$schema, VectorConfig.$schema],
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

base class GoogleFirestoreIndex {
  /// Creates a [GoogleFirestoreIndex] from a JSON map.
  factory GoogleFirestoreIndex.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirestoreIndex._(this._json);

  GoogleFirestoreIndex({
    String? apiScope,
    required String collection,
    String? database,
    String? deletionPolicy,
    String? density,
    String? id,
    bool? multikey,
    String? project,
    String? queryScope,
    bool? skipWait,
    bool? unique,
    required List<Fields> fields,
    Timeouts? timeouts,
  }) {
    _json = {
      'api_scope': ?apiScope,
      'collection': collection,
      'database': ?database,
      'deletion_policy': ?deletionPolicy,
      'density': ?density,
      'id': ?id,
      'multikey': ?multikey,
      'project': ?project,
      'query_scope': ?queryScope,
      'skip_wait': ?skipWait,
      'unique': ?unique,
      'fields': fields.map((e) => e.toJson()).toList(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirestoreIndex].
  static const SchemanticType<GoogleFirestoreIndex> $schema =
      _GoogleFirestoreIndexTypeFactory();

  String? get apiScope {
    return _json['api_scope'] as String?;
  }

  set apiScope(String? value) {
    if (value == null) {
      _json.remove('api_scope');
    } else {
      _json['api_scope'] = value;
    }
  }

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

  /// Optional + Computed. Inferred from provider when null.
  String? get density {
    return _json['density'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set density(String? value) {
    if (value == null) {
      _json.remove('density');
    } else {
      _json['density'] = value;
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

  bool? get multikey {
    return _json['multikey'] as bool?;
  }

  set multikey(bool? value) {
    if (value == null) {
      _json.remove('multikey');
    } else {
      _json['multikey'] = value;
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

  bool? get skipWait {
    return _json['skip_wait'] as bool?;
  }

  set skipWait(bool? value) {
    if (value == null) {
      _json.remove('skip_wait');
    } else {
      _json['skip_wait'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get unique {
    return _json['unique'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set unique(bool? value) {
    if (value == null) {
      _json.remove('unique');
    } else {
      _json['unique'] = value;
    }
  }

  List<Fields> get fields {
    return (_json['fields'] as List)
        .map((e) => Fields.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set fields(List<Fields> value) {
    _json['fields'] = value.toList();
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

  /// Serializes this [GoogleFirestoreIndex] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirestoreIndexTypeFactory
    extends SchemanticType<GoogleFirestoreIndex> {
  const _GoogleFirestoreIndexTypeFactory();

  @override
  GoogleFirestoreIndex parse(Object? json) {
    return GoogleFirestoreIndex._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirestoreIndex',
    definition: $Schema
        .object(
          properties: {
            'api_scope': $Schema.string(
              description:
                  'The API scope at which a query is run. Default value: "ANY_API" Possible values: ["ANY_API", "DATASTORE_MODE_API", "MONGODB_COMPATIBLE_API"]',
            ),
            'collection': $Schema.string(
              description: 'The collection being indexed.',
            ),
            'database': $Schema.string(
              description:
                  'The Firestore database id. Defaults to \'"(default)"\'.',
            ),
            'deletion_policy': $Schema.string(
              description:
                  'Deletion behavior for this index.\nIf the deletion policy is \'PREVENT\', the index cannot be deleted and a terraform destroy will fail.\nIf the deletion policy is \'DELETE\', the index will both be removed from Terraform state and deleted from Google Cloud upon destruction.\nThe default value is \'DELETE\'. Default value: "DELETE" Possible values: ["DELETE", "PREVENT"]',
            ),
            'density': $Schema.string(
              description:
                  'The density configuration for this index. Possible values: ["SPARSE_ALL", "SPARSE_ANY", "DENSE"]',
            ),
            'id': $Schema.string(),
            'multikey': $Schema.boolean(
              description:
                  'Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.',
            ),
            'project': $Schema.string(),
            'query_scope': $Schema.string(
              description:
                  'The scope at which a query is run. Default value: "COLLECTION" Possible values: ["COLLECTION", "COLLECTION_GROUP", "COLLECTION_RECURSIVE"]',
            ),
            'skip_wait': $Schema.boolean(
              description:
                  'Whether to skip waiting for the index to be created.',
            ),
            'unique': $Schema.boolean(
              description:
                  'Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.',
            ),
            'fields': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Fields'}),
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['collection', 'fields'],
        )
        .value,
    dependencies: [Fields.$schema, Timeouts.$schema],
  );
}

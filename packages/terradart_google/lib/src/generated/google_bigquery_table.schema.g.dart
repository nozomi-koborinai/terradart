// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_bigquery_table.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class BiglakeConfiguration {
  /// Creates a [BiglakeConfiguration] from a JSON map.
  factory BiglakeConfiguration.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BiglakeConfiguration._(this._json);

  BiglakeConfiguration({
    required String connectionId,
    required String fileFormat,
    required String storageUri,
    required String tableFormat,
  }) {
    _json = {
      'connection_id': connectionId,
      'file_format': fileFormat,
      'storage_uri': storageUri,
      'table_format': tableFormat,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BiglakeConfiguration].
  static const SchemanticType<BiglakeConfiguration> $schema =
      _BiglakeConfigurationTypeFactory();

  String get connectionId {
    return _json['connection_id'] as String;
  }

  set connectionId(String value) {
    _json['connection_id'] = value;
  }

  String get fileFormat {
    return _json['file_format'] as String;
  }

  set fileFormat(String value) {
    _json['file_format'] = value;
  }

  String get storageUri {
    return _json['storage_uri'] as String;
  }

  set storageUri(String value) {
    _json['storage_uri'] = value;
  }

  String get tableFormat {
    return _json['table_format'] as String;
  }

  set tableFormat(String value) {
    _json['table_format'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BiglakeConfiguration] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BiglakeConfigurationTypeFactory
    extends SchemanticType<BiglakeConfiguration> {
  const _BiglakeConfigurationTypeFactory();

  @override
  BiglakeConfiguration parse(Object? json) {
    return BiglakeConfiguration._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BiglakeConfiguration',
    definition: $Schema
        .object(
          properties: {
            'connection_id': $Schema.string(
              description:
                  'The connection specifying the credentials to be used to read and write to external storage, such as Cloud Storage. The connection_id can have the form "&lt;project\_id&gt;.&lt;location\_id&gt;.&lt;connection\_id&gt;" or "projects/&lt;project\_id&gt;/locations/&lt;location\_id&gt;/connections/&lt;connection\_id&gt;".',
            ),
            'file_format': $Schema.string(
              description: 'The file format the data is stored in.',
            ),
            'storage_uri': $Schema.string(
              description:
                  'The fully qualified location prefix of the external folder where table data is stored. The \'*\' wildcard character is not allowed. The URI should be in the format "gs://bucket/path_to_table/"',
            ),
            'table_format': $Schema.string(
              description:
                  'The table format the metadata only snapshots are stored in.',
            ),
          },
          required: [
            'connection_id',
            'file_format',
            'storage_uri',
            'table_format',
          ],
          description:
              'Specifies the configuration of a BigLake managed table.',
        )
        .value,
    dependencies: [],
  );
}

base class EncryptionConfiguration {
  /// Creates a [EncryptionConfiguration] from a JSON map.
  factory EncryptionConfiguration.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  EncryptionConfiguration._(this._json);

  EncryptionConfiguration({required String kmsKeyName}) {
    _json = {'kms_key_name': kmsKeyName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [EncryptionConfiguration].
  static const SchemanticType<EncryptionConfiguration> $schema =
      _EncryptionConfigurationTypeFactory();

  String get kmsKeyName {
    return _json['kms_key_name'] as String;
  }

  set kmsKeyName(String value) {
    _json['kms_key_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [EncryptionConfiguration] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EncryptionConfigurationTypeFactory
    extends SchemanticType<EncryptionConfiguration> {
  const _EncryptionConfigurationTypeFactory();

  @override
  EncryptionConfiguration parse(Object? json) {
    return EncryptionConfiguration._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'EncryptionConfiguration',
    definition: $Schema
        .object(
          properties: {
            'kms_key_name': $Schema.string(
              description:
                  'The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the google_bigquery_default_service_account datasource and the google_kms_crypto_key_iam_binding resource.',
            ),
          },
          required: ['kms_key_name'],
          description:
              'Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user.',
        )
        .value,
    dependencies: [],
  );
}

base class SerdeInfo {
  /// Creates a [SerdeInfo] from a JSON map.
  factory SerdeInfo.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  SerdeInfo._(this._json);

  SerdeInfo({
    String? name,
    Map<String, String>? parameters,
    required String serializationLibrary,
  }) {
    _json = {
      'name': ?name,
      'parameters': ?parameters,
      'serialization_library': serializationLibrary,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SerdeInfo].
  static const SchemanticType<SerdeInfo> $schema = _SerdeInfoTypeFactory();

  String? get name {
    return _json['name'] as String?;
  }

  set name(String? value) {
    if (value == null) {
      _json.remove('name');
    } else {
      _json['name'] = value;
    }
  }

  Map<String, String>? get parameters {
    return (_json['parameters'] as Map?)?.cast<String, String>();
  }

  set parameters(Map<String, String>? value) {
    if (value == null) {
      _json.remove('parameters');
    } else {
      _json['parameters'] = value;
    }
  }

  String get serializationLibrary {
    return _json['serialization_library'] as String;
  }

  set serializationLibrary(String value) {
    _json['serialization_library'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SerdeInfo] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SerdeInfoTypeFactory extends SchemanticType<SerdeInfo> {
  const _SerdeInfoTypeFactory();

  @override
  SerdeInfo parse(Object? json) {
    return SerdeInfo._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SerdeInfo',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(
              description:
                  'Name of the SerDe. The maximum length is 256 characters.',
            ),
            'parameters': $Schema.object(
              description:
                  'Key-value pairs that define the initialization parameters for the serialization library. Maximum size 10 Kib.',
              additionalProperties: $Schema.string(),
            ),
            'serialization_library': $Schema.string(
              description:
                  'Specifies a fully-qualified class name of the serialization library that is responsible for the translation of data between table representation and the underlying low-level input and output format structures. The maximum length is 256 characters.',
            ),
          },
          required: ['serialization_library'],
          description: 'Serializer and deserializer information.',
        )
        .value,
    dependencies: [],
  );
}

base class StorageDescriptor {
  /// Creates a [StorageDescriptor] from a JSON map.
  factory StorageDescriptor.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  StorageDescriptor._(this._json);

  StorageDescriptor({
    String? inputFormat,
    String? locationUri,
    String? outputFormat,
    SerdeInfo? serdeInfo,
  }) {
    _json = {
      'input_format': ?inputFormat,
      'location_uri': ?locationUri,
      'output_format': ?outputFormat,
      'serde_info': ?serdeInfo?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [StorageDescriptor].
  static const SchemanticType<StorageDescriptor> $schema =
      _StorageDescriptorTypeFactory();

  String? get inputFormat {
    return _json['input_format'] as String?;
  }

  set inputFormat(String? value) {
    if (value == null) {
      _json.remove('input_format');
    } else {
      _json['input_format'] = value;
    }
  }

  String? get locationUri {
    return _json['location_uri'] as String?;
  }

  set locationUri(String? value) {
    if (value == null) {
      _json.remove('location_uri');
    } else {
      _json['location_uri'] = value;
    }
  }

  String? get outputFormat {
    return _json['output_format'] as String?;
  }

  set outputFormat(String? value) {
    if (value == null) {
      _json.remove('output_format');
    } else {
      _json['output_format'] = value;
    }
  }

  SerdeInfo? get serdeInfo {
    return _json['serde_info'] == null
        ? null
        : SerdeInfo.fromJson(_json['serde_info'] as Map<String, dynamic>);
  }

  set serdeInfo(SerdeInfo? value) {
    if (value == null) {
      _json.remove('serde_info');
    } else {
      _json['serde_info'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [StorageDescriptor] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _StorageDescriptorTypeFactory
    extends SchemanticType<StorageDescriptor> {
  const _StorageDescriptorTypeFactory();

  @override
  StorageDescriptor parse(Object? json) {
    return StorageDescriptor._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'StorageDescriptor',
    definition: $Schema
        .object(
          properties: {
            'input_format': $Schema.string(
              description:
                  'Specifies the fully qualified class name of the InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The maximum length is 128 characters.',
            ),
            'location_uri': $Schema.string(
              description:
                  'The physical location of the table (e.g. \'gs://spark-dataproc-data/pangea-data/case_sensitive/\' or \'gs://spark-dataproc-data/pangea-data/*\'). The maximum length is 2056 bytes.',
            ),
            'output_format': $Schema.string(
              description:
                  'Specifies the fully qualified class name of the OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The maximum length is 128 characters.',
            ),
            'serde_info': $Schema.fromMap({'\$ref': r'#/$defs/SerdeInfo'}),
          },
          description:
              'A storage descriptor containing information about the physical storage of this table.',
        )
        .value,
    dependencies: [SerdeInfo.$schema],
  );
}

base class ExternalCatalogTableOptions {
  /// Creates a [ExternalCatalogTableOptions] from a JSON map.
  factory ExternalCatalogTableOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExternalCatalogTableOptions._(this._json);

  ExternalCatalogTableOptions({
    String? connectionId,
    Map<String, String>? parameters,
    StorageDescriptor? storageDescriptor,
  }) {
    _json = {
      'connection_id': ?connectionId,
      'parameters': ?parameters,
      'storage_descriptor': ?storageDescriptor?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExternalCatalogTableOptions].
  static const SchemanticType<ExternalCatalogTableOptions> $schema =
      _ExternalCatalogTableOptionsTypeFactory();

  String? get connectionId {
    return _json['connection_id'] as String?;
  }

  set connectionId(String? value) {
    if (value == null) {
      _json.remove('connection_id');
    } else {
      _json['connection_id'] = value;
    }
  }

  Map<String, String>? get parameters {
    return (_json['parameters'] as Map?)?.cast<String, String>();
  }

  set parameters(Map<String, String>? value) {
    if (value == null) {
      _json.remove('parameters');
    } else {
      _json['parameters'] = value;
    }
  }

  StorageDescriptor? get storageDescriptor {
    return _json['storage_descriptor'] == null
        ? null
        : StorageDescriptor.fromJson(
            _json['storage_descriptor'] as Map<String, dynamic>,
          );
  }

  set storageDescriptor(StorageDescriptor? value) {
    if (value == null) {
      _json.remove('storage_descriptor');
    } else {
      _json['storage_descriptor'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ExternalCatalogTableOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExternalCatalogTableOptionsTypeFactory
    extends SchemanticType<ExternalCatalogTableOptions> {
  const _ExternalCatalogTableOptionsTypeFactory();

  @override
  ExternalCatalogTableOptions parse(Object? json) {
    return ExternalCatalogTableOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExternalCatalogTableOptions',
    definition: $Schema
        .object(
          properties: {
            'connection_id': $Schema.string(
              description:
                  'The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connection is needed to read the open source table from BigQuery Engine. The connection_id can have the form <project_id>.<location_id>.<connection_id> or projects/<project_id>/locations/<location_id>/connections/<connection_id>.',
            ),
            'parameters': $Schema.object(
              description:
                  'A map of key value pairs defining the parameters and properties of the open source table. Corresponds with hive meta store table parameters. Maximum size of 4Mib.',
              additionalProperties: $Schema.string(),
            ),
            'storage_descriptor': $Schema.fromMap({
              '\$ref': r'#/$defs/StorageDescriptor',
            }),
          },
          description: 'Options defining open source compatible table.',
        )
        .value,
    dependencies: [StorageDescriptor.$schema],
  );
}

base class AvroOptions {
  /// Creates a [AvroOptions] from a JSON map.
  factory AvroOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AvroOptions._(this._json);

  AvroOptions({required bool useAvroLogicalTypes}) {
    _json = {'use_avro_logical_types': useAvroLogicalTypes};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AvroOptions].
  static const SchemanticType<AvroOptions> $schema = _AvroOptionsTypeFactory();

  bool get useAvroLogicalTypes {
    return _json['use_avro_logical_types'] as bool;
  }

  set useAvroLogicalTypes(bool value) {
    _json['use_avro_logical_types'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AvroOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AvroOptionsTypeFactory extends SchemanticType<AvroOptions> {
  const _AvroOptionsTypeFactory();

  @override
  AvroOptions parse(Object? json) {
    return AvroOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AvroOptions',
    definition: $Schema
        .object(
          properties: {
            'use_avro_logical_types': $Schema.boolean(
              description:
                  'If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).',
            ),
          },
          required: ['use_avro_logical_types'],
          description: 'Additional options if source_format is set to "AVRO"',
        )
        .value,
    dependencies: [],
  );
}

base class Column {
  /// Creates a [Column] from a JSON map.
  factory Column.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Column._(this._json);

  Column({
    String? encoding,
    String? fieldName,
    bool? onlyReadLatest,
    String? qualifierEncoded,
    String? qualifierString,
    String? type,
  }) {
    _json = {
      'encoding': ?encoding,
      'field_name': ?fieldName,
      'only_read_latest': ?onlyReadLatest,
      'qualifier_encoded': ?qualifierEncoded,
      'qualifier_string': ?qualifierString,
      'type': ?type,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Column].
  static const SchemanticType<Column> $schema = _ColumnTypeFactory();

  String? get encoding {
    return _json['encoding'] as String?;
  }

  set encoding(String? value) {
    if (value == null) {
      _json.remove('encoding');
    } else {
      _json['encoding'] = value;
    }
  }

  String? get fieldName {
    return _json['field_name'] as String?;
  }

  set fieldName(String? value) {
    if (value == null) {
      _json.remove('field_name');
    } else {
      _json['field_name'] = value;
    }
  }

  bool? get onlyReadLatest {
    return _json['only_read_latest'] as bool?;
  }

  set onlyReadLatest(bool? value) {
    if (value == null) {
      _json.remove('only_read_latest');
    } else {
      _json['only_read_latest'] = value;
    }
  }

  String? get qualifierEncoded {
    return _json['qualifier_encoded'] as String?;
  }

  set qualifierEncoded(String? value) {
    if (value == null) {
      _json.remove('qualifier_encoded');
    } else {
      _json['qualifier_encoded'] = value;
    }
  }

  String? get qualifierString {
    return _json['qualifier_string'] as String?;
  }

  set qualifierString(String? value) {
    if (value == null) {
      _json.remove('qualifier_string');
    } else {
      _json['qualifier_string'] = value;
    }
  }

  String? get type {
    return _json['type'] as String?;
  }

  set type(String? value) {
    if (value == null) {
      _json.remove('type');
    } else {
      _json['type'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Column] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ColumnTypeFactory extends SchemanticType<Column> {
  const _ColumnTypeFactory();

  @override
  Column parse(Object? json) {
    return Column._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Column',
    definition: $Schema
        .object(
          properties: {
            'encoding': $Schema.string(
              description:
                  'The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. \'encoding\' can also be set at the column family level. However, the setting at this level takes precedence if \'encoding\' is set at both levels.',
            ),
            'field_name': $Schema.string(
              description:
                  'If the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as the column field name and is used as field name in queries.',
            ),
            'only_read_latest': $Schema.boolean(
              description:
                  'If this is set, only the latest version of value in this column are exposed. \'onlyReadLatest\' can also be set at the column family level. However, the setting at this level takes precedence if \'onlyReadLatest\' is set at both levels.',
            ),
            'qualifier_encoded': $Schema.string(
              description:
                  'Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as . field. If the qualifier is valid UTF-8 string, it can be specified in the qualifierString field. Otherwise, a base-64 encoded value must be set to qualifierEncoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as fieldName.',
            ),
            'qualifier_string': $Schema.string(
              description: 'Qualifier string.',
            ),
            'type': $Schema.string(
              description:
                  'The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON", Default type is "BYTES". \'type\' can also be set at the column family level. However, the setting at this level takes precedence if \'type\' is set at both levels.',
            ),
          },
          description:
              'A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field',
        )
        .value,
    dependencies: [],
  );
}

base class ColumnFamily {
  /// Creates a [ColumnFamily] from a JSON map.
  factory ColumnFamily.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ColumnFamily._(this._json);

  ColumnFamily({
    String? encoding,
    String? familyId,
    bool? onlyReadLatest,
    String? type,
    List<Column>? column,
  }) {
    _json = {
      'encoding': ?encoding,
      'family_id': ?familyId,
      'only_read_latest': ?onlyReadLatest,
      'type': ?type,
      'column': ?column?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ColumnFamily].
  static const SchemanticType<ColumnFamily> $schema =
      _ColumnFamilyTypeFactory();

  String? get encoding {
    return _json['encoding'] as String?;
  }

  set encoding(String? value) {
    if (value == null) {
      _json.remove('encoding');
    } else {
      _json['encoding'] = value;
    }
  }

  String? get familyId {
    return _json['family_id'] as String?;
  }

  set familyId(String? value) {
    if (value == null) {
      _json.remove('family_id');
    } else {
      _json['family_id'] = value;
    }
  }

  bool? get onlyReadLatest {
    return _json['only_read_latest'] as bool?;
  }

  set onlyReadLatest(bool? value) {
    if (value == null) {
      _json.remove('only_read_latest');
    } else {
      _json['only_read_latest'] = value;
    }
  }

  String? get type {
    return _json['type'] as String?;
  }

  set type(String? value) {
    if (value == null) {
      _json.remove('type');
    } else {
      _json['type'] = value;
    }
  }

  List<Column>? get column {
    return (_json['column'] as List?)
        ?.map((e) => Column.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set column(List<Column>? value) {
    if (value == null) {
      _json.remove('column');
    } else {
      _json['column'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ColumnFamily] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ColumnFamilyTypeFactory extends SchemanticType<ColumnFamily> {
  const _ColumnFamilyTypeFactory();

  @override
  ColumnFamily parse(Object? json) {
    return ColumnFamily._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ColumnFamily',
    definition: $Schema
        .object(
          properties: {
            'encoding': $Schema.string(
              description:
                  'The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in \'columns\' and specifying an encoding for it.',
            ),
            'family_id': $Schema.string(
              description: 'Identifier of the column family.',
            ),
            'only_read_latest': $Schema.boolean(
              description:
                  'If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in \'columns\' and specifying a different setting for that column.',
            ),
            'type': $Schema.string(
              description:
                  'The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in \'columns\' and specifying a type for it.',
            ),
            'column': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Column'}),
            ),
          },
          description:
              'A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the \'type\' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.',
        )
        .value,
    dependencies: [Column.$schema],
  );
}

base class BigtableOptions {
  /// Creates a [BigtableOptions] from a JSON map.
  factory BigtableOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BigtableOptions._(this._json);

  BigtableOptions({
    bool? ignoreUnspecifiedColumnFamilies,
    bool? outputColumnFamiliesAsJson,
    bool? readRowkeyAsString,
    List<ColumnFamily>? columnFamily,
  }) {
    _json = {
      'ignore_unspecified_column_families': ?ignoreUnspecifiedColumnFamilies,
      'output_column_families_as_json': ?outputColumnFamiliesAsJson,
      'read_rowkey_as_string': ?readRowkeyAsString,
      'column_family': ?columnFamily?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BigtableOptions].
  static const SchemanticType<BigtableOptions> $schema =
      _BigtableOptionsTypeFactory();

  bool? get ignoreUnspecifiedColumnFamilies {
    return _json['ignore_unspecified_column_families'] as bool?;
  }

  set ignoreUnspecifiedColumnFamilies(bool? value) {
    if (value == null) {
      _json.remove('ignore_unspecified_column_families');
    } else {
      _json['ignore_unspecified_column_families'] = value;
    }
  }

  bool? get outputColumnFamiliesAsJson {
    return _json['output_column_families_as_json'] as bool?;
  }

  set outputColumnFamiliesAsJson(bool? value) {
    if (value == null) {
      _json.remove('output_column_families_as_json');
    } else {
      _json['output_column_families_as_json'] = value;
    }
  }

  bool? get readRowkeyAsString {
    return _json['read_rowkey_as_string'] as bool?;
  }

  set readRowkeyAsString(bool? value) {
    if (value == null) {
      _json.remove('read_rowkey_as_string');
    } else {
      _json['read_rowkey_as_string'] = value;
    }
  }

  List<ColumnFamily>? get columnFamily {
    return (_json['column_family'] as List?)
        ?.map((e) => ColumnFamily.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set columnFamily(List<ColumnFamily>? value) {
    if (value == null) {
      _json.remove('column_family');
    } else {
      _json['column_family'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BigtableOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BigtableOptionsTypeFactory extends SchemanticType<BigtableOptions> {
  const _BigtableOptionsTypeFactory();

  @override
  BigtableOptions parse(Object? json) {
    return BigtableOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BigtableOptions',
    definition: $Schema
        .object(
          properties: {
            'ignore_unspecified_column_families': $Schema.boolean(
              description:
                  'If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.',
            ),
            'output_column_families_as_json': $Schema.boolean(
              description:
                  'If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.',
            ),
            'read_rowkey_as_string': $Schema.boolean(
              description:
                  'If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.',
            ),
            'column_family': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/ColumnFamily'}),
            ),
          },
          description: 'Additional options if sourceFormat is set to BIGTABLE.',
        )
        .value,
    dependencies: [ColumnFamily.$schema],
  );
}

base class CsvOptions {
  /// Creates a [CsvOptions] from a JSON map.
  factory CsvOptions.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  CsvOptions._(this._json);

  CsvOptions({
    bool? allowJaggedRows,
    bool? allowQuotedNewlines,
    String? encoding,
    String? fieldDelimiter,
    required String quote,
    num? skipLeadingRows,
    String? sourceColumnMatch,
  }) {
    _json = {
      'allow_jagged_rows': ?allowJaggedRows,
      'allow_quoted_newlines': ?allowQuotedNewlines,
      'encoding': ?encoding,
      'field_delimiter': ?fieldDelimiter,
      'quote': quote,
      'skip_leading_rows': ?skipLeadingRows,
      'source_column_match': ?sourceColumnMatch,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CsvOptions].
  static const SchemanticType<CsvOptions> $schema = _CsvOptionsTypeFactory();

  bool? get allowJaggedRows {
    return _json['allow_jagged_rows'] as bool?;
  }

  set allowJaggedRows(bool? value) {
    if (value == null) {
      _json.remove('allow_jagged_rows');
    } else {
      _json['allow_jagged_rows'] = value;
    }
  }

  bool? get allowQuotedNewlines {
    return _json['allow_quoted_newlines'] as bool?;
  }

  set allowQuotedNewlines(bool? value) {
    if (value == null) {
      _json.remove('allow_quoted_newlines');
    } else {
      _json['allow_quoted_newlines'] = value;
    }
  }

  String? get encoding {
    return _json['encoding'] as String?;
  }

  set encoding(String? value) {
    if (value == null) {
      _json.remove('encoding');
    } else {
      _json['encoding'] = value;
    }
  }

  String? get fieldDelimiter {
    return _json['field_delimiter'] as String?;
  }

  set fieldDelimiter(String? value) {
    if (value == null) {
      _json.remove('field_delimiter');
    } else {
      _json['field_delimiter'] = value;
    }
  }

  String get quote {
    return _json['quote'] as String;
  }

  set quote(String value) {
    _json['quote'] = value;
  }

  num? get skipLeadingRows {
    return _json['skip_leading_rows'] as num?;
  }

  set skipLeadingRows(num? value) {
    if (value == null) {
      _json.remove('skip_leading_rows');
    } else {
      _json['skip_leading_rows'] = value;
    }
  }

  String? get sourceColumnMatch {
    return _json['source_column_match'] as String?;
  }

  set sourceColumnMatch(String? value) {
    if (value == null) {
      _json.remove('source_column_match');
    } else {
      _json['source_column_match'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CsvOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CsvOptionsTypeFactory extends SchemanticType<CsvOptions> {
  const _CsvOptionsTypeFactory();

  @override
  CsvOptions parse(Object? json) {
    return CsvOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CsvOptions',
    definition: $Schema
        .object(
          properties: {
            'allow_jagged_rows': $Schema.boolean(
              description:
                  'Indicates if BigQuery should accept rows that are missing trailing optional columns.',
            ),
            'allow_quoted_newlines': $Schema.boolean(
              description:
                  'Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.',
            ),
            'encoding': $Schema.string(
              description:
                  'The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.',
            ),
            'field_delimiter': $Schema.string(
              description: 'The separator for fields in a CSV file.',
            ),
            'quote': $Schema.string(
              description:
                  'The value that is used to quote data sections in a CSV file. If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allow_quoted_newlines property to true. The API-side default is ", specified in Terraform escaped as \". Due to limitations with Terraform default values, this value is required to be explicitly set.',
            ),
            'skip_leading_rows': $Schema.number(
              description:
                  'The number of rows at the top of a CSV file that BigQuery will skip when reading the data.',
            ),
            'source_column_match': $Schema.string(
              description:
                  'Specifies how source columns are matched to the table schema. Valid values are POSITION (columns matched by position, assuming same ordering) or NAME (columns matched by name, reads header row and reorders columns to align with schema field names).',
            ),
          },
          required: ['quote'],
          description:
              'Additional properties to set if source_format is set to "CSV".',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleSheetsOptions {
  /// Creates a [GoogleSheetsOptions] from a JSON map.
  factory GoogleSheetsOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleSheetsOptions._(this._json);

  GoogleSheetsOptions({String? range, num? skipLeadingRows}) {
    _json = {'range': ?range, 'skip_leading_rows': ?skipLeadingRows};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleSheetsOptions].
  static const SchemanticType<GoogleSheetsOptions> $schema =
      _GoogleSheetsOptionsTypeFactory();

  String? get range {
    return _json['range'] as String?;
  }

  set range(String? value) {
    if (value == null) {
      _json.remove('range');
    } else {
      _json['range'] = value;
    }
  }

  num? get skipLeadingRows {
    return _json['skip_leading_rows'] as num?;
  }

  set skipLeadingRows(num? value) {
    if (value == null) {
      _json.remove('skip_leading_rows');
    } else {
      _json['skip_leading_rows'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleSheetsOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleSheetsOptionsTypeFactory
    extends SchemanticType<GoogleSheetsOptions> {
  const _GoogleSheetsOptionsTypeFactory();

  @override
  GoogleSheetsOptions parse(Object? json) {
    return GoogleSheetsOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleSheetsOptions',
    definition: $Schema
        .object(
          properties: {
            'range': $Schema.string(
              description:
                  'Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id" For example: "sheet1!A1:B20',
            ),
            'skip_leading_rows': $Schema.number(
              description:
                  'The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set.',
            ),
          },
          description:
              'Additional options if source_format is set to "GOOGLE_SHEETS".',
        )
        .value,
    dependencies: [],
  );
}

base class HivePartitioningOptions {
  /// Creates a [HivePartitioningOptions] from a JSON map.
  factory HivePartitioningOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  HivePartitioningOptions._(this._json);

  HivePartitioningOptions({
    String? mode,
    bool? requirePartitionFilter,
    String? sourceUriPrefix,
  }) {
    _json = {
      'mode': ?mode,
      'require_partition_filter': ?requirePartitionFilter,
      'source_uri_prefix': ?sourceUriPrefix,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [HivePartitioningOptions].
  static const SchemanticType<HivePartitioningOptions> $schema =
      _HivePartitioningOptionsTypeFactory();

  String? get mode {
    return _json['mode'] as String?;
  }

  set mode(String? value) {
    if (value == null) {
      _json.remove('mode');
    } else {
      _json['mode'] = value;
    }
  }

  bool? get requirePartitionFilter {
    return _json['require_partition_filter'] as bool?;
  }

  set requirePartitionFilter(bool? value) {
    if (value == null) {
      _json.remove('require_partition_filter');
    } else {
      _json['require_partition_filter'] = value;
    }
  }

  String? get sourceUriPrefix {
    return _json['source_uri_prefix'] as String?;
  }

  set sourceUriPrefix(String? value) {
    if (value == null) {
      _json.remove('source_uri_prefix');
    } else {
      _json['source_uri_prefix'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [HivePartitioningOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HivePartitioningOptionsTypeFactory
    extends SchemanticType<HivePartitioningOptions> {
  const _HivePartitioningOptionsTypeFactory();

  @override
  HivePartitioningOptions parse(Object? json) {
    return HivePartitioningOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'HivePartitioningOptions',
    definition: $Schema
        .object(
          properties: {
            'mode': $Schema.string(
              description:
                  'When set, what mode of hive partitioning to use when reading data.',
            ),
            'require_partition_filter': $Schema.boolean(
              description:
                  'If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.',
            ),
            'source_uri_prefix': $Schema.string(
              description:
                  'When hive partition detection is requested, a common for all source uris must be required. The prefix must end immediately before the partition key encoding begins.',
            ),
          },
          description:
              'When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.',
        )
        .value,
    dependencies: [],
  );
}

base class JsonOptions {
  /// Creates a [JsonOptions] from a JSON map.
  factory JsonOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  JsonOptions._(this._json);

  JsonOptions({String? encoding}) {
    _json = {'encoding': ?encoding};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [JsonOptions].
  static const SchemanticType<JsonOptions> $schema = _JsonOptionsTypeFactory();

  String? get encoding {
    return _json['encoding'] as String?;
  }

  set encoding(String? value) {
    if (value == null) {
      _json.remove('encoding');
    } else {
      _json['encoding'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [JsonOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _JsonOptionsTypeFactory extends SchemanticType<JsonOptions> {
  const _JsonOptionsTypeFactory();

  @override
  JsonOptions parse(Object? json) {
    return JsonOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'JsonOptions',
    definition: $Schema
        .object(
          properties: {
            'encoding': $Schema.string(
              description:
                  'The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.',
            ),
          },
          description:
              'Additional properties to set if sourceFormat is set to JSON.',
        )
        .value,
    dependencies: [],
  );
}

base class ParquetOptions {
  /// Creates a [ParquetOptions] from a JSON map.
  factory ParquetOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParquetOptions._(this._json);

  ParquetOptions({bool? enableListInference, bool? enumAsString}) {
    _json = {
      'enable_list_inference': ?enableListInference,
      'enum_as_string': ?enumAsString,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParquetOptions].
  static const SchemanticType<ParquetOptions> $schema =
      _ParquetOptionsTypeFactory();

  bool? get enableListInference {
    return _json['enable_list_inference'] as bool?;
  }

  set enableListInference(bool? value) {
    if (value == null) {
      _json.remove('enable_list_inference');
    } else {
      _json['enable_list_inference'] = value;
    }
  }

  bool? get enumAsString {
    return _json['enum_as_string'] as bool?;
  }

  set enumAsString(bool? value) {
    if (value == null) {
      _json.remove('enum_as_string');
    } else {
      _json['enum_as_string'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParquetOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParquetOptionsTypeFactory extends SchemanticType<ParquetOptions> {
  const _ParquetOptionsTypeFactory();

  @override
  ParquetOptions parse(Object? json) {
    return ParquetOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParquetOptions',
    definition: $Schema
        .object(
          properties: {
            'enable_list_inference': $Schema.boolean(
              description:
                  'Indicates whether to use schema inference specifically for Parquet LIST logical type.',
            ),
            'enum_as_string': $Schema.boolean(
              description:
                  'Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.',
            ),
          },
          description:
              'Additional properties to set if sourceFormat is set to PARQUET.',
        )
        .value,
    dependencies: [],
  );
}

base class ExternalDataConfiguration {
  /// Creates a [ExternalDataConfiguration] from a JSON map.
  factory ExternalDataConfiguration.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExternalDataConfiguration._(this._json);

  ExternalDataConfiguration({
    required bool autodetect,
    String? compression,
    String? connectionId,
    List<String>? decimalTargetTypes,
    String? fileSetSpecType,
    bool? ignoreUnknownValues,
    String? jsonExtension,
    num? maxBadRecords,
    String? metadataCacheMode,
    String? objectMetadata,
    String? referenceFileSchemaUri,
    String? schema,
    String? sourceFormat,
    required List<String> sourceUris,
    AvroOptions? avroOptions,
    BigtableOptions? bigtableOptions,
    CsvOptions? csvOptions,
    GoogleSheetsOptions? googleSheetsOptions,
    HivePartitioningOptions? hivePartitioningOptions,
    JsonOptions? jsonOptions,
    ParquetOptions? parquetOptions,
  }) {
    _json = {
      'autodetect': autodetect,
      'compression': ?compression,
      'connection_id': ?connectionId,
      'decimal_target_types': ?decimalTargetTypes,
      'file_set_spec_type': ?fileSetSpecType,
      'ignore_unknown_values': ?ignoreUnknownValues,
      'json_extension': ?jsonExtension,
      'max_bad_records': ?maxBadRecords,
      'metadata_cache_mode': ?metadataCacheMode,
      'object_metadata': ?objectMetadata,
      'reference_file_schema_uri': ?referenceFileSchemaUri,
      'schema': ?schema,
      'source_format': ?sourceFormat,
      'source_uris': sourceUris,
      'avro_options': ?avroOptions?.toJson(),
      'bigtable_options': ?bigtableOptions?.toJson(),
      'csv_options': ?csvOptions?.toJson(),
      'google_sheets_options': ?googleSheetsOptions?.toJson(),
      'hive_partitioning_options': ?hivePartitioningOptions?.toJson(),
      'json_options': ?jsonOptions?.toJson(),
      'parquet_options': ?parquetOptions?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExternalDataConfiguration].
  static const SchemanticType<ExternalDataConfiguration> $schema =
      _ExternalDataConfigurationTypeFactory();

  bool get autodetect {
    return _json['autodetect'] as bool;
  }

  set autodetect(bool value) {
    _json['autodetect'] = value;
  }

  String? get compression {
    return _json['compression'] as String?;
  }

  set compression(String? value) {
    if (value == null) {
      _json.remove('compression');
    } else {
      _json['compression'] = value;
    }
  }

  String? get connectionId {
    return _json['connection_id'] as String?;
  }

  set connectionId(String? value) {
    if (value == null) {
      _json.remove('connection_id');
    } else {
      _json['connection_id'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get decimalTargetTypes {
    return (_json['decimal_target_types'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set decimalTargetTypes(List<String>? value) {
    if (value == null) {
      _json.remove('decimal_target_types');
    } else {
      _json['decimal_target_types'] = value;
    }
  }

  String? get fileSetSpecType {
    return _json['file_set_spec_type'] as String?;
  }

  set fileSetSpecType(String? value) {
    if (value == null) {
      _json.remove('file_set_spec_type');
    } else {
      _json['file_set_spec_type'] = value;
    }
  }

  bool? get ignoreUnknownValues {
    return _json['ignore_unknown_values'] as bool?;
  }

  set ignoreUnknownValues(bool? value) {
    if (value == null) {
      _json.remove('ignore_unknown_values');
    } else {
      _json['ignore_unknown_values'] = value;
    }
  }

  String? get jsonExtension {
    return _json['json_extension'] as String?;
  }

  set jsonExtension(String? value) {
    if (value == null) {
      _json.remove('json_extension');
    } else {
      _json['json_extension'] = value;
    }
  }

  num? get maxBadRecords {
    return _json['max_bad_records'] as num?;
  }

  set maxBadRecords(num? value) {
    if (value == null) {
      _json.remove('max_bad_records');
    } else {
      _json['max_bad_records'] = value;
    }
  }

  String? get metadataCacheMode {
    return _json['metadata_cache_mode'] as String?;
  }

  set metadataCacheMode(String? value) {
    if (value == null) {
      _json.remove('metadata_cache_mode');
    } else {
      _json['metadata_cache_mode'] = value;
    }
  }

  String? get objectMetadata {
    return _json['object_metadata'] as String?;
  }

  set objectMetadata(String? value) {
    if (value == null) {
      _json.remove('object_metadata');
    } else {
      _json['object_metadata'] = value;
    }
  }

  String? get referenceFileSchemaUri {
    return _json['reference_file_schema_uri'] as String?;
  }

  set referenceFileSchemaUri(String? value) {
    if (value == null) {
      _json.remove('reference_file_schema_uri');
    } else {
      _json['reference_file_schema_uri'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get schema {
    return _json['schema'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set schema(String? value) {
    if (value == null) {
      _json.remove('schema');
    } else {
      _json['schema'] = value;
    }
  }

  String? get sourceFormat {
    return _json['source_format'] as String?;
  }

  set sourceFormat(String? value) {
    if (value == null) {
      _json.remove('source_format');
    } else {
      _json['source_format'] = value;
    }
  }

  List<String> get sourceUris {
    return (_json['source_uris'] as List).cast<String>();
  }

  set sourceUris(List<String> value) {
    _json['source_uris'] = value;
  }

  AvroOptions? get avroOptions {
    return _json['avro_options'] == null
        ? null
        : AvroOptions.fromJson(_json['avro_options'] as Map<String, dynamic>);
  }

  set avroOptions(AvroOptions? value) {
    if (value == null) {
      _json.remove('avro_options');
    } else {
      _json['avro_options'] = value;
    }
  }

  BigtableOptions? get bigtableOptions {
    return _json['bigtable_options'] == null
        ? null
        : BigtableOptions.fromJson(
            _json['bigtable_options'] as Map<String, dynamic>,
          );
  }

  set bigtableOptions(BigtableOptions? value) {
    if (value == null) {
      _json.remove('bigtable_options');
    } else {
      _json['bigtable_options'] = value;
    }
  }

  CsvOptions? get csvOptions {
    return _json['csv_options'] == null
        ? null
        : CsvOptions.fromJson(_json['csv_options'] as Map<String, dynamic>);
  }

  set csvOptions(CsvOptions? value) {
    if (value == null) {
      _json.remove('csv_options');
    } else {
      _json['csv_options'] = value;
    }
  }

  GoogleSheetsOptions? get googleSheetsOptions {
    return _json['google_sheets_options'] == null
        ? null
        : GoogleSheetsOptions.fromJson(
            _json['google_sheets_options'] as Map<String, dynamic>,
          );
  }

  set googleSheetsOptions(GoogleSheetsOptions? value) {
    if (value == null) {
      _json.remove('google_sheets_options');
    } else {
      _json['google_sheets_options'] = value;
    }
  }

  HivePartitioningOptions? get hivePartitioningOptions {
    return _json['hive_partitioning_options'] == null
        ? null
        : HivePartitioningOptions.fromJson(
            _json['hive_partitioning_options'] as Map<String, dynamic>,
          );
  }

  set hivePartitioningOptions(HivePartitioningOptions? value) {
    if (value == null) {
      _json.remove('hive_partitioning_options');
    } else {
      _json['hive_partitioning_options'] = value;
    }
  }

  JsonOptions? get jsonOptions {
    return _json['json_options'] == null
        ? null
        : JsonOptions.fromJson(_json['json_options'] as Map<String, dynamic>);
  }

  set jsonOptions(JsonOptions? value) {
    if (value == null) {
      _json.remove('json_options');
    } else {
      _json['json_options'] = value;
    }
  }

  ParquetOptions? get parquetOptions {
    return _json['parquet_options'] == null
        ? null
        : ParquetOptions.fromJson(
            _json['parquet_options'] as Map<String, dynamic>,
          );
  }

  set parquetOptions(ParquetOptions? value) {
    if (value == null) {
      _json.remove('parquet_options');
    } else {
      _json['parquet_options'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ExternalDataConfiguration] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExternalDataConfigurationTypeFactory
    extends SchemanticType<ExternalDataConfiguration> {
  const _ExternalDataConfigurationTypeFactory();

  @override
  ExternalDataConfiguration parse(Object? json) {
    return ExternalDataConfiguration._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExternalDataConfiguration',
    definition: $Schema
        .object(
          properties: {
            'autodetect': $Schema.boolean(
              description:
                  'Let BigQuery try to autodetect the schema and format of the table.',
            ),
            'compression': $Schema.string(
              description:
                  'The compression type of the data source. Valid values are "NONE" or "GZIP".',
            ),
            'connection_id': $Schema.string(
              description:
                  'The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form "<project>.<location>.<connection_id>" or "projects/<project>/locations/<location>/connections/<connection_id>".',
            ),
            'decimal_target_types': $Schema.list(
              description:
                  'The data types that could be used as a target type when converting decimal values.',
              items: $Schema.string(),
            ),
            'file_set_spec_type': $Schema.string(
              description:
                  'Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems.',
            ),
            'ignore_unknown_values': $Schema.boolean(
              description:
                  'Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.',
            ),
            'json_extension': $Schema.string(
              description:
                  'Load option to be used together with sourceFormat newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and sourceFormat must be set to NEWLINE_DELIMITED_JSON).',
            ),
            'max_bad_records': $Schema.number(
              description:
                  'The maximum number of bad records that BigQuery can ignore when reading data.',
            ),
            'metadata_cache_mode': $Schema.string(
              description:
                  'Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.',
            ),
            'object_metadata': $Schema.string(
              description:
                  'Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted.',
            ),
            'reference_file_schema_uri': $Schema.string(
              description:
                  'When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.',
            ),
            'schema': $Schema.string(
              description:
                  'A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables.',
            ),
            'source_format': $Schema.string(
              description:
                  'Please see sourceFormat under ExternalDataConfiguration in Bigquery\'s public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use "GOOGLE_SHEETS" the scopes must include "googleapis.com/auth/drive.readonly".',
            ),
            'source_uris': $Schema.list(
              description:
                  'A list of the fully-qualified URIs that point to your data in Google Cloud.',
              items: $Schema.string(),
            ),
            'avro_options': $Schema.fromMap({'\$ref': r'#/$defs/AvroOptions'}),
            'bigtable_options': $Schema.fromMap({
              '\$ref': r'#/$defs/BigtableOptions',
            }),
            'csv_options': $Schema.fromMap({'\$ref': r'#/$defs/CsvOptions'}),
            'google_sheets_options': $Schema.fromMap({
              '\$ref': r'#/$defs/GoogleSheetsOptions',
            }),
            'hive_partitioning_options': $Schema.fromMap({
              '\$ref': r'#/$defs/HivePartitioningOptions',
            }),
            'json_options': $Schema.fromMap({'\$ref': r'#/$defs/JsonOptions'}),
            'parquet_options': $Schema.fromMap({
              '\$ref': r'#/$defs/ParquetOptions',
            }),
          },
          required: ['autodetect', 'source_uris'],
          description:
              'Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.',
        )
        .value,
    dependencies: [
      AvroOptions.$schema,
      BigtableOptions.$schema,
      CsvOptions.$schema,
      GoogleSheetsOptions.$schema,
      HivePartitioningOptions.$schema,
      JsonOptions.$schema,
      ParquetOptions.$schema,
    ],
  );
}

base class MaterializedView {
  /// Creates a [MaterializedView] from a JSON map.
  factory MaterializedView.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  MaterializedView._(this._json);

  MaterializedView({
    bool? allowNonIncrementalDefinition,
    bool? enableRefresh,
    required String query,
    num? refreshIntervalMs,
  }) {
    _json = {
      'allow_non_incremental_definition': ?allowNonIncrementalDefinition,
      'enable_refresh': ?enableRefresh,
      'query': query,
      'refresh_interval_ms': ?refreshIntervalMs,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [MaterializedView].
  static const SchemanticType<MaterializedView> $schema =
      _MaterializedViewTypeFactory();

  bool? get allowNonIncrementalDefinition {
    return _json['allow_non_incremental_definition'] as bool?;
  }

  set allowNonIncrementalDefinition(bool? value) {
    if (value == null) {
      _json.remove('allow_non_incremental_definition');
    } else {
      _json['allow_non_incremental_definition'] = value;
    }
  }

  bool? get enableRefresh {
    return _json['enable_refresh'] as bool?;
  }

  set enableRefresh(bool? value) {
    if (value == null) {
      _json.remove('enable_refresh');
    } else {
      _json['enable_refresh'] = value;
    }
  }

  String get query {
    return _json['query'] as String;
  }

  set query(String value) {
    _json['query'] = value;
  }

  num? get refreshIntervalMs {
    return _json['refresh_interval_ms'] as num?;
  }

  set refreshIntervalMs(num? value) {
    if (value == null) {
      _json.remove('refresh_interval_ms');
    } else {
      _json['refresh_interval_ms'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [MaterializedView] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MaterializedViewTypeFactory
    extends SchemanticType<MaterializedView> {
  const _MaterializedViewTypeFactory();

  @override
  MaterializedView parse(Object? json) {
    return MaterializedView._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'MaterializedView',
    definition: $Schema
        .object(
          properties: {
            'allow_non_incremental_definition': $Schema.boolean(
              description:
                  'Allow non incremental materialized view definition. The default value is false.',
            ),
            'enable_refresh': $Schema.boolean(
              description:
                  'Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true.',
            ),
            'query': $Schema.string(
              description: 'A query whose result is persisted.',
            ),
            'refresh_interval_ms': $Schema.number(
              description:
                  'Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000.',
            ),
          },
          required: ['query'],
          description:
              'If specified, configures this table as a materialized view.',
        )
        .value,
    dependencies: [],
  );
}

base class Range {
  /// Creates a [Range] from a JSON map.
  factory Range.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Range._(this._json);

  Range({required num end, required num interval, required num start}) {
    _json = {'end': end, 'interval': interval, 'start': start};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Range].
  static const SchemanticType<Range> $schema = _RangeTypeFactory();

  num get end {
    return _json['end'] as num;
  }

  set end(num value) {
    _json['end'] = value;
  }

  num get interval {
    return _json['interval'] as num;
  }

  set interval(num value) {
    _json['interval'] = value;
  }

  num get start {
    return _json['start'] as num;
  }

  set start(num value) {
    _json['start'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Range] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RangeTypeFactory extends SchemanticType<Range> {
  const _RangeTypeFactory();

  @override
  Range parse(Object? json) {
    return Range._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Range',
    definition: $Schema
        .object(
          properties: {
            'end': $Schema.number(
              description: 'End of the range partitioning, exclusive.',
            ),
            'interval': $Schema.number(
              description: 'The width of each range within the partition.',
            ),
            'start': $Schema.number(
              description: 'Start of the range partitioning, inclusive.',
            ),
          },
          required: ['end', 'interval', 'start'],
          description:
              'Information required to partition based on ranges. Structure is documented below.',
        )
        .value,
    dependencies: [],
  );
}

base class RangePartitioning {
  /// Creates a [RangePartitioning] from a JSON map.
  factory RangePartitioning.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RangePartitioning._(this._json);

  RangePartitioning({required String field, required Range range}) {
    _json = {'field': field, 'range': range.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RangePartitioning].
  static const SchemanticType<RangePartitioning> $schema =
      _RangePartitioningTypeFactory();

  String get field {
    return _json['field'] as String;
  }

  set field(String value) {
    _json['field'] = value;
  }

  Range get range {
    return Range.fromJson(_json['range'] as Map<String, dynamic>);
  }

  set range(Range value) {
    _json['range'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RangePartitioning] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RangePartitioningTypeFactory
    extends SchemanticType<RangePartitioning> {
  const _RangePartitioningTypeFactory();

  @override
  RangePartitioning parse(Object? json) {
    return RangePartitioning._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RangePartitioning',
    definition: $Schema
        .object(
          properties: {
            'field': $Schema.string(
              description:
                  'The field used to determine how to create a range-based partition.',
            ),
            'range': $Schema.fromMap({'\$ref': r'#/$defs/Range'}),
          },
          required: ['field', 'range'],
          description:
              'If specified, configures range-based partitioning for this table.',
        )
        .value,
    dependencies: [Range.$schema],
  );
}

base class SchemaForeignTypeInfo {
  /// Creates a [SchemaForeignTypeInfo] from a JSON map.
  factory SchemaForeignTypeInfo.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SchemaForeignTypeInfo._(this._json);

  SchemaForeignTypeInfo({required String typeSystem}) {
    _json = {'type_system': typeSystem};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SchemaForeignTypeInfo].
  static const SchemanticType<SchemaForeignTypeInfo> $schema =
      _SchemaForeignTypeInfoTypeFactory();

  String get typeSystem {
    return _json['type_system'] as String;
  }

  set typeSystem(String value) {
    _json['type_system'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SchemaForeignTypeInfo] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SchemaForeignTypeInfoTypeFactory
    extends SchemanticType<SchemaForeignTypeInfo> {
  const _SchemaForeignTypeInfoTypeFactory();

  @override
  SchemaForeignTypeInfo parse(Object? json) {
    return SchemaForeignTypeInfo._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SchemaForeignTypeInfo',
    definition: $Schema
        .object(
          properties: {
            'type_system': $Schema.string(
              description:
                  'Specifies the system which defines the foreign data type.',
            ),
          },
          required: ['type_system'],
          description:
              'Specifies metadata of the foreign data type definition in field schema.',
        )
        .value,
    dependencies: [],
  );
}

base class ColumnReferences {
  /// Creates a [ColumnReferences] from a JSON map.
  factory ColumnReferences.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ColumnReferences._(this._json);

  ColumnReferences({
    required String referencedColumn,
    required String referencingColumn,
  }) {
    _json = {
      'referenced_column': referencedColumn,
      'referencing_column': referencingColumn,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ColumnReferences].
  static const SchemanticType<ColumnReferences> $schema =
      _ColumnReferencesTypeFactory();

  String get referencedColumn {
    return _json['referenced_column'] as String;
  }

  set referencedColumn(String value) {
    _json['referenced_column'] = value;
  }

  String get referencingColumn {
    return _json['referencing_column'] as String;
  }

  set referencingColumn(String value) {
    _json['referencing_column'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ColumnReferences] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ColumnReferencesTypeFactory
    extends SchemanticType<ColumnReferences> {
  const _ColumnReferencesTypeFactory();

  @override
  ColumnReferences parse(Object? json) {
    return ColumnReferences._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ColumnReferences',
    definition: $Schema
        .object(
          properties: {
            'referenced_column': $Schema.string(
              description:
                  'The column in the primary key that are referenced by the referencingColumn.',
            ),
            'referencing_column': $Schema.string(
              description: 'The column that composes the foreign key.',
            ),
          },
          required: ['referenced_column', 'referencing_column'],
          description:
              'The pair of the foreign key column and primary key column.',
        )
        .value,
    dependencies: [],
  );
}

base class ReferencedTable {
  /// Creates a [ReferencedTable] from a JSON map.
  factory ReferencedTable.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ReferencedTable._(this._json);

  ReferencedTable({
    required String datasetId,
    required String projectId,
    required String tableId,
  }) {
    _json = {
      'dataset_id': datasetId,
      'project_id': projectId,
      'table_id': tableId,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ReferencedTable].
  static const SchemanticType<ReferencedTable> $schema =
      _ReferencedTableTypeFactory();

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  String get tableId {
    return _json['table_id'] as String;
  }

  set tableId(String value) {
    _json['table_id'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ReferencedTable] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReferencedTableTypeFactory extends SchemanticType<ReferencedTable> {
  const _ReferencedTableTypeFactory();

  @override
  ReferencedTable parse(Object? json) {
    return ReferencedTable._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ReferencedTable',
    definition: $Schema
        .object(
          properties: {
            'dataset_id': $Schema.string(
              description: 'The ID of the dataset containing this table.',
            ),
            'project_id': $Schema.string(
              description: 'The ID of the project containing this table.',
            ),
            'table_id': $Schema.string(
              description:
                  'The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. Certain operations allow suffixing of the table ID with a partition decorator, such as sample_table＄20190123.',
            ),
          },
          required: ['dataset_id', 'project_id', 'table_id'],
          description:
              'The table that holds the primary key and is referenced by this foreign key.',
        )
        .value,
    dependencies: [],
  );
}

base class ForeignKeys {
  /// Creates a [ForeignKeys] from a JSON map.
  factory ForeignKeys.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ForeignKeys._(this._json);

  ForeignKeys({
    String? name,
    required ColumnReferences columnReferences,
    required ReferencedTable referencedTable,
  }) {
    _json = {
      'name': ?name,
      'column_references': columnReferences.toJson(),
      'referenced_table': referencedTable.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ForeignKeys].
  static const SchemanticType<ForeignKeys> $schema = _ForeignKeysTypeFactory();

  String? get name {
    return _json['name'] as String?;
  }

  set name(String? value) {
    if (value == null) {
      _json.remove('name');
    } else {
      _json['name'] = value;
    }
  }

  ColumnReferences get columnReferences {
    return ColumnReferences.fromJson(
      _json['column_references'] as Map<String, dynamic>,
    );
  }

  set columnReferences(ColumnReferences value) {
    _json['column_references'] = value;
  }

  ReferencedTable get referencedTable {
    return ReferencedTable.fromJson(
      _json['referenced_table'] as Map<String, dynamic>,
    );
  }

  set referencedTable(ReferencedTable value) {
    _json['referenced_table'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ForeignKeys] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ForeignKeysTypeFactory extends SchemanticType<ForeignKeys> {
  const _ForeignKeysTypeFactory();

  @override
  ForeignKeys parse(Object? json) {
    return ForeignKeys._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ForeignKeys',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(
              description: 'Set only if the foreign key constraint is named.',
            ),
            'column_references': $Schema.fromMap({
              '\$ref': r'#/$defs/ColumnReferences',
            }),
            'referenced_table': $Schema.fromMap({
              '\$ref': r'#/$defs/ReferencedTable',
            }),
          },
          required: ['column_references', 'referenced_table'],
          description:
              'Present only if the table has a foreign key. The foreign key is not enforced.',
        )
        .value,
    dependencies: [ColumnReferences.$schema, ReferencedTable.$schema],
  );
}

base class PrimaryKey {
  /// Creates a [PrimaryKey] from a JSON map.
  factory PrimaryKey.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  PrimaryKey._(this._json);

  PrimaryKey({required List<String> columns}) {
    _json = {'columns': columns};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PrimaryKey].
  static const SchemanticType<PrimaryKey> $schema = _PrimaryKeyTypeFactory();

  List<String> get columns {
    return (_json['columns'] as List).cast<String>();
  }

  set columns(List<String> value) {
    _json['columns'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PrimaryKey] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PrimaryKeyTypeFactory extends SchemanticType<PrimaryKey> {
  const _PrimaryKeyTypeFactory();

  @override
  PrimaryKey parse(Object? json) {
    return PrimaryKey._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PrimaryKey',
    definition: $Schema
        .object(
          properties: {
            'columns': $Schema.list(
              description:
                  'The columns that are composed of the primary key constraint.',
              items: $Schema.string(),
            ),
          },
          required: ['columns'],
          description:
              'Represents a primary key constraint on a table\'s columns. Present only if the table has a primary key. The primary key is not enforced.',
        )
        .value,
    dependencies: [],
  );
}

base class TableConstraints {
  /// Creates a [TableConstraints] from a JSON map.
  factory TableConstraints.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TableConstraints._(this._json);

  TableConstraints({List<ForeignKeys>? foreignKeys, PrimaryKey? primaryKey}) {
    _json = {
      'foreign_keys': ?foreignKeys?.map((e) => e.toJson()).toList(),
      'primary_key': ?primaryKey?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TableConstraints].
  static const SchemanticType<TableConstraints> $schema =
      _TableConstraintsTypeFactory();

  List<ForeignKeys>? get foreignKeys {
    return (_json['foreign_keys'] as List?)
        ?.map((e) => ForeignKeys.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set foreignKeys(List<ForeignKeys>? value) {
    if (value == null) {
      _json.remove('foreign_keys');
    } else {
      _json['foreign_keys'] = value.toList();
    }
  }

  PrimaryKey? get primaryKey {
    return _json['primary_key'] == null
        ? null
        : PrimaryKey.fromJson(_json['primary_key'] as Map<String, dynamic>);
  }

  set primaryKey(PrimaryKey? value) {
    if (value == null) {
      _json.remove('primary_key');
    } else {
      _json['primary_key'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TableConstraints] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TableConstraintsTypeFactory
    extends SchemanticType<TableConstraints> {
  const _TableConstraintsTypeFactory();

  @override
  TableConstraints parse(Object? json) {
    return TableConstraints._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TableConstraints',
    definition: $Schema
        .object(
          properties: {
            'foreign_keys': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/ForeignKeys'}),
            ),
            'primary_key': $Schema.fromMap({'\$ref': r'#/$defs/PrimaryKey'}),
          },
          description: 'Defines the primary key and foreign keys.',
        )
        .value,
    dependencies: [ForeignKeys.$schema, PrimaryKey.$schema],
  );
}

base class TableReplicationInfo {
  /// Creates a [TableReplicationInfo] from a JSON map.
  factory TableReplicationInfo.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TableReplicationInfo._(this._json);

  TableReplicationInfo({
    num? replicationIntervalMs,
    required String sourceDatasetId,
    required String sourceProjectId,
    required String sourceTableId,
  }) {
    _json = {
      'replication_interval_ms': ?replicationIntervalMs,
      'source_dataset_id': sourceDatasetId,
      'source_project_id': sourceProjectId,
      'source_table_id': sourceTableId,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TableReplicationInfo].
  static const SchemanticType<TableReplicationInfo> $schema =
      _TableReplicationInfoTypeFactory();

  num? get replicationIntervalMs {
    return _json['replication_interval_ms'] as num?;
  }

  set replicationIntervalMs(num? value) {
    if (value == null) {
      _json.remove('replication_interval_ms');
    } else {
      _json['replication_interval_ms'] = value;
    }
  }

  String get sourceDatasetId {
    return _json['source_dataset_id'] as String;
  }

  set sourceDatasetId(String value) {
    _json['source_dataset_id'] = value;
  }

  String get sourceProjectId {
    return _json['source_project_id'] as String;
  }

  set sourceProjectId(String value) {
    _json['source_project_id'] = value;
  }

  String get sourceTableId {
    return _json['source_table_id'] as String;
  }

  set sourceTableId(String value) {
    _json['source_table_id'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TableReplicationInfo] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TableReplicationInfoTypeFactory
    extends SchemanticType<TableReplicationInfo> {
  const _TableReplicationInfoTypeFactory();

  @override
  TableReplicationInfo parse(Object? json) {
    return TableReplicationInfo._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TableReplicationInfo',
    definition: $Schema
        .object(
          properties: {
            'replication_interval_ms': $Schema.number(
              description:
                  'The interval at which the source materialized view is polled for updates. The default is 300000.',
            ),
            'source_dataset_id': $Schema.string(
              description: 'The ID of the source dataset.',
            ),
            'source_project_id': $Schema.string(
              description: 'The ID of the source project.',
            ),
            'source_table_id': $Schema.string(
              description: 'The ID of the source materialized view.',
            ),
          },
          required: [
            'source_dataset_id',
            'source_project_id',
            'source_table_id',
          ],
          description:
              'Replication info of a table created using "AS REPLICA" DDL like: "CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv".',
        )
        .value,
    dependencies: [],
  );
}

base class TimePartitioning {
  /// Creates a [TimePartitioning] from a JSON map.
  factory TimePartitioning.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TimePartitioning._(this._json);

  TimePartitioning({
    num? expirationMs,
    String? field,
    bool? requirePartitionFilter,
    required String type,
  }) {
    _json = {
      'expiration_ms': ?expirationMs,
      'field': ?field,
      'require_partition_filter': ?requirePartitionFilter,
      'type': type,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TimePartitioning].
  static const SchemanticType<TimePartitioning> $schema =
      _TimePartitioningTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get expirationMs {
    return _json['expiration_ms'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set expirationMs(num? value) {
    if (value == null) {
      _json.remove('expiration_ms');
    } else {
      _json['expiration_ms'] = value;
    }
  }

  String? get field {
    return _json['field'] as String?;
  }

  set field(String? value) {
    if (value == null) {
      _json.remove('field');
    } else {
      _json['field'] = value;
    }
  }

  bool? get requirePartitionFilter {
    return _json['require_partition_filter'] as bool?;
  }

  set requirePartitionFilter(bool? value) {
    if (value == null) {
      _json.remove('require_partition_filter');
    } else {
      _json['require_partition_filter'] = value;
    }
  }

  String get type {
    return _json['type'] as String;
  }

  set type(String value) {
    _json['type'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TimePartitioning] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimePartitioningTypeFactory
    extends SchemanticType<TimePartitioning> {
  const _TimePartitioningTypeFactory();

  @override
  TimePartitioning parse(Object? json) {
    return TimePartitioning._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TimePartitioning',
    definition: $Schema
        .object(
          properties: {
            'expiration_ms': $Schema.number(
              description:
                  'Number of milliseconds for which to keep the storage for a partition.',
            ),
            'field': $Schema.string(
              description:
                  'The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time.',
            ),
            'require_partition_filter': $Schema.boolean(
              description:
                  'If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.',
            ),
            'type': $Schema.string(
              description:
                  'The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.',
            ),
          },
          required: ['type'],
          description:
              'If specified, configures time-based partitioning for this table.',
        )
        .value,
    dependencies: [],
  );
}

base class View {
  /// Creates a [View] from a JSON map.
  factory View.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  View._(this._json);

  View({required String query, bool? useLegacySql}) {
    _json = {'query': query, 'use_legacy_sql': ?useLegacySql};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [View].
  static const SchemanticType<View> $schema = _ViewTypeFactory();

  String get query {
    return _json['query'] as String;
  }

  set query(String value) {
    _json['query'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get useLegacySql {
    return _json['use_legacy_sql'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set useLegacySql(bool? value) {
    if (value == null) {
      _json.remove('use_legacy_sql');
    } else {
      _json['use_legacy_sql'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [View] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ViewTypeFactory extends SchemanticType<View> {
  const _ViewTypeFactory();

  @override
  View parse(Object? json) {
    return View._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'View',
    definition: $Schema
        .object(
          properties: {
            'query': $Schema.string(
              description:
                  'A query that BigQuery executes when the view is referenced.',
            ),
            'use_legacy_sql': $Schema.boolean(
              description:
                  'Specifies whether to use BigQuery\'s legacy SQL for this view. If set to false, the view will use BigQuery\'s standard SQL',
            ),
          },
          required: ['query'],
          description: 'If specified, configures this table as a view.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleBigqueryTable {
  /// Creates a [GoogleBigqueryTable] from a JSON map.
  factory GoogleBigqueryTable.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleBigqueryTable._(this._json);

  GoogleBigqueryTable({
    List<String>? clustering,
    required String datasetId,
    bool? deletionProtection,
    String? description,
    num? expirationTime,
    String? friendlyName,
    String? id,
    bool? ignoreAutoGeneratedSchema,
    List<String>? ignoreSchemaChanges,
    Map<String, String>? labels,
    String? maxStaleness,
    String? project,
    bool? requirePartitionFilter,
    Map<String, String>? resourceTags,
    String? schema,
    required String tableId,
    String? tableMetadataView,
    BiglakeConfiguration? biglakeConfiguration,
    EncryptionConfiguration? encryptionConfiguration,
    ExternalCatalogTableOptions? externalCatalogTableOptions,
    ExternalDataConfiguration? externalDataConfiguration,
    MaterializedView? materializedView,
    RangePartitioning? rangePartitioning,
    SchemaForeignTypeInfo? schemaForeignTypeInfo,
    TableConstraints? tableConstraints,
    TableReplicationInfo? tableReplicationInfo,
    TimePartitioning? timePartitioning,
    View? view,
  }) {
    _json = {
      'clustering': ?clustering,
      'dataset_id': datasetId,
      'deletion_protection': ?deletionProtection,
      'description': ?description,
      'expiration_time': ?expirationTime,
      'friendly_name': ?friendlyName,
      'id': ?id,
      'ignore_auto_generated_schema': ?ignoreAutoGeneratedSchema,
      'ignore_schema_changes': ?ignoreSchemaChanges,
      'labels': ?labels,
      'max_staleness': ?maxStaleness,
      'project': ?project,
      'require_partition_filter': ?requirePartitionFilter,
      'resource_tags': ?resourceTags,
      'schema': ?schema,
      'table_id': tableId,
      'table_metadata_view': ?tableMetadataView,
      'biglake_configuration': ?biglakeConfiguration?.toJson(),
      'encryption_configuration': ?encryptionConfiguration?.toJson(),
      'external_catalog_table_options': ?externalCatalogTableOptions?.toJson(),
      'external_data_configuration': ?externalDataConfiguration?.toJson(),
      'materialized_view': ?materializedView?.toJson(),
      'range_partitioning': ?rangePartitioning?.toJson(),
      'schema_foreign_type_info': ?schemaForeignTypeInfo?.toJson(),
      'table_constraints': ?tableConstraints?.toJson(),
      'table_replication_info': ?tableReplicationInfo?.toJson(),
      'time_partitioning': ?timePartitioning?.toJson(),
      'view': ?view?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleBigqueryTable].
  static const SchemanticType<GoogleBigqueryTable> $schema =
      _GoogleBigqueryTableTypeFactory();

  List<String>? get clustering {
    return (_json['clustering'] as List?)?.cast<String>();
  }

  set clustering(List<String>? value) {
    if (value == null) {
      _json.remove('clustering');
    } else {
      _json['clustering'] = value;
    }
  }

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  bool? get deletionProtection {
    return _json['deletion_protection'] as bool?;
  }

  set deletionProtection(bool? value) {
    if (value == null) {
      _json.remove('deletion_protection');
    } else {
      _json['deletion_protection'] = value;
    }
  }

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get expirationTime {
    return _json['expiration_time'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set expirationTime(num? value) {
    if (value == null) {
      _json.remove('expiration_time');
    } else {
      _json['expiration_time'] = value;
    }
  }

  String? get friendlyName {
    return _json['friendly_name'] as String?;
  }

  set friendlyName(String? value) {
    if (value == null) {
      _json.remove('friendly_name');
    } else {
      _json['friendly_name'] = value;
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

  bool? get ignoreAutoGeneratedSchema {
    return _json['ignore_auto_generated_schema'] as bool?;
  }

  set ignoreAutoGeneratedSchema(bool? value) {
    if (value == null) {
      _json.remove('ignore_auto_generated_schema');
    } else {
      _json['ignore_auto_generated_schema'] = value;
    }
  }

  List<String>? get ignoreSchemaChanges {
    return (_json['ignore_schema_changes'] as List?)?.cast<String>();
  }

  set ignoreSchemaChanges(List<String>? value) {
    if (value == null) {
      _json.remove('ignore_schema_changes');
    } else {
      _json['ignore_schema_changes'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  String? get maxStaleness {
    return _json['max_staleness'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxStaleness(String? value) {
    if (value == null) {
      _json.remove('max_staleness');
    } else {
      _json['max_staleness'] = value;
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

  bool? get requirePartitionFilter {
    return _json['require_partition_filter'] as bool?;
  }

  set requirePartitionFilter(bool? value) {
    if (value == null) {
      _json.remove('require_partition_filter');
    } else {
      _json['require_partition_filter'] = value;
    }
  }

  Map<String, String>? get resourceTags {
    return (_json['resource_tags'] as Map?)?.cast<String, String>();
  }

  set resourceTags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('resource_tags');
    } else {
      _json['resource_tags'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get schema {
    return _json['schema'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set schema(String? value) {
    if (value == null) {
      _json.remove('schema');
    } else {
      _json['schema'] = value;
    }
  }

  String get tableId {
    return _json['table_id'] as String;
  }

  set tableId(String value) {
    _json['table_id'] = value;
  }

  String? get tableMetadataView {
    return _json['table_metadata_view'] as String?;
  }

  set tableMetadataView(String? value) {
    if (value == null) {
      _json.remove('table_metadata_view');
    } else {
      _json['table_metadata_view'] = value;
    }
  }

  BiglakeConfiguration? get biglakeConfiguration {
    return _json['biglake_configuration'] == null
        ? null
        : BiglakeConfiguration.fromJson(
            _json['biglake_configuration'] as Map<String, dynamic>,
          );
  }

  set biglakeConfiguration(BiglakeConfiguration? value) {
    if (value == null) {
      _json.remove('biglake_configuration');
    } else {
      _json['biglake_configuration'] = value;
    }
  }

  EncryptionConfiguration? get encryptionConfiguration {
    return _json['encryption_configuration'] == null
        ? null
        : EncryptionConfiguration.fromJson(
            _json['encryption_configuration'] as Map<String, dynamic>,
          );
  }

  set encryptionConfiguration(EncryptionConfiguration? value) {
    if (value == null) {
      _json.remove('encryption_configuration');
    } else {
      _json['encryption_configuration'] = value;
    }
  }

  ExternalCatalogTableOptions? get externalCatalogTableOptions {
    return _json['external_catalog_table_options'] == null
        ? null
        : ExternalCatalogTableOptions.fromJson(
            _json['external_catalog_table_options'] as Map<String, dynamic>,
          );
  }

  set externalCatalogTableOptions(ExternalCatalogTableOptions? value) {
    if (value == null) {
      _json.remove('external_catalog_table_options');
    } else {
      _json['external_catalog_table_options'] = value;
    }
  }

  ExternalDataConfiguration? get externalDataConfiguration {
    return _json['external_data_configuration'] == null
        ? null
        : ExternalDataConfiguration.fromJson(
            _json['external_data_configuration'] as Map<String, dynamic>,
          );
  }

  set externalDataConfiguration(ExternalDataConfiguration? value) {
    if (value == null) {
      _json.remove('external_data_configuration');
    } else {
      _json['external_data_configuration'] = value;
    }
  }

  MaterializedView? get materializedView {
    return _json['materialized_view'] == null
        ? null
        : MaterializedView.fromJson(
            _json['materialized_view'] as Map<String, dynamic>,
          );
  }

  set materializedView(MaterializedView? value) {
    if (value == null) {
      _json.remove('materialized_view');
    } else {
      _json['materialized_view'] = value;
    }
  }

  RangePartitioning? get rangePartitioning {
    return _json['range_partitioning'] == null
        ? null
        : RangePartitioning.fromJson(
            _json['range_partitioning'] as Map<String, dynamic>,
          );
  }

  set rangePartitioning(RangePartitioning? value) {
    if (value == null) {
      _json.remove('range_partitioning');
    } else {
      _json['range_partitioning'] = value;
    }
  }

  SchemaForeignTypeInfo? get schemaForeignTypeInfo {
    return _json['schema_foreign_type_info'] == null
        ? null
        : SchemaForeignTypeInfo.fromJson(
            _json['schema_foreign_type_info'] as Map<String, dynamic>,
          );
  }

  set schemaForeignTypeInfo(SchemaForeignTypeInfo? value) {
    if (value == null) {
      _json.remove('schema_foreign_type_info');
    } else {
      _json['schema_foreign_type_info'] = value;
    }
  }

  TableConstraints? get tableConstraints {
    return _json['table_constraints'] == null
        ? null
        : TableConstraints.fromJson(
            _json['table_constraints'] as Map<String, dynamic>,
          );
  }

  set tableConstraints(TableConstraints? value) {
    if (value == null) {
      _json.remove('table_constraints');
    } else {
      _json['table_constraints'] = value;
    }
  }

  TableReplicationInfo? get tableReplicationInfo {
    return _json['table_replication_info'] == null
        ? null
        : TableReplicationInfo.fromJson(
            _json['table_replication_info'] as Map<String, dynamic>,
          );
  }

  set tableReplicationInfo(TableReplicationInfo? value) {
    if (value == null) {
      _json.remove('table_replication_info');
    } else {
      _json['table_replication_info'] = value;
    }
  }

  TimePartitioning? get timePartitioning {
    return _json['time_partitioning'] == null
        ? null
        : TimePartitioning.fromJson(
            _json['time_partitioning'] as Map<String, dynamic>,
          );
  }

  set timePartitioning(TimePartitioning? value) {
    if (value == null) {
      _json.remove('time_partitioning');
    } else {
      _json['time_partitioning'] = value;
    }
  }

  View? get view {
    return _json['view'] == null
        ? null
        : View.fromJson(_json['view'] as Map<String, dynamic>);
  }

  set view(View? value) {
    if (value == null) {
      _json.remove('view');
    } else {
      _json['view'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleBigqueryTable] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleBigqueryTableTypeFactory
    extends SchemanticType<GoogleBigqueryTable> {
  const _GoogleBigqueryTableTypeFactory();

  @override
  GoogleBigqueryTable parse(Object? json) {
    return GoogleBigqueryTable._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleBigqueryTable',
    definition: $Schema
        .object(
          properties: {
            'clustering': $Schema.list(
              description:
                  'Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order.',
              items: $Schema.string(),
            ),
            'dataset_id': $Schema.string(
              description:
                  'The dataset ID to create the table in. Changing this forces a new resource to be created.',
            ),
            'deletion_protection': $Schema.boolean(
              description:
                  'Whether Terraform will be prevented from destroying the instance. When the field is set to true or unset in Terraform state, a terraform apply or terraform destroy that would delete the table will fail. When the field is set to false, deleting the table is allowed.',
            ),
            'description': $Schema.string(
              description: 'The field description.',
            ),
            'expiration_time': $Schema.number(
              description:
                  'The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed.',
            ),
            'friendly_name': $Schema.string(
              description: 'A descriptive name for the table.',
            ),
            'id': $Schema.string(),
            'ignore_auto_generated_schema': $Schema.boolean(
              description:
                  'Whether Terraform will prevent implicitly added columns in schema from showing diff.',
            ),
            'ignore_schema_changes': $Schema.list(
              description: 'Mention which fields in schema are to be ignored',
              items: $Schema.string(),
            ),
            'labels': $Schema.object(
              description:
                  'A mapping of labels to assign to the resource.\n\n				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\n				Please refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'max_staleness': $Schema.string(
              description:
                  'The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of [SQL IntervalValue type](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#interval_type).',
            ),
            'project': $Schema.string(
              description:
                  'The ID of the project in which the resource belongs.',
            ),
            'require_partition_filter': $Schema.boolean(
              description:
                  'If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.',
            ),
            'resource_tags': $Schema.object(
              description:
                  'The tags attached to this table. Tag keys are globally unique. Tag key is expected to be in the namespaced format, for example "123456789012/environment" where 123456789012 is the ID of the parent organization or project resource for this tag key. Tag value is expected to be the short name, for example "Production".',
              additionalProperties: $Schema.string(),
            ),
            'schema': $Schema.string(
              description: 'A JSON schema for the table.',
            ),
            'table_id': $Schema.string(
              description:
                  'A unique ID for the resource. Changing this forces a new resource to be created.',
            ),
            'table_metadata_view': $Schema.string(
              description:
                  'View sets the optional parameter "view": Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned. Possible values: TABLE_METADATA_VIEW_UNSPECIFIED, BASIC, STORAGE_STATS, FULL',
            ),
            'biglake_configuration': $Schema.fromMap({
              '\$ref': r'#/$defs/BiglakeConfiguration',
            }),
            'encryption_configuration': $Schema.fromMap({
              '\$ref': r'#/$defs/EncryptionConfiguration',
            }),
            'external_catalog_table_options': $Schema.fromMap({
              '\$ref': r'#/$defs/ExternalCatalogTableOptions',
            }),
            'external_data_configuration': $Schema.fromMap({
              '\$ref': r'#/$defs/ExternalDataConfiguration',
            }),
            'materialized_view': $Schema.fromMap({
              '\$ref': r'#/$defs/MaterializedView',
            }),
            'range_partitioning': $Schema.fromMap({
              '\$ref': r'#/$defs/RangePartitioning',
            }),
            'schema_foreign_type_info': $Schema.fromMap({
              '\$ref': r'#/$defs/SchemaForeignTypeInfo',
            }),
            'table_constraints': $Schema.fromMap({
              '\$ref': r'#/$defs/TableConstraints',
            }),
            'table_replication_info': $Schema.fromMap({
              '\$ref': r'#/$defs/TableReplicationInfo',
            }),
            'time_partitioning': $Schema.fromMap({
              '\$ref': r'#/$defs/TimePartitioning',
            }),
            'view': $Schema.fromMap({'\$ref': r'#/$defs/View'}),
          },
          required: ['dataset_id', 'table_id'],
        )
        .value,
    dependencies: [
      BiglakeConfiguration.$schema,
      EncryptionConfiguration.$schema,
      ExternalCatalogTableOptions.$schema,
      ExternalDataConfiguration.$schema,
      MaterializedView.$schema,
      RangePartitioning.$schema,
      SchemaForeignTypeInfo.$schema,
      TableConstraints.$schema,
      TableReplicationInfo.$schema,
      TimePartitioning.$schema,
      View.$schema,
    ],
  );
}

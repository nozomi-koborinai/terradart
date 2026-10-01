// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_table`.
const Set<String> _googleBigqueryTableSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Partition unit for `time_partitioning.type`. Maps to BigQuery's
/// supported partition granularities.
extension type const TimePartitioningType._(TfArg<String> _)
    implements TfArg<String> {
  TimePartitioningType.variable(String name) : this._(TfArg.variable(name));
  TimePartitioningType.expression(String template)
    : this._(TfArg.expression(template));
  const TimePartitioningType.arg(TfArg<String> arg) : this._(arg);

  static const day = TimePartitioningType._(TfArgLiteral('DAY'));
  static const hour = TimePartitioningType._(TfArgLiteral('HOUR'));
  static const month = TimePartitioningType._(TfArgLiteral('MONTH'));
  static const year = TimePartitioningType._(TfArgLiteral('YEAR'));

  static const List<TimePartitioningType> values = [day, hour, month, year];
}

/// Source format for `external_data_configuration.source_format`. The
/// `googleSheets` variant additionally requires
/// `https://www.googleapis.com/auth/drive.readonly` on the service
/// account performing the read.
extension type const ExternalDataSourceFormat._(TfArg<String> _)
    implements TfArg<String> {
  ExternalDataSourceFormat.variable(String name) : this._(TfArg.variable(name));
  ExternalDataSourceFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ExternalDataSourceFormat.arg(TfArg<String> arg) : this._(arg);

  static const csv = ExternalDataSourceFormat._(TfArgLiteral('CSV'));
  static const newlineDelimitedJson = ExternalDataSourceFormat._(
    TfArgLiteral('NEWLINE_DELIMITED_JSON'),
  );
  static const avro = ExternalDataSourceFormat._(TfArgLiteral('AVRO'));
  static const parquet = ExternalDataSourceFormat._(TfArgLiteral('PARQUET'));
  static const orc = ExternalDataSourceFormat._(TfArgLiteral('ORC'));
  static const datastoreBackup = ExternalDataSourceFormat._(
    TfArgLiteral('DATASTORE_BACKUP'),
  );
  static const bigtable = ExternalDataSourceFormat._(TfArgLiteral('BIGTABLE'));
  static const googleSheets = ExternalDataSourceFormat._(
    TfArgLiteral('GOOGLE_SHEETS'),
  );
  static const iceberg = ExternalDataSourceFormat._(TfArgLiteral('ICEBERG'));
  static const deltaLake = ExternalDataSourceFormat._(
    TfArgLiteral('DELTA_LAKE'),
  );

  static const List<ExternalDataSourceFormat> values = [
    csv,
    newlineDelimitedJson,
    avro,
    parquet,
    orc,
    datastoreBackup,
    bigtable,
    googleSheets,
    iceberg,
    deltaLake,
  ];
}

/// Compression for `external_data_configuration.compression`. BigQuery
/// only accepts these two values; format-specific compression (Snappy
/// for Parquet, Deflate for Avro, etc.) is inferred from the file.
extension type const ExternalDataCompression._(TfArg<String> _)
    implements TfArg<String> {
  ExternalDataCompression.variable(String name) : this._(TfArg.variable(name));
  ExternalDataCompression.expression(String template)
    : this._(TfArg.expression(template));
  const ExternalDataCompression.arg(TfArg<String> arg) : this._(arg);

  static const none = ExternalDataCompression._(TfArgLiteral('NONE'));
  static const gzip = ExternalDataCompression._(TfArgLiteral('GZIP'));

  static const List<ExternalDataCompression> values = [none, gzip];
}

/// File-set spec for `external_data_configuration.file_set_spec_type`.
/// `fileSystemMatch` (default) glob-expands `source_uris` against the
/// underlying object store; `newLineDelimitedManifest` treats each
/// source URI as a manifest file containing one object URI per line.
extension type const FileSetSpecType._(TfArg<String> _)
    implements TfArg<String> {
  FileSetSpecType.variable(String name) : this._(TfArg.variable(name));
  FileSetSpecType.expression(String template)
    : this._(TfArg.expression(template));
  const FileSetSpecType.arg(TfArg<String> arg) : this._(arg);

  static const fileSystemMatch = FileSetSpecType._(
    TfArgLiteral('FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH'),
  );
  static const newLineDelimitedManifest = FileSetSpecType._(
    TfArgLiteral('FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST'),
  );

  static const List<FileSetSpecType> values = [
    fileSystemMatch,
    newLineDelimitedManifest,
  ];
}

/// Metadata cache mode for
/// `external_data_configuration.metadata_cache_mode`. `automatic` lets
/// BigQuery refresh the cache on a service-controlled cadence;
/// `manual` requires explicit `BQ.REFRESH_EXTERNAL_METADATA_CACHE`
/// calls.
extension type const MetadataCacheMode._(TfArg<String> _)
    implements TfArg<String> {
  MetadataCacheMode.variable(String name) : this._(TfArg.variable(name));
  MetadataCacheMode.expression(String template)
    : this._(TfArg.expression(template));
  const MetadataCacheMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = MetadataCacheMode._(TfArgLiteral('AUTOMATIC'));
  static const manual = MetadataCacheMode._(TfArgLiteral('MANUAL'));

  static const List<MetadataCacheMode> values = [automatic, manual];
}

/// Object metadata for `external_data_configuration.object_metadata`.
/// Set this to create an Object Table (a listing of objects + their
/// metadata) rather than a regular external table; when set,
/// `sourceFormat` must be omitted.
extension type const ObjectMetadata._(TfArg<String> _)
    implements TfArg<String> {
  ObjectMetadata.variable(String name) : this._(TfArg.variable(name));
  ObjectMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const ObjectMetadata.arg(TfArg<String> arg) : this._(arg);

  static const simple = ObjectMetadata._(TfArgLiteral('SIMPLE'));
  static const directory = ObjectMetadata._(TfArgLiteral('DIRECTORY'));

  static const List<ObjectMetadata> values = [simple, directory];
}

/// View for `table_metadata_view`. Controls how much detail BigQuery
/// returns when reading the table — `basic` (default) skips storage
/// stats, `storageStats` adds size counters, `full` includes all
/// optional fields. `unspecified` is the no-op default.
extension type const TableMetadataView._(TfArg<String> _)
    implements TfArg<String> {
  TableMetadataView.variable(String name) : this._(TfArg.variable(name));
  TableMetadataView.expression(String template)
    : this._(TfArg.expression(template));
  const TableMetadataView.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = TableMetadataView._(
    TfArgLiteral('TABLE_METADATA_VIEW_UNSPECIFIED'),
  );
  static const basic = TableMetadataView._(TfArgLiteral('BASIC'));
  static const storageStats = TableMetadataView._(
    TfArgLiteral('STORAGE_STATS'),
  );
  static const full = TableMetadataView._(TfArgLiteral('FULL'));

  static const List<TableMetadataView> values = [
    unspecified,
    basic,
    storageStats,
    full,
  ];
}

// ===========================================================================
// Partitioning blocks
// ===========================================================================

// ===========================================================================
// Materialized view / view
// ===========================================================================

// ===========================================================================
// External data configuration
// ===========================================================================

// ===========================================================================
// Encryption / constraints / replication / biglake
// ===========================================================================

/// Typed helper for the `biglake_configuration` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableBiglakeConfiguration {
  const BigqueryTableBiglakeConfiguration({
    required this.connectionId,
    required this.fileFormat,
    required this.storageUri,
    required this.tableFormat,
  });

  final TfArg<String> connectionId;

  final TfArg<String> fileFormat;

  final TfArg<String> storageUri;

  final TfArg<String> tableFormat;

  Map<String, Object?> encode() => {
    'connection_id': connectionId.toTfJson(),
    'file_format': fileFormat.toTfJson(),
    'storage_uri': storageUri.toTfJson(),
    'table_format': tableFormat.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableEncryptionConfiguration {
  const BigqueryTableEncryptionConfiguration({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `external_catalog_table_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableExternalCatalogTableOptions {
  const BigqueryTableExternalCatalogTableOptions({
    this.connectionId,
    this.parameters,
    this.storageDescriptor,
  });

  final TfArg<String>? connectionId;

  final TfArg<Map<String, String>>? parameters;

  final BigqueryTableStorageDescriptor? storageDescriptor;

  Map<String, Object?> encode() => {
    'connection_id': ?connectionId?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'storage_descriptor': ?storageDescriptor?.encode(),
  };
}

/// Typed helper for the `external_catalog_table_options.storage_descriptor` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableStorageDescriptor {
  const BigqueryTableStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  final TfArg<String>? inputFormat;

  final TfArg<String>? locationUri;

  final TfArg<String>? outputFormat;

  final BigqueryTableSerdeInfo? serdeInfo;

  Map<String, Object?> encode() => {
    'input_format': ?inputFormat?.toTfJson(),
    'location_uri': ?locationUri?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'serde_info': ?serdeInfo?.encode(),
  };
}

/// Typed helper for the `external_catalog_table_options.storage_descriptor.serde_info` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableSerdeInfo {
  const BigqueryTableSerdeInfo({
    this.name,
    this.parameters,
    required this.serializationLibrary,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String> serializationLibrary;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'serialization_library': serializationLibrary.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableExternalDataConfiguration {
  const BigqueryTableExternalDataConfiguration({
    required this.autodetect,
    this.compression,
    this.connectionId,
    this.decimalTargetTypes,
    this.fileSetSpecType,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    required this.sourceUris,
    this.avroOptions,
    this.bigtableOptions,
    this.csvOptions,
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.jsonOptions,
    this.parquetOptions,
  });

  final TfArg<bool> autodetect;

  final ExternalDataCompression? compression;

  final TfArg<String>? connectionId;

  final TfArg<List<String>>? decimalTargetTypes;

  final FileSetSpecType? fileSetSpecType;

  final TfArg<bool>? ignoreUnknownValues;

  final TfArg<String>? jsonExtension;

  final TfArg<num>? maxBadRecords;

  final MetadataCacheMode? metadataCacheMode;

  final ObjectMetadata? objectMetadata;

  final TfArg<String>? referenceFileSchemaUri;

  final TfArg<String>? schema;

  final ExternalDataSourceFormat? sourceFormat;

  final TfArg<List<String>> sourceUris;

  final BigqueryTableAvroOptions? avroOptions;

  final BigqueryTableBigtableOptions? bigtableOptions;

  final BigqueryTableCsvOptions? csvOptions;

  final BigqueryTableGoogleSheetsOptions? googleSheetsOptions;

  final BigqueryTableHivePartitioningOptions? hivePartitioningOptions;

  final BigqueryTableJsonOptions? jsonOptions;

  final BigqueryTableParquetOptions? parquetOptions;

  Map<String, Object?> encode() => {
    'autodetect': autodetect.toTfJson(),
    'compression': ?compression?.toTfJson(),
    'connection_id': ?connectionId?.toTfJson(),
    'decimal_target_types': ?decimalTargetTypes?.toTfJson(),
    'file_set_spec_type': ?fileSetSpecType?.toTfJson(),
    'ignore_unknown_values': ?ignoreUnknownValues?.toTfJson(),
    'json_extension': ?jsonExtension?.toTfJson(),
    'max_bad_records': ?maxBadRecords?.toTfJson(),
    'metadata_cache_mode': ?metadataCacheMode?.toTfJson(),
    'object_metadata': ?objectMetadata?.toTfJson(),
    'reference_file_schema_uri': ?referenceFileSchemaUri?.toTfJson(),
    'schema': ?schema?.toTfJson(),
    'source_format': ?sourceFormat?.toTfJson(),
    'source_uris': sourceUris.toTfJson(),
    'avro_options': ?avroOptions?.encode(),
    'bigtable_options': ?bigtableOptions?.encode(),
    'csv_options': ?csvOptions?.encode(),
    'google_sheets_options': ?googleSheetsOptions?.encode(),
    'hive_partitioning_options': ?hivePartitioningOptions?.encode(),
    'json_options': ?jsonOptions?.encode(),
    'parquet_options': ?parquetOptions?.encode(),
  };
}

/// Typed helper for the `external_data_configuration.avro_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableAvroOptions {
  const BigqueryTableAvroOptions({required this.useAvroLogicalTypes});

  final TfArg<bool> useAvroLogicalTypes;

  Map<String, Object?> encode() => {
    'use_avro_logical_types': useAvroLogicalTypes.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration.bigtable_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableBigtableOptions {
  const BigqueryTableBigtableOptions({
    this.ignoreUnspecifiedColumnFamilies,
    this.outputColumnFamiliesAsJson,
    this.readRowkeyAsString,
    this.columnFamily,
  });

  final TfArg<bool>? ignoreUnspecifiedColumnFamilies;

  final TfArg<bool>? outputColumnFamiliesAsJson;

  final TfArg<bool>? readRowkeyAsString;

  final List<BigqueryTableColumnFamily>? columnFamily;

  Map<String, Object?> encode() => {
    'ignore_unspecified_column_families': ?ignoreUnspecifiedColumnFamilies
        ?.toTfJson(),
    'output_column_families_as_json': ?outputColumnFamiliesAsJson?.toTfJson(),
    'read_rowkey_as_string': ?readRowkeyAsString?.toTfJson(),
    if (columnFamily != null)
      'column_family': [for (final e in columnFamily!) e.encode()],
  };
}

/// Typed helper for the `external_data_configuration.bigtable_options.column_family` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableColumnFamily {
  const BigqueryTableColumnFamily({
    this.encoding,
    this.familyId,
    this.onlyReadLatest,
    this.type,
    this.column,
  });

  final TfArg<String>? encoding;

  final TfArg<String>? familyId;

  final TfArg<bool>? onlyReadLatest;

  final TfArg<String>? type;

  final List<BigqueryTableColumn>? column;

  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'family_id': ?familyId?.toTfJson(),
    'only_read_latest': ?onlyReadLatest?.toTfJson(),
    'type': ?type?.toTfJson(),
    if (column != null) 'column': [for (final e in column!) e.encode()],
  };
}

/// Typed helper for the `external_data_configuration.bigtable_options.column_family.column` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableColumn {
  const BigqueryTableColumn({
    this.encoding,
    this.fieldName,
    this.onlyReadLatest,
    this.qualifierEncoded,
    this.qualifierString,
    this.type,
  });

  final TfArg<String>? encoding;

  final TfArg<String>? fieldName;

  final TfArg<bool>? onlyReadLatest;

  final TfArg<String>? qualifierEncoded;

  final TfArg<String>? qualifierString;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_name': ?fieldName?.toTfJson(),
    'only_read_latest': ?onlyReadLatest?.toTfJson(),
    'qualifier_encoded': ?qualifierEncoded?.toTfJson(),
    'qualifier_string': ?qualifierString?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration.csv_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableCsvOptions {
  const BigqueryTableCsvOptions({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.encoding,
    this.fieldDelimiter,
    required this.quote,
    this.skipLeadingRows,
    this.sourceColumnMatch,
  });

  final TfArg<bool>? allowJaggedRows;

  final TfArg<bool>? allowQuotedNewlines;

  final TfArg<String>? encoding;

  final TfArg<String>? fieldDelimiter;

  final TfArg<String> quote;

  final TfArg<num>? skipLeadingRows;

  final TfArg<String>? sourceColumnMatch;

  Map<String, Object?> encode() => {
    'allow_jagged_rows': ?allowJaggedRows?.toTfJson(),
    'allow_quoted_newlines': ?allowQuotedNewlines?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'quote': quote.toTfJson(),
    'skip_leading_rows': ?skipLeadingRows?.toTfJson(),
    'source_column_match': ?sourceColumnMatch?.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration.google_sheets_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableGoogleSheetsOptions {
  const BigqueryTableGoogleSheetsOptions({this.range, this.skipLeadingRows});

  final TfArg<String>? range;

  final TfArg<num>? skipLeadingRows;

  Map<String, Object?> encode() => {
    'range': ?range?.toTfJson(),
    'skip_leading_rows': ?skipLeadingRows?.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration.hive_partitioning_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableHivePartitioningOptions {
  const BigqueryTableHivePartitioningOptions({
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  final TfArg<String>? mode;

  final TfArg<bool>? requirePartitionFilter;

  final TfArg<String>? sourceUriPrefix;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'require_partition_filter': ?requirePartitionFilter?.toTfJson(),
    'source_uri_prefix': ?sourceUriPrefix?.toTfJson(),
  };
}

/// Typed helper for the `external_data_configuration.json_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableJsonOptions {
  const BigqueryTableJsonOptions({this.encoding});

  final TfArg<String>? encoding;

  Map<String, Object?> encode() => {'encoding': ?encoding?.toTfJson()};
}

/// Typed helper for the `external_data_configuration.parquet_options` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableParquetOptions {
  const BigqueryTableParquetOptions({
    this.enableListInference,
    this.enumAsString,
  });

  final TfArg<bool>? enableListInference;

  final TfArg<bool>? enumAsString;

  Map<String, Object?> encode() => {
    'enable_list_inference': ?enableListInference?.toTfJson(),
    'enum_as_string': ?enumAsString?.toTfJson(),
  };
}

/// Typed helper for the `materialized_view` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableMaterializedView {
  const BigqueryTableMaterializedView({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    required this.query,
    this.refreshIntervalMs,
  });

  final TfArg<bool>? allowNonIncrementalDefinition;

  final TfArg<bool>? enableRefresh;

  final TfArg<String> query;

  final TfArg<num>? refreshIntervalMs;

  Map<String, Object?> encode() => {
    'allow_non_incremental_definition': ?allowNonIncrementalDefinition
        ?.toTfJson(),
    'enable_refresh': ?enableRefresh?.toTfJson(),
    'query': query.toTfJson(),
    'refresh_interval_ms': ?refreshIntervalMs?.toTfJson(),
  };
}

/// Typed helper for the `range_partitioning` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableRangePartitioning {
  const BigqueryTableRangePartitioning({
    required this.field,
    required this.range,
  });

  final TfArg<String> field;

  final BigqueryTableRange range;

  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'range': range.encode(),
  };
}

/// Typed helper for the `range_partitioning.range` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableRange {
  const BigqueryTableRange({
    required this.end,
    required this.interval,
    required this.start,
  });

  final TfArg<num> end;

  final TfArg<num> interval;

  final TfArg<num> start;

  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'interval': interval.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `schema_foreign_type_info` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableSchemaForeignTypeInfo {
  const BigqueryTableSchemaForeignTypeInfo({required this.typeSystem});

  final TfArg<String> typeSystem;

  Map<String, Object?> encode() => {'type_system': typeSystem.toTfJson()};
}

/// Typed helper for the `table_constraints` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableConstraints {
  const BigqueryTableConstraints({this.foreignKeys, this.primaryKey});

  final List<BigqueryTableForeignKeys>? foreignKeys;

  final BigqueryTablePrimaryKey? primaryKey;

  Map<String, Object?> encode() => {
    if (foreignKeys != null)
      'foreign_keys': [for (final e in foreignKeys!) e.encode()],
    'primary_key': ?primaryKey?.encode(),
  };
}

/// Typed helper for the `table_constraints.foreign_keys` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableForeignKeys {
  const BigqueryTableForeignKeys({
    this.name,
    required this.columnReferences,
    required this.referencedTable,
  });

  final TfArg<String>? name;

  final BigqueryTableColumnReferences columnReferences;

  final BigqueryTableReferencedTable referencedTable;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'column_references': columnReferences.encode(),
    'referenced_table': referencedTable.encode(),
  };
}

/// Typed helper for the `table_constraints.foreign_keys.column_references` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableColumnReferences {
  const BigqueryTableColumnReferences({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  final TfArg<String> referencedColumn;

  final TfArg<String> referencingColumn;

  Map<String, Object?> encode() => {
    'referenced_column': referencedColumn.toTfJson(),
    'referencing_column': referencingColumn.toTfJson(),
  };
}

/// Typed helper for the `table_constraints.foreign_keys.referenced_table` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableReferencedTable {
  const BigqueryTableReferencedTable({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `table_constraints.primary_key` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTablePrimaryKey {
  const BigqueryTablePrimaryKey({required this.columns});

  final TfArg<List<String>> columns;

  Map<String, Object?> encode() => {'columns': columns.toTfJson()};
}

/// Typed helper for the `table_replication_info` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableReplicationInfo {
  const BigqueryTableReplicationInfo({
    this.replicationIntervalMs,
    required this.sourceDatasetId,
    required this.sourceProjectId,
    required this.sourceTableId,
  });

  final TfArg<num>? replicationIntervalMs;

  final TfArg<String> sourceDatasetId;

  final TfArg<String> sourceProjectId;

  final TfArg<String> sourceTableId;

  Map<String, Object?> encode() => {
    'replication_interval_ms': ?replicationIntervalMs?.toTfJson(),
    'source_dataset_id': sourceDatasetId.toTfJson(),
    'source_project_id': sourceProjectId.toTfJson(),
    'source_table_id': sourceTableId.toTfJson(),
  };
}

/// Typed helper for the `time_partitioning` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableTimePartitioning {
  const BigqueryTableTimePartitioning({
    this.expirationMs,
    this.field,
    this.requirePartitionFilter,
    required this.type,
  });

  final TfArg<num>? expirationMs;

  final TfArg<String>? field;

  final TfArg<bool>? requirePartitionFilter;

  final TimePartitioningType type;

  Map<String, Object?> encode() => {
    'expiration_ms': ?expirationMs?.toTfJson(),
    'field': ?field?.toTfJson(),
    'require_partition_filter': ?requirePartitionFilter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `view` block of
/// `google_bigquery_table` (derived from provider schema).
@immutable
final class BigqueryTableView {
  const BigqueryTableView({required this.query, this.useLegacySql});

  final TfArg<String> query;

  final TfArg<bool>? useLegacySql;

  Map<String, Object?> encode() => {
    'query': query.toTfJson(),
    'use_legacy_sql': ?useLegacySql?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_table`.
///
/// A Table that belongs to a Dataset
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_table.`).
/// - `datasetId`: parent BigQuery dataset. Typically
///   `dataset.ref` where `dataset` is a
///   `GoogleBigqueryDataset`.
/// - `tableId`: BigQuery table id. Letters/digits/underscores, up to 1024
///   chars. Immutable after create.
///
/// The `schema` slot is a `TfArg<String>?` — pass a JSON-encoded column
/// definition string. Most callers will use `jsonEncode([...])` from
/// `dart:convert` to assemble the schema at call site. Modeling the
/// column-level schema as Dart is out of scope for v0.0.x.
///
/// Partitioning blocks are mutually exclusive at the API level: pass at
/// most one of `timePartitioning` / `rangePartitioning`. The wrapper does
/// not enforce this — passing both surfaces as a Terraform validation
/// error at plan time.
///
/// Example:
/// ```dart
/// final events = GoogleBigqueryTable(
///   'events',
///   datasetId: dataset.ref,
///   tableId: TfArg.literal('events_v1'),
///   friendlyName: TfArg.literal('Click events'),
///   description: TfArg.literal('Raw click events partitioned by day.'),
///   timePartitioning: BigqueryTableTimePartitioning(
///     type: TimePartitioningType.day,
///     field: TfArg.literal('event_time'),
///   ),
///   clustering: TfArg.literal(const ['user_id', 'campaign_id']),
///   deletionProtection: TfArg.literal(false),
/// );
/// ```
final class GoogleBigqueryTable extends Resource {
  static const String tfType = 'google_bigquery_table';

  GoogleBigqueryTable(
    super.localName, {
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> tableId,
    TfArg<String>? friendlyName,
    TfArg<String>? description,
    TfArg<String>? schema,
    TfArg<num>? expirationTime,
    TfArg<List<String>>? clustering,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? resourceTags,
    TfArg<bool>? requirePartitionFilter,
    TfArg<String>? maxStaleness,
    TfArg<bool>? deletionProtection,
    TfArg<bool>? ignoreAutoGeneratedSchema,
    TfArg<List<String>>? ignoreSchemaChanges,
    TableMetadataView? tableMetadataView,
    BigqueryTableTimePartitioning? timePartitioning,
    BigqueryTableRangePartitioning? rangePartitioning,
    BigqueryTableMaterializedView? materializedView,
    BigqueryTableView? view,
    BigqueryTableExternalDataConfiguration? externalDataConfiguration,
    BigqueryTableEncryptionConfiguration? encryptionConfiguration,
    BigqueryTableConstraints? tableConstraints,
    BigqueryTableReplicationInfo? tableReplicationInfo,
    BigqueryTableBiglakeConfiguration? biglakeConfiguration,
    TfArg<String>? project,
    BigqueryTableExternalCatalogTableOptions? externalCatalogTableOptions,
    BigqueryTableSchemaForeignTypeInfo? schemaForeignTypeInfo,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'table_id': tableId,
           'friendly_name': ?friendlyName,
           'description': ?description,
           'schema': ?schema,
           'expiration_time': ?expirationTime,
           'clustering': ?clustering,
           'labels': ?labels,
           'resource_tags': ?resourceTags,
           'require_partition_filter': ?requirePartitionFilter,
           'max_staleness': ?maxStaleness,
           'deletion_protection': ?deletionProtection,
           'ignore_auto_generated_schema': ?ignoreAutoGeneratedSchema,
           'ignore_schema_changes': ?ignoreSchemaChanges,
           'table_metadata_view': ?tableMetadataView,
           if (timePartitioning != null)
             'time_partitioning': TfArg.literal(timePartitioning.encode()),
           if (rangePartitioning != null)
             'range_partitioning': TfArg.literal(rangePartitioning.encode()),
           if (materializedView != null)
             'materialized_view': TfArg.literal(materializedView.encode()),
           if (view != null) 'view': TfArg.literal(view.encode()),
           if (externalDataConfiguration != null)
             'external_data_configuration': TfArg.literal(
               externalDataConfiguration.encode(),
             ),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (tableConstraints != null)
             'table_constraints': TfArg.literal(tableConstraints.encode()),
           if (tableReplicationInfo != null)
             'table_replication_info': TfArg.literal(
               tableReplicationInfo.encode(),
             ),
           if (biglakeConfiguration != null)
             'biglake_configuration': TfArg.literal(
               biglakeConfiguration.encode(),
             ),
           'project': ?project,
           if (externalCatalogTableOptions != null)
             'external_catalog_table_options': TfArg.literal(
               externalCatalogTableOptions.encode(),
             ),
           if (schemaForeignTypeInfo != null)
             'schema_foreign_type_info': TfArg.literal(
               schemaForeignTypeInfo.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryTableSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryTable>`.
  RefTo<GoogleBigqueryTable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `generated_schema_columns` attribute.
  TfRef<String> get generatedSchemaColumns =>
      TfRef.attribute<String>(this, 'generated_schema_columns');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `num_long_term_bytes` attribute.
  TfRef<num> get numLongTermBytes =>
      TfRef.attribute<num>(this, 'num_long_term_bytes');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `clustering` attribute.
  TfRef<List<String>> get clustering =>
      TfRef.attribute<List<String>>(this, 'clustering');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expiration_time` attribute.
  TfRef<num> get expirationTime =>
      TfRef.attribute<num>(this, 'expiration_time');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `ignore_auto_generated_schema` attribute.
  TfRef<bool> get ignoreAutoGeneratedSchema =>
      TfRef.attribute<bool>(this, 'ignore_auto_generated_schema');

  /// Reference to `ignore_schema_changes` attribute.
  TfRef<List<String>> get ignoreSchemaChanges =>
      TfRef.attribute<List<String>>(this, 'ignore_schema_changes');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `max_staleness` attribute.
  TfRef<String> get maxStaleness =>
      TfRef.attribute<String>(this, 'max_staleness');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `require_partition_filter` attribute.
  TfRef<bool> get requirePartitionFilter =>
      TfRef.attribute<bool>(this, 'require_partition_filter');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `table_id` attribute.
  TfRef<String> get tableId => TfRef.attribute<String>(this, 'table_id');

  /// Reference to `table_metadata_view` attribute.
  TfRef<String> get tableMetadataView =>
      TfRef.attribute<String>(this, 'table_metadata_view');

  /// Reference to `num_rows` attribute. Number of rows in the table at
  /// the last refresh (string-encoded int64 in the provider; exposed as
  /// `TfRef<String>` for direct interpolation).
  ///
  /// `num_rows` / `num_bytes` / `creation_time` / `last_modified_time` are
  /// kept hand-written (not derived) to pin them at `TfRef<String>`: the
  /// schema types them as `number`, which the output-getter gate would emit
  /// as `TfRef<num>`. Holding `String` here keeps the public surface stable;
  /// the gate skips these names because they are present in `extraGetters`.
  TfRef<String> get numRows => TfRef.attribute<String>(this, 'num_rows');

  /// Reference to `num_bytes` attribute. Logical size in bytes.
  TfRef<String> get numBytes => TfRef.attribute<String>(this, 'num_bytes');

  /// Reference to `creation_time` attribute (epoch milliseconds).
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute (epoch milliseconds).
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_table`.
const Set<String> _googleBigqueryTableSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Partition unit for `time_partitioning.type`. Maps to BigQuery's
/// supported partition granularities.
enum TimePartitioningType {
  day('DAY'),
  hour('HOUR'),
  month('MONTH'),
  year('YEAR');

  const TimePartitioningType(this.terraformValue);
  final String terraformValue;
}

/// Source format for `external_data_configuration.source_format`. The
/// `googleSheets` variant additionally requires
/// `https://www.googleapis.com/auth/drive.readonly` on the service
/// account performing the read.
enum ExternalDataSourceFormat {
  csv('CSV'),
  newlineDelimitedJson('NEWLINE_DELIMITED_JSON'),
  avro('AVRO'),
  parquet('PARQUET'),
  orc('ORC'),
  datastoreBackup('DATASTORE_BACKUP'),
  bigtable('BIGTABLE'),
  googleSheets('GOOGLE_SHEETS'),
  iceberg('ICEBERG'),
  deltaLake('DELTA_LAKE');

  const ExternalDataSourceFormat(this.terraformValue);
  final String terraformValue;
}

/// Compression for `external_data_configuration.compression`. BigQuery
/// only accepts these two values; format-specific compression (Snappy
/// for Parquet, Deflate for Avro, etc.) is inferred from the file.
enum ExternalDataCompression {
  none('NONE'),
  gzip('GZIP');

  const ExternalDataCompression(this.terraformValue);
  final String terraformValue;
}

/// File-set spec for `external_data_configuration.file_set_spec_type`.
/// `fileSystemMatch` (default) glob-expands `source_uris` against the
/// underlying object store; `newLineDelimitedManifest` treats each
/// source URI as a manifest file containing one object URI per line.
enum FileSetSpecType {
  fileSystemMatch('FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH'),
  newLineDelimitedManifest('FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST');

  const FileSetSpecType(this.terraformValue);
  final String terraformValue;
}

/// Metadata cache mode for
/// `external_data_configuration.metadata_cache_mode`. `automatic` lets
/// BigQuery refresh the cache on a service-controlled cadence;
/// `manual` requires explicit `BQ.REFRESH_EXTERNAL_METADATA_CACHE`
/// calls.
enum MetadataCacheMode {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const MetadataCacheMode(this.terraformValue);
  final String terraformValue;
}

/// Object metadata for `external_data_configuration.object_metadata`.
/// Set this to create an Object Table (a listing of objects + their
/// metadata) rather than a regular external table; when set,
/// `sourceFormat` must be omitted.
enum ObjectMetadata {
  simple('SIMPLE'),
  directory('DIRECTORY');

  const ObjectMetadata(this.terraformValue);
  final String terraformValue;
}

/// View for `table_metadata_view`. Controls how much detail BigQuery
/// returns when reading the table — `basic` (default) skips storage
/// stats, `storageStats` adds size counters, `full` includes all
/// optional fields. `unspecified` is the no-op default.
enum TableMetadataView {
  unspecified('TABLE_METADATA_VIEW_UNSPECIFIED'),
  basic('BASIC'),
  storageStats('STORAGE_STATS'),
  full('FULL');

  const TableMetadataView(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Partitioning blocks
// ===========================================================================

/// `time_partitioning` block (max=1). `type` is required; the other
/// fields refine the partition spec. `requirePartitionFilter` is
/// deprecated by BigQuery in favour of the top-level
/// `requirePartitionFilter`, but retained here for parity with the
/// provider schema.
@immutable
class TimePartitioning {
  const TimePartitioning({
    required this.type,
    this.expirationMs,
    this.field,
    @Deprecated(
      'BigQuery deprecated this in favour of the top-level '
      'requirePartitionFilter. Set that instead.',
    )
    this.requirePartitionFilter,
  });

  final TimePartitioningType type;
  final int? expirationMs;
  final String? field;
  final bool? requirePartitionFilter;

  Map<String, Object?> toArgMap() => {
    'type': type.terraformValue,
    if (expirationMs != null) 'expiration_ms': expirationMs,
    if (field != null) 'field': field,
    // ignore: deprecated_member_use_from_same_package
    if (requirePartitionFilter != null)
      // ignore: deprecated_member_use_from_same_package
      'require_partition_filter': requirePartitionFilter,
  };
}

/// `range_partitioning` block (max=1). `field` is the int64 column
/// being partitioned on; the inner [RangePartitioningRange] defines the
/// `[start, end)` window and bucket width.
@immutable
class RangePartitioning {
  const RangePartitioning({required this.field, required this.range});

  final String field;
  final RangePartitioningRange range;

  Map<String, Object?> toArgMap() => {
    'field': field,
    'range': [range.toArgMap()],
  };
}

/// Inner `range` block of `range_partitioning`. Half-open: `start` is
/// inclusive, `end` is exclusive. `interval` is the bucket width.
@immutable
class RangePartitioningRange {
  const RangePartitioningRange({
    required this.start,
    required this.end,
    required this.interval,
  });

  final int start;
  final int end;
  final int interval;

  Map<String, Object?> toArgMap() => {
    'start': start,
    'end': end,
    'interval': interval,
  };
}

// ===========================================================================
// Materialized view / view
// ===========================================================================

/// `materialized_view` block (max=1). `query` is required and frozen
/// at create time (changing it forces replacement). The other knobs
/// control refresh behaviour.
@immutable
class MaterializedView {
  const MaterializedView({
    required this.query,
    this.enableRefresh,
    this.refreshIntervalMs,
    this.allowNonIncrementalDefinition,
  });

  final String query;
  final bool? enableRefresh;
  final int? refreshIntervalMs;
  final bool? allowNonIncrementalDefinition;

  Map<String, Object?> toArgMap() => {
    'query': query,
    if (enableRefresh != null) 'enable_refresh': enableRefresh,
    if (refreshIntervalMs != null) 'refresh_interval_ms': refreshIntervalMs,
    if (allowNonIncrementalDefinition != null)
      'allow_non_incremental_definition': allowNonIncrementalDefinition,
  };
}

/// `view` block (max=1). When set, the table is a logical view backed
/// by [query] instead of physical storage. `useLegacySql` defaults to
/// false (standard SQL) at the provider; pass `true` only for legacy
/// SQL views.
@immutable
class TableView {
  const TableView({required this.query, this.useLegacySql});

  final String query;
  final bool? useLegacySql;

  Map<String, Object?> toArgMap() => {
    'query': query,
    if (useLegacySql != null) 'use_legacy_sql': useLegacySql,
  };
}

// ===========================================================================
// External data configuration
// ===========================================================================

/// `external_data_configuration` block (max=1). Configures a federated
/// external table — BigQuery reads data in-place from the source store
/// (GCS / Bigtable / Drive / S3 via connection) at query time rather
/// than ingesting it.
///
/// `autodetect` and `sourceUris` are required by the schema. The
/// format-specific sub-blocks ([csvOptions] / [googleSheetsOptions] /
/// [hivePartitioningOptions] / [parquetOptions] / [avroOptions] /
/// [jsonOptions]) are mutually exclusive with respect to
/// [sourceFormat]; the wrapper does not enforce that — pass at most
/// one sub-block matching the chosen format.
///
/// `bigtableOptions` is exposed as a `Map<String, Object?>?`
/// placeholder because the underlying schema (nested column_families
/// with nested column lists) is heavy enough to warrant its own pass;
/// callers using Bigtable today can pass the snake-case map directly.
@immutable
class ExternalDataConfiguration {
  const ExternalDataConfiguration({
    required this.autodetect,
    required this.sourceUris,
    this.sourceFormat,
    this.compression,
    this.fileSetSpecType,
    this.ignoreUnknownValues,
    this.maxBadRecords,
    this.referenceFileSchemaUri,
    this.schema,
    this.connectionId,
    this.metadataCacheMode,
    this.objectMetadata,
    this.jsonExtension,
    this.decimalTargetTypes,
    this.csvOptions,
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.parquetOptions,
    this.avroOptions,
    this.jsonOptions,
    this.bigtableOptions,
  });

  final bool autodetect;
  final List<String> sourceUris;
  final ExternalDataSourceFormat? sourceFormat;
  final ExternalDataCompression? compression;
  final FileSetSpecType? fileSetSpecType;
  final bool? ignoreUnknownValues;
  final int? maxBadRecords;
  final String? referenceFileSchemaUri;
  final String? schema;
  final String? connectionId;
  final MetadataCacheMode? metadataCacheMode;
  final ObjectMetadata? objectMetadata;
  final String? jsonExtension;
  final List<String>? decimalTargetTypes;
  final CsvOptions? csvOptions;
  final GoogleSheetsOptions? googleSheetsOptions;
  final HivePartitioningOptions? hivePartitioningOptions;
  final ParquetOptions? parquetOptions;
  final AvroOptions? avroOptions;
  final JsonOptions? jsonOptions;
  final Map<String, Object?>? bigtableOptions;

  Map<String, Object?> toArgMap() => {
    'autodetect': autodetect,
    'source_uris': sourceUris,
    if (sourceFormat != null) 'source_format': sourceFormat!.terraformValue,
    if (compression != null) 'compression': compression!.terraformValue,
    if (fileSetSpecType != null)
      'file_set_spec_type': fileSetSpecType!.terraformValue,
    if (ignoreUnknownValues != null)
      'ignore_unknown_values': ignoreUnknownValues,
    if (maxBadRecords != null) 'max_bad_records': maxBadRecords,
    if (referenceFileSchemaUri != null)
      'reference_file_schema_uri': referenceFileSchemaUri,
    if (schema != null) 'schema': schema,
    if (connectionId != null) 'connection_id': connectionId,
    if (metadataCacheMode != null)
      'metadata_cache_mode': metadataCacheMode!.terraformValue,
    if (objectMetadata != null)
      'object_metadata': objectMetadata!.terraformValue,
    if (jsonExtension != null) 'json_extension': jsonExtension,
    if (decimalTargetTypes != null) 'decimal_target_types': decimalTargetTypes,
    if (csvOptions != null) 'csv_options': [csvOptions!.toArgMap()],
    if (googleSheetsOptions != null)
      'google_sheets_options': [googleSheetsOptions!.toArgMap()],
    if (hivePartitioningOptions != null)
      'hive_partitioning_options': [hivePartitioningOptions!.toArgMap()],
    if (parquetOptions != null) 'parquet_options': [parquetOptions!.toArgMap()],
    if (avroOptions != null) 'avro_options': [avroOptions!.toArgMap()],
    if (jsonOptions != null) 'json_options': [jsonOptions!.toArgMap()],
    if (bigtableOptions != null) 'bigtable_options': [bigtableOptions],
  };
}

/// `external_data_configuration.csv_options` sub-block. `quote` is
/// required by the provider (Terraform escapes the API default `"`
/// as `\"`; pass an empty string when the data has no quoted sections).
@immutable
class CsvOptions {
  const CsvOptions({
    required this.quote,
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.encoding,
    this.fieldDelimiter,
    this.skipLeadingRows,
    this.sourceColumnMatch,
  });

  final String quote;
  final bool? allowJaggedRows;
  final bool? allowQuotedNewlines;
  final String? encoding;
  final String? fieldDelimiter;
  final int? skipLeadingRows;
  final String? sourceColumnMatch;

  Map<String, Object?> toArgMap() => {
    'quote': quote,
    if (allowJaggedRows != null) 'allow_jagged_rows': allowJaggedRows,
    if (allowQuotedNewlines != null)
      'allow_quoted_newlines': allowQuotedNewlines,
    if (encoding != null) 'encoding': encoding,
    if (fieldDelimiter != null) 'field_delimiter': fieldDelimiter,
    if (skipLeadingRows != null) 'skip_leading_rows': skipLeadingRows,
    if (sourceColumnMatch != null) 'source_column_match': sourceColumnMatch,
  };
}

/// `external_data_configuration.google_sheets_options` sub-block. At
/// least one of [range] / [skipLeadingRows] must be set per the
/// provider schema; the wrapper does not enforce that.
@immutable
class GoogleSheetsOptions {
  const GoogleSheetsOptions({this.range, this.skipLeadingRows});

  final String? range;
  final int? skipLeadingRows;

  Map<String, Object?> toArgMap() => {
    if (range != null) 'range': range,
    if (skipLeadingRows != null) 'skip_leading_rows': skipLeadingRows,
  };
}

/// `external_data_configuration.hive_partitioning_options` sub-block.
/// Enables Hive-style partition keys (e.g. `dt=2024-01-01/`) to be
/// surfaced as table columns.
@immutable
class HivePartitioningOptions {
  const HivePartitioningOptions({
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  final String? mode;
  final bool? requirePartitionFilter;
  final String? sourceUriPrefix;

  Map<String, Object?> toArgMap() => {
    if (mode != null) 'mode': mode,
    if (requirePartitionFilter != null)
      'require_partition_filter': requirePartitionFilter,
    if (sourceUriPrefix != null) 'source_uri_prefix': sourceUriPrefix,
  };
}

/// `external_data_configuration.parquet_options` sub-block.
@immutable
class ParquetOptions {
  const ParquetOptions({this.enableListInference, this.enumAsString});

  final bool? enableListInference;
  final bool? enumAsString;

  Map<String, Object?> toArgMap() => {
    if (enableListInference != null)
      'enable_list_inference': enableListInference,
    if (enumAsString != null) 'enum_as_string': enumAsString,
  };
}

/// `external_data_configuration.avro_options` sub-block.
/// [useAvroLogicalTypes] is required by the provider schema.
@immutable
class AvroOptions {
  const AvroOptions({required this.useAvroLogicalTypes});

  final bool useAvroLogicalTypes;

  Map<String, Object?> toArgMap() => {
    'use_avro_logical_types': useAvroLogicalTypes,
  };
}

/// `external_data_configuration.json_options` sub-block.
@immutable
class JsonOptions {
  const JsonOptions({this.encoding});

  final String? encoding;

  Map<String, Object?> toArgMap() => {
    if (encoding != null) 'encoding': encoding,
  };
}

// ===========================================================================
// Encryption / constraints / replication / biglake
// ===========================================================================

/// `encryption_configuration` block (max=1). Attaches a CMEK key to the
/// table; the default BigQuery service account needs encrypt/decrypt
/// rights on [kmsKeyName]. `kmsKeyVersion` is computed by GCP and
/// surfaced via the wrapper's `kmsKeyVersionRef` getter (not here).
@immutable
class EncryptionConfiguration {
  const EncryptionConfiguration({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> toArgMap() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// `table_constraints` block (max=1). BigQuery accepts these for
/// metadata / query-planning hints; constraints are NOT enforced at
/// write time.
@immutable
class TableConstraints {
  const TableConstraints({this.primaryKey, this.foreignKeys});

  final PrimaryKey? primaryKey;
  final List<ForeignKey>? foreignKeys;

  Map<String, Object?> toArgMap() => {
    if (primaryKey != null) 'primary_key': [primaryKey!.toArgMap()],
    if (foreignKeys != null)
      'foreign_keys': foreignKeys!.map((f) => f.toArgMap()).toList(),
  };
}

/// `table_constraints.primary_key` sub-block (max=1).
@immutable
class PrimaryKey {
  const PrimaryKey({required this.columns});

  final List<String> columns;

  Map<String, Object?> toArgMap() => {'columns': columns};
}

/// One entry of `table_constraints.foreign_keys`. Each entry binds one
/// referencing column to one referenced column in [referencedTable];
/// composite foreign keys are represented by multiple entries with the
/// same [referencedTable].
@immutable
class ForeignKey {
  const ForeignKey({
    required this.referencedTable,
    required this.columnReferences,
    this.name,
  });

  final ReferencedTable referencedTable;
  final ColumnReferences columnReferences;
  final String? name;

  Map<String, Object?> toArgMap() => {
    'referenced_table': [referencedTable.toArgMap()],
    'column_references': [columnReferences.toArgMap()],
    if (name != null) 'name': name,
  };
}

/// Inner `referenced_table` block of a foreign key constraint —
/// fully-qualified BigQuery table reference.
@immutable
class ReferencedTable {
  const ReferencedTable({
    required this.projectId,
    required this.datasetId,
    required this.tableId,
  });

  final String projectId;
  final String datasetId;
  final String tableId;

  Map<String, Object?> toArgMap() => {
    'project_id': projectId,
    'dataset_id': datasetId,
    'table_id': tableId,
  };
}

/// Inner `column_references` block of a foreign key constraint —
/// pairs one referencing column with the referenced primary-key column.
@immutable
class ColumnReferences {
  const ColumnReferences({
    required this.referencingColumn,
    required this.referencedColumn,
  });

  final String referencingColumn;
  final String referencedColumn;

  Map<String, Object?> toArgMap() => {
    'referencing_column': referencingColumn,
    'referenced_column': referencedColumn,
  };
}

/// `table_replication_info` block (max=1). Marks the table as a
/// replica of a source materialized view in another dataset
/// (`CREATE MATERIALIZED VIEW ... AS REPLICA OF ...`).
@immutable
class TableReplicationInfo {
  const TableReplicationInfo({
    required this.sourceProjectId,
    required this.sourceDatasetId,
    required this.sourceTableId,
    this.replicationIntervalMs,
  });

  final String sourceProjectId;
  final String sourceDatasetId;
  final String sourceTableId;
  final int? replicationIntervalMs;

  Map<String, Object?> toArgMap() => {
    'source_project_id': sourceProjectId,
    'source_dataset_id': sourceDatasetId,
    'source_table_id': sourceTableId,
    if (replicationIntervalMs != null)
      'replication_interval_ms': replicationIntervalMs,
  };
}

/// `biglake_configuration` block (max=1). Promotes the table to a
/// BigLake managed table — BigQuery stores metadata-only snapshots
/// while the actual data lives at [storageUri] in [fileFormat] +
/// [tableFormat] (typically Parquet + Iceberg).
@immutable
class BiglakeConfiguration {
  const BiglakeConfiguration({
    required this.connectionId,
    required this.storageUri,
    required this.fileFormat,
    required this.tableFormat,
  });

  final String connectionId;
  final String storageUri;
  final String fileFormat;
  final String tableFormat;

  Map<String, Object?> toArgMap() => {
    'connection_id': connectionId,
    'storage_uri': storageUri,
    'file_format': fileFormat,
    'table_format': tableFormat,
  };
}

/// Factory wrapper for `google_bigquery_table` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_table.`).
/// - `datasetId`: parent BigQuery dataset id. Typically
///   `TfArg.ref(dataset.datasetIdRef)` where `dataset` is a
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
///   localName: 'events',
///   datasetId: TfArg.ref(dataset.datasetIdRef),
///   tableId: TfArg.literal('events_v1'),
///   friendlyName: TfArg.literal('Click events'),
///   description: TfArg.literal('Raw click events partitioned by day.'),
///   timePartitioning: const TimePartitioning(
///     type: TimePartitioningType.day,
///     field: 'event_time',
///   ),
///   clustering: TfArg.literal(const ['user_id', 'campaign_id']),
///   deletionProtection: TfArg.literal(false),
/// );
/// ```
///
/// Manages a BigQuery table. Composition pattern: extends
/// `Resource<$GoogleBigqueryTable>` for runtime behavior. The nested
/// blocks (time_partitioning / range_partitioning / materialized_view /
/// view / external_data_configuration / encryption_configuration /
/// table_constraints / table_replication_info / biglake_configuration)
/// are modeled as helper classes in the `prelude` below.
final class GoogleBigqueryTable extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_table';

  GoogleBigqueryTable({
    required super.localName,
    required TfArg<String> datasetId,
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
    TfArg<TableMetadataView>? tableMetadataView,
    TimePartitioning? timePartitioning,
    RangePartitioning? rangePartitioning,
    MaterializedView? materializedView,
    TableView? view,
    ExternalDataConfiguration? externalDataConfiguration,
    EncryptionConfiguration? encryptionConfiguration,
    TableConstraints? tableConstraints,
    TableReplicationInfo? tableReplicationInfo,
    BiglakeConfiguration? biglakeConfiguration,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'dataset_id': datasetId,
           'table_id': tableId,
           if (friendlyName != null) 'friendly_name': friendlyName,
           if (description != null) 'description': description,
           if (schema != null) 'schema': schema,
           if (expirationTime != null) 'expiration_time': expirationTime,
           if (clustering != null) 'clustering': clustering,
           if (labels != null) 'labels': labels,
           if (resourceTags != null) 'resource_tags': resourceTags,
           if (requirePartitionFilter != null)
             'require_partition_filter': requirePartitionFilter,
           if (maxStaleness != null) 'max_staleness': maxStaleness,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (ignoreAutoGeneratedSchema != null)
             'ignore_auto_generated_schema': ignoreAutoGeneratedSchema,
           if (ignoreSchemaChanges != null)
             'ignore_schema_changes': ignoreSchemaChanges,
           if (tableMetadataView != null)
             'table_metadata_view': tableMetadataView,
           if (timePartitioning != null)
             'time_partitioning': TfArg.literal([timePartitioning.toArgMap()]),
           if (rangePartitioning != null)
             'range_partitioning': TfArg.literal([
               rangePartitioning.toArgMap(),
             ]),
           if (materializedView != null)
             'materialized_view': TfArg.literal([materializedView.toArgMap()]),
           if (view != null) 'view': TfArg.literal([view.toArgMap()]),
           if (externalDataConfiguration != null)
             'external_data_configuration': TfArg.literal([
               externalDataConfiguration.toArgMap(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               encryptionConfiguration.toArgMap(),
             ]),
           if (tableConstraints != null)
             'table_constraints': TfArg.literal([tableConstraints.toArgMap()]),
           if (tableReplicationInfo != null)
             'table_replication_info': TfArg.literal([
               tableReplicationInfo.toArgMap(),
             ]),
           if (biglakeConfiguration != null)
             'biglake_configuration': TfArg.literal([
               biglakeConfiguration.toArgMap(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryTableSensitive;

  /// Reference to `table_id` attribute.
  TfRef<String> get tableIdRef => TfRef.attribute<String>(this, 'table_id');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/datasets/{dataset_id}/tables/{table_id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute (HTTPS API path).
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `location` attribute (inherited from the parent dataset).
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `type` attribute (e.g. `TABLE`, `VIEW`, `MATERIALIZED_VIEW`).
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `num_rows` attribute. Number of rows in the table at
  /// the last refresh (string-encoded int64 in the provider; exposed as
  /// `TfRef<String>` for direct interpolation).
  TfRef<String> get numRows => TfRef.attribute<String>(this, 'num_rows');

  /// Reference to `num_bytes` attribute. Logical size in bytes.
  TfRef<String> get numBytes => TfRef.attribute<String>(this, 'num_bytes');

  /// Reference to `creation_time` attribute (epoch milliseconds).
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute (epoch milliseconds).
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `etag` attribute (resource hash).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

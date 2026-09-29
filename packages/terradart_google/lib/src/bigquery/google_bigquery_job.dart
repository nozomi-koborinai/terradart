// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_job`.
const Set<String> _googleBigqueryJobSensitive = <String>{};

/// `query.parameter_mode`. Standard SQL only. `POSITIONAL` uses `?`
/// placeholders; `NAMED` uses `@param` syntax. The provider
/// description does not expose a formal `Possible values` array;
/// the BigQuery API documents these two as the supported modes.
enum BigqueryJobParameterMode implements TerraformEnum {
  named('NAMED'),
  positional('POSITIONAL');

  const BigqueryJobParameterMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `load.source_format`. From the schema description: for CSV
/// specify `CSV`; for datastore backups `DATASTORE_BACKUP`; for
/// newline-delimited JSON `NEWLINE_DELIMITED_JSON`; for Avro `AVRO`;
/// for Parquet `PARQUET`; for ORC `ORC`; [Beta] for Bigtable
/// `BIGTABLE`. Default is `CSV`. The schema doesn't expose a
/// formal `enum_values` array, so this list is sourced from the
/// attribute's `description` prose.
enum BigqueryJobLoadSourceFormat implements TerraformEnum {
  csv('CSV'),
  newlineDelimitedJson('NEWLINE_DELIMITED_JSON'),
  avro('AVRO'),
  parquet('PARQUET'),
  orc('ORC'),
  datastoreBackup('DATASTORE_BACKUP'),
  bigtable('BIGTABLE');

  const BigqueryJobLoadSourceFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extract.compression`. Schema description: "Possible values
/// include GZIP, DEFLATE, SNAPPY, and NONE. The default value is
/// NONE. DEFLATE and SNAPPY are only supported for Avro." The
/// schema doesn't expose a formal `enum_values` array — values
/// transcribed from the description prose.
enum BigqueryJobExtractCompression implements TerraformEnum {
  gzip('GZIP'),
  deflate('DEFLATE'),
  snappy('SNAPPY'),
  none('NONE');

  const BigqueryJobExtractCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extract.destination_format`. Schema description: "Possible
/// values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables
/// and SAVED_MODEL for models. The default value for tables is CSV.
/// Tables with nested or repeated fields cannot be exported as CSV.
/// The default value for models is SAVED_MODEL." Values transcribed
/// from the description prose (no formal `enum_values` array on
/// this attribute).
enum BigqueryJobExtractDestinationFormat implements TerraformEnum {
  csv('CSV'),
  newlineDelimitedJson('NEWLINE_DELIMITED_JSON'),
  avro('AVRO'),
  savedModel('SAVED_MODEL');

  const BigqueryJobExtractDestinationFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `query`, `load`, `copy`, `extract` on `google_bigquery_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.query(...)`.
sealed class BigqueryJobConfiguration {
  const BigqueryJobConfiguration();

  /// Sets `query`.
  const factory BigqueryJobConfiguration.query(BigqueryJobQuery query) =
      BigqueryJobConfigurationQuery;

  /// Sets `load`.
  const factory BigqueryJobConfiguration.load(BigqueryJobLoad load) =
      BigqueryJobConfigurationLoad;

  /// Sets `copy`.
  const factory BigqueryJobConfiguration.copy(BigqueryJobCopy copy) =
      BigqueryJobConfigurationCopy;

  /// Sets `extract`.
  const factory BigqueryJobConfiguration.extract(BigqueryJobExtract extract) =
      BigqueryJobConfigurationExtract;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryJobConfiguration.query] choice: sets `query`.
final class BigqueryJobConfigurationQuery extends BigqueryJobConfiguration {
  const BigqueryJobConfigurationQuery(this.query);

  final BigqueryJobQuery query;

  @override
  String get blockKey => 'query';

  @override
  Map<String, Object?> encode() => {'query': query.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'query': TfArg.literal(query.encode()),
  };
}

/// The [BigqueryJobConfiguration.load] choice: sets `load`.
final class BigqueryJobConfigurationLoad extends BigqueryJobConfiguration {
  const BigqueryJobConfigurationLoad(this.load);

  final BigqueryJobLoad load;

  @override
  String get blockKey => 'load';

  @override
  Map<String, Object?> encode() => {'load': load.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'load': TfArg.literal(load.encode()),
  };
}

/// The [BigqueryJobConfiguration.copy] choice: sets `copy`.
final class BigqueryJobConfigurationCopy extends BigqueryJobConfiguration {
  const BigqueryJobConfigurationCopy(this.copy);

  final BigqueryJobCopy copy;

  @override
  String get blockKey => 'copy';

  @override
  Map<String, Object?> encode() => {'copy': copy.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'copy': TfArg.literal(copy.encode()),
  };
}

/// The [BigqueryJobConfiguration.extract] choice: sets `extract`.
final class BigqueryJobConfigurationExtract extends BigqueryJobConfiguration {
  const BigqueryJobConfigurationExtract(this.extract);

  final BigqueryJobExtract extract;

  @override
  String get blockKey => 'extract';

  @override
  Map<String, Object?> encode() => {'extract': extract.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'extract': TfArg.literal(extract.encode()),
  };
}

/// Typed helper for the `copy` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobCopy {
  const BigqueryJobCopy({
    this.createDisposition,
    this.writeDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    required this.sourceTables,
  });

  final TfArg<BigqueryJobCopyCreateDisposition>? createDisposition;

  final TfArg<BigqueryJobCopyWriteDisposition>? writeDisposition;

  final BigqueryJobCopyDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobCopyDestinationTable? destinationTable;

  final List<BigqueryJobCopySourceTables> sourceTables;

  Map<String, Object?> encode() => {
    'create_disposition': ?createDisposition?.toTfJson(),
    'write_disposition': ?writeDisposition?.toTfJson(),
    'destination_encryption_configuration': ?destinationEncryptionConfiguration
        ?.encode(),
    'destination_table': ?destinationTable?.encode(),
    'source_tables': [for (final e in sourceTables) e.encode()],
  };
}

/// `create_disposition` — derived from the provider schema description.
enum BigqueryJobCopyCreateDisposition implements TerraformEnum {
  createIfNeeded('CREATE_IF_NEEDED'),
  createNever('CREATE_NEVER');

  const BigqueryJobCopyCreateDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// `write_disposition` — derived from the provider schema description.
enum BigqueryJobCopyWriteDisposition implements TerraformEnum {
  writeTruncate('WRITE_TRUNCATE'),
  writeAppend('WRITE_APPEND'),
  writeEmpty('WRITE_EMPTY');

  const BigqueryJobCopyWriteDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `copy.destination_encryption_configuration` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobCopyDestinationEncryptionConfiguration {
  const BigqueryJobCopyDestinationEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `copy.destination_table` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobCopyDestinationTable {
  const BigqueryJobCopyDestinationTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `copy.source_tables` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobCopySourceTables {
  const BigqueryJobCopySourceTables({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `extract` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobExtract {
  const BigqueryJobExtract({
    this.compression,
    this.destinationFormat,
    required this.destinationUris,
    this.fieldDelimiter,
    this.printHeader,
    this.useAvroLogicalTypes,
    required this.source,
  });

  final TfArg<BigqueryJobExtractCompression>? compression;

  final TfArg<BigqueryJobExtractDestinationFormat>? destinationFormat;

  final TfArg<List<Object?>> destinationUris;

  final TfArg<String>? fieldDelimiter;

  final TfArg<bool>? printHeader;

  final TfArg<bool>? useAvroLogicalTypes;

  final BigqueryJobExtractSource source;

  Map<String, Object?> encode() => {
    'compression': ?compression?.toTfJson(),
    'destination_format': ?destinationFormat?.toTfJson(),
    'destination_uris': destinationUris.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'print_header': ?printHeader?.toTfJson(),
    'use_avro_logical_types': ?useAvroLogicalTypes?.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `source_table`, `source_model` on the `extract` block of `google_bigquery_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceTable(...)`.
sealed class BigqueryJobExtractSource {
  const BigqueryJobExtractSource();

  /// Sets `source_table`.
  const factory BigqueryJobExtractSource.sourceTable(
    BigqueryJobExtractSourceTable sourceTable,
  ) = BigqueryJobExtractSourceTableChoice;

  /// Sets `source_model`.
  const factory BigqueryJobExtractSource.sourceModel(
    BigqueryJobExtractSourceModel sourceModel,
  ) = BigqueryJobExtractSourceModelChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryJobExtractSource.sourceTable] choice: sets `source_table`.
final class BigqueryJobExtractSourceTableChoice
    extends BigqueryJobExtractSource {
  const BigqueryJobExtractSourceTableChoice(this.sourceTable);

  final BigqueryJobExtractSourceTable sourceTable;

  @override
  String get blockKey => 'source_table';

  @override
  Map<String, Object?> encode() => {'source_table': sourceTable.encode()};
}

/// The [BigqueryJobExtractSource.sourceModel] choice: sets `source_model`.
final class BigqueryJobExtractSourceModelChoice
    extends BigqueryJobExtractSource {
  const BigqueryJobExtractSourceModelChoice(this.sourceModel);

  final BigqueryJobExtractSourceModel sourceModel;

  @override
  String get blockKey => 'source_model';

  @override
  Map<String, Object?> encode() => {'source_model': sourceModel.encode()};
}

/// Typed helper for the `extract.source_model` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobExtractSourceModel {
  const BigqueryJobExtractSourceModel({
    required this.datasetId,
    required this.modelId,
    required this.projectId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> modelId;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'model_id': modelId.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `extract.source_table` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobExtractSourceTable {
  const BigqueryJobExtractSourceTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `load` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobLoad {
  const BigqueryJobLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.createDisposition,
    this.encoding,
    this.fieldDelimiter,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.nullMarker,
    this.projectionFields,
    this.quote,
    this.schemaUpdateOptions,
    this.skipLeadingRows,
    this.sourceFormat,
    required this.sourceUris,
    this.writeDisposition,
    this.destinationEncryptionConfiguration,
    required this.destinationTable,
    this.parquetOptions,
    this.timePartitioning,
  });

  final TfArg<bool>? allowJaggedRows;

  final TfArg<bool>? allowQuotedNewlines;

  final TfArg<bool>? autodetect;

  final TfArg<BigqueryJobLoadCreateDisposition>? createDisposition;

  final TfArg<String>? encoding;

  final TfArg<String>? fieldDelimiter;

  final TfArg<bool>? ignoreUnknownValues;

  final TfArg<String>? jsonExtension;

  final TfArg<num>? maxBadRecords;

  final TfArg<String>? nullMarker;

  final TfArg<List<Object?>>? projectionFields;

  final TfArg<String>? quote;

  final TfArg<List<Object?>>? schemaUpdateOptions;

  final TfArg<num>? skipLeadingRows;

  final TfArg<BigqueryJobLoadSourceFormat>? sourceFormat;

  final TfArg<List<Object?>> sourceUris;

  final TfArg<BigqueryJobLoadWriteDisposition>? writeDisposition;

  final BigqueryJobLoadDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobLoadDestinationTable destinationTable;

  final BigqueryJobLoadParquetOptions? parquetOptions;

  final BigqueryJobLoadTimePartitioning? timePartitioning;

  Map<String, Object?> encode() => {
    'allow_jagged_rows': ?allowJaggedRows?.toTfJson(),
    'allow_quoted_newlines': ?allowQuotedNewlines?.toTfJson(),
    'autodetect': ?autodetect?.toTfJson(),
    'create_disposition': ?createDisposition?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'ignore_unknown_values': ?ignoreUnknownValues?.toTfJson(),
    'json_extension': ?jsonExtension?.toTfJson(),
    'max_bad_records': ?maxBadRecords?.toTfJson(),
    'null_marker': ?nullMarker?.toTfJson(),
    'projection_fields': ?projectionFields?.toTfJson(),
    'quote': ?quote?.toTfJson(),
    'schema_update_options': ?schemaUpdateOptions?.toTfJson(),
    'skip_leading_rows': ?skipLeadingRows?.toTfJson(),
    'source_format': ?sourceFormat?.toTfJson(),
    'source_uris': sourceUris.toTfJson(),
    'write_disposition': ?writeDisposition?.toTfJson(),
    'destination_encryption_configuration': ?destinationEncryptionConfiguration
        ?.encode(),
    'destination_table': destinationTable.encode(),
    'parquet_options': ?parquetOptions?.encode(),
    'time_partitioning': ?timePartitioning?.encode(),
  };
}

/// `create_disposition` — derived from the provider schema description.
enum BigqueryJobLoadCreateDisposition implements TerraformEnum {
  createIfNeeded('CREATE_IF_NEEDED'),
  createNever('CREATE_NEVER');

  const BigqueryJobLoadCreateDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// `write_disposition` — derived from the provider schema description.
enum BigqueryJobLoadWriteDisposition implements TerraformEnum {
  writeTruncate('WRITE_TRUNCATE'),
  writeAppend('WRITE_APPEND'),
  writeEmpty('WRITE_EMPTY');

  const BigqueryJobLoadWriteDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `load.destination_encryption_configuration` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobLoadDestinationEncryptionConfiguration {
  const BigqueryJobLoadDestinationEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `load.destination_table` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobLoadDestinationTable {
  const BigqueryJobLoadDestinationTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `load.parquet_options` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobLoadParquetOptions {
  const BigqueryJobLoadParquetOptions({
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

/// Typed helper for the `load.time_partitioning` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobLoadTimePartitioning {
  const BigqueryJobLoadTimePartitioning({
    this.expirationMs,
    this.field,
    required this.type,
  });

  final TfArg<String>? expirationMs;

  final TfArg<String>? field;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'expiration_ms': ?expirationMs?.toTfJson(),
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `query` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQuery {
  const BigqueryJobQuery({
    this.allowLargeResults,
    this.createDisposition,
    this.flattenResults,
    this.maximumBillingTier,
    this.maximumBytesBilled,
    this.parameterMode,
    this.priority,
    required this.query,
    this.schemaUpdateOptions,
    this.useLegacySql,
    this.useQueryCache,
    this.writeDisposition,
    this.connectionProperties,
    this.defaultDataset,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.scriptOptions,
    this.userDefinedFunctionResources,
  });

  final TfArg<bool>? allowLargeResults;

  final TfArg<BigqueryJobQueryCreateDisposition>? createDisposition;

  final TfArg<bool>? flattenResults;

  final TfArg<num>? maximumBillingTier;

  final TfArg<String>? maximumBytesBilled;

  final TfArg<BigqueryJobParameterMode>? parameterMode;

  final TfArg<BigqueryJobQueryPriority>? priority;

  final TfArg<String> query;

  final TfArg<List<Object?>>? schemaUpdateOptions;

  final TfArg<bool>? useLegacySql;

  final TfArg<bool>? useQueryCache;

  final TfArg<BigqueryJobQueryWriteDisposition>? writeDisposition;

  final List<BigqueryJobQueryConnectionProperties>? connectionProperties;

  final BigqueryJobQueryDefaultDataset? defaultDataset;

  final BigqueryJobQueryDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobQueryDestinationTable? destinationTable;

  final BigqueryJobQueryScriptOptions? scriptOptions;

  final List<BigqueryJobQueryUserDefinedFunctionResources>?
  userDefinedFunctionResources;

  Map<String, Object?> encode() => {
    'allow_large_results': ?allowLargeResults?.toTfJson(),
    'create_disposition': ?createDisposition?.toTfJson(),
    'flatten_results': ?flattenResults?.toTfJson(),
    'maximum_billing_tier': ?maximumBillingTier?.toTfJson(),
    'maximum_bytes_billed': ?maximumBytesBilled?.toTfJson(),
    'parameter_mode': ?parameterMode?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'query': query.toTfJson(),
    'schema_update_options': ?schemaUpdateOptions?.toTfJson(),
    'use_legacy_sql': ?useLegacySql?.toTfJson(),
    'use_query_cache': ?useQueryCache?.toTfJson(),
    'write_disposition': ?writeDisposition?.toTfJson(),
    if (connectionProperties != null)
      'connection_properties': [
        for (final e in connectionProperties!) e.encode(),
      ],
    'default_dataset': ?defaultDataset?.encode(),
    'destination_encryption_configuration': ?destinationEncryptionConfiguration
        ?.encode(),
    'destination_table': ?destinationTable?.encode(),
    'script_options': ?scriptOptions?.encode(),
    if (userDefinedFunctionResources != null)
      'user_defined_function_resources': [
        for (final e in userDefinedFunctionResources!) e.encode(),
      ],
  };
}

/// `create_disposition` — derived from the provider schema description.
enum BigqueryJobQueryCreateDisposition implements TerraformEnum {
  createIfNeeded('CREATE_IF_NEEDED'),
  createNever('CREATE_NEVER');

  const BigqueryJobQueryCreateDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// `priority` — derived from the provider schema description.
enum BigqueryJobQueryPriority implements TerraformEnum {
  interactive('INTERACTIVE'),
  batch('BATCH');

  const BigqueryJobQueryPriority(this.terraformValue);
  @override
  final String terraformValue;
}

/// `write_disposition` — derived from the provider schema description.
enum BigqueryJobQueryWriteDisposition implements TerraformEnum {
  writeTruncate('WRITE_TRUNCATE'),
  writeAppend('WRITE_APPEND'),
  writeEmpty('WRITE_EMPTY');

  const BigqueryJobQueryWriteDisposition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `query.connection_properties` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryConnectionProperties {
  const BigqueryJobQueryConnectionProperties({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `query.default_dataset` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryDefaultDataset {
  const BigqueryJobQueryDefaultDataset({
    required this.datasetId,
    this.projectId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
  };
}

/// Typed helper for the `query.destination_encryption_configuration` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryDestinationEncryptionConfiguration {
  const BigqueryJobQueryDestinationEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `query.destination_table` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryDestinationTable {
  const BigqueryJobQueryDestinationTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `query.script_options` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryScriptOptions {
  const BigqueryJobQueryScriptOptions({
    this.keyResultStatement,
    this.statementByteBudget,
    this.statementTimeoutMs,
  });

  final TfArg<BigqueryJobQueryScriptOptionsKeyResultStatement>?
  keyResultStatement;

  final TfArg<String>? statementByteBudget;

  final TfArg<String>? statementTimeoutMs;

  Map<String, Object?> encode() => {
    'key_result_statement': ?keyResultStatement?.toTfJson(),
    'statement_byte_budget': ?statementByteBudget?.toTfJson(),
    'statement_timeout_ms': ?statementTimeoutMs?.toTfJson(),
  };
}

/// `key_result_statement` — derived from the provider schema description.
enum BigqueryJobQueryScriptOptionsKeyResultStatement implements TerraformEnum {
  last('LAST'),
  firstSelect('FIRST_SELECT');

  const BigqueryJobQueryScriptOptionsKeyResultStatement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `query.user_defined_function_resources` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobQueryUserDefinedFunctionResources {
  const BigqueryJobQueryUserDefinedFunctionResources({
    this.inlineCode,
    this.resourceUri,
  });

  final TfArg<String>? inlineCode;

  final TfArg<String>? resourceUri;

  Map<String, Object?> encode() => {
    'inline_code': ?inlineCode?.toTfJson(),
    'resource_uri': ?resourceUri?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_job`.
///
/// Jobs are actions that BigQuery runs on your behalf to load data, export
/// data, query data, or copy data. Once a BigQuery job is created, it cannot be
/// changed or deleted.
///
/// **Ephemeral — one-shot, not re-run on apply.** A BigQuery job is a
/// single, immutable execution of work (query / load / extract / copy).
/// Terraform creates the job record on first apply and records the
/// returned job state, but it does **not** re-execute the job on
/// subsequent applies — even if upstream data has changed. To trigger
/// a re-run, callers must rotate [jobId] (typically by interpolating a
/// timestamp / hash / random suffix into the local name). For recurring
/// or scheduled work — daily refreshes, periodic backfills, materialized
/// view rebuilds — use `google_bigquery_data_transfer_config` (curated
/// separately), which lets BigQuery own the schedule.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_job.`).
/// - `jobId`: BigQuery job ID. Must be globally unique within the
///   project + location (BigQuery rejects duplicates with `409
///   Conflict`). Caller-supplied — `terraform apply` will not retry
///   under a different ID on collision.
///
/// **Job type**: `configuration` is sealed — exactly one of
/// `.query(...)`, `.load(...)`, `.extract(...)` or `.copy(...)`, the
/// rule the BigQuery API enforces.
///
/// - `.query` — execute a SQL statement, optionally writing results to a
///   `destination_table`. The most common job type.
/// - `.load` — bulk-load files from Cloud Storage (or inline) into a
///   table.
/// - `.extract` — export a table or model to one or more Cloud Storage
///   URIs.
/// - `.copy` — copy one or more source tables into a destination table.
///
/// Example (query — SQL SELECT into a destination table):
/// ```dart
/// final dailyRollup = GoogleBigqueryJob(
///   localName: 'daily_rollup',
///   // Rotate the job ID to force re-execution on the next apply.
///   jobId: .literal('daily_rollup_2026_05_19'),
///   location: .literal('US'),
///   labels: .literal({'pipeline': 'analytics', 'env': 'prod'}),
///   configuration: .query(
///     BigqueryJobQuery(
///       query: .literal(
///         'SELECT user_id, COUNT(*) AS events '
///         'FROM analytics_prod.events '
///         'WHERE event_ts >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 DAY) '
///         'GROUP BY user_id',
///       ),
///       useLegacySql: .literal(false),
///       destinationTable: BigqueryJobQueryDestinationTable(
///         datasetId: analyticsProd.ref,
///         tableId: .literal('daily_user_events'),
///       ),
///       writeDisposition: .literal(.writeTruncate),
///       createDisposition: .literal(.createIfNeeded),
///       priority: .literal(.batch),
///     ),
///   ),
/// );
/// ```
///
/// Example (load — GCS file -> table):
/// ```dart
/// final ingest = GoogleBigqueryJob(
///   localName: 'ingest_csv',
///   jobId: .literal('ingest_csv_2026_05_19'),
///   location: .literal('US'),
///   configuration: .load(
///     BigqueryJobLoad(
///       sourceUris: .literal([
///         'gs://my-landing-bucket/users/2026-05-19/users-*.csv',
///       ]),
///       destinationTable: BigqueryJobLoadDestinationTable(
///         datasetId: staging.ref,
///         tableId: .literal('users_raw'),
///       ),
///       sourceFormat: .literal(.csv),
///       skipLeadingRows: .literal(1),
///       autodetect: .literal(true),
///       writeDisposition: .literal(.writeTruncate),
///       createDisposition: .literal(.createIfNeeded),
///     ),
///   ),
/// );
/// ```
///
/// Sensitive fields: none. Authorization is via the service account
/// running Terraform — no in-schema secrets on this resource.
final class GoogleBigqueryJob extends Resource {
  static const String tfType = 'google_bigquery_job';

  GoogleBigqueryJob({
    required super.localName,
    required TfArg<String> jobId,
    TfArg<String>? location,
    TfArg<String>? jobTimeoutMs,
    TfArg<Map<String, String>>? labels,
    required BigqueryJobConfiguration configuration,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_id': jobId,
           'location': ?location,
           'job_timeout_ms': ?jobTimeoutMs,
           'labels': ?labels,
           'project': ?project,
           ...configuration.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryJob>`.
  RefTo<GoogleBigqueryJob> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobType => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `user_email` attribute.
  TfRef<String> get userEmail => TfRef.attribute<String>(this, 'user_email');

  /// Reference to `status` — server-computed terminal status of the
  /// job (a list-of-object with `state`, `error_result`, `errors`).
  /// Use `.state` downstream to inspect `DONE` vs `PENDING` /
  /// `RUNNING`. Note: by the time Terraform records this, the job
  /// has already settled (Terraform waits for the job to finish at
  /// apply time).
  ///
  /// Kept hand-written (not derived) to pin the loose
  /// `TfRef<List<Object?>>` shape: the schema types `status` as a
  /// `list(object(...))`, which the output-getter gate would widen to
  /// `TfRef<List<Map<String, Object?>>>`. Holding the narrower element
  /// type here keeps the public surface stable; the gate skips `status`
  /// because the name is present in `extraGetters`.
  TfRef<List<Object?>> get status =>
      TfRef.attribute<List<Object?>>(this, 'status');
}

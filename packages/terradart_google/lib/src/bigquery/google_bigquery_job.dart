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
extension type const BigqueryJobParameterMode._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobParameterMode.variable(String name) : this._(TfArg.variable(name));
  BigqueryJobParameterMode.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobParameterMode.arg(TfArg<String> arg) : this._(arg);

  static const named = BigqueryJobParameterMode._(TfArgLiteral('NAMED'));
  static const positional = BigqueryJobParameterMode._(
    TfArgLiteral('POSITIONAL'),
  );

  static const List<BigqueryJobParameterMode> values = [named, positional];
}

/// `load.source_format`. From the schema description: for CSV
/// specify `CSV`; for datastore backups `DATASTORE_BACKUP`; for
/// newline-delimited JSON `NEWLINE_DELIMITED_JSON`; for Avro `AVRO`;
/// for Parquet `PARQUET`; for ORC `ORC`; [Beta] for Bigtable
/// `BIGTABLE`. Default is `CSV`. The schema doesn't expose a
/// formal `enum_values` array, so this list is sourced from the
/// attribute's `description` prose.
extension type const BigqueryJobLoadSourceFormat._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobLoadSourceFormat.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobLoadSourceFormat.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobLoadSourceFormat.arg(TfArg<String> arg) : this._(arg);

  static const csv = BigqueryJobLoadSourceFormat._(TfArgLiteral('CSV'));
  static const newlineDelimitedJson = BigqueryJobLoadSourceFormat._(
    TfArgLiteral('NEWLINE_DELIMITED_JSON'),
  );
  static const avro = BigqueryJobLoadSourceFormat._(TfArgLiteral('AVRO'));
  static const parquet = BigqueryJobLoadSourceFormat._(TfArgLiteral('PARQUET'));
  static const orc = BigqueryJobLoadSourceFormat._(TfArgLiteral('ORC'));
  static const datastoreBackup = BigqueryJobLoadSourceFormat._(
    TfArgLiteral('DATASTORE_BACKUP'),
  );
  static const bigtable = BigqueryJobLoadSourceFormat._(
    TfArgLiteral('BIGTABLE'),
  );

  static const List<BigqueryJobLoadSourceFormat> values = [
    csv,
    newlineDelimitedJson,
    avro,
    parquet,
    orc,
    datastoreBackup,
    bigtable,
  ];
}

/// `extract.compression`. Schema description: "Possible values
/// include GZIP, DEFLATE, SNAPPY, and NONE. The default value is
/// NONE. DEFLATE and SNAPPY are only supported for Avro." The
/// schema doesn't expose a formal `enum_values` array — values
/// transcribed from the description prose.
extension type const BigqueryJobExtractCompression._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobExtractCompression.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobExtractCompression.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobExtractCompression.arg(TfArg<String> arg) : this._(arg);

  static const gzip = BigqueryJobExtractCompression._(TfArgLiteral('GZIP'));
  static const deflate = BigqueryJobExtractCompression._(
    TfArgLiteral('DEFLATE'),
  );
  static const snappy = BigqueryJobExtractCompression._(TfArgLiteral('SNAPPY'));
  static const none = BigqueryJobExtractCompression._(TfArgLiteral('NONE'));

  static const List<BigqueryJobExtractCompression> values = [
    gzip,
    deflate,
    snappy,
    none,
  ];
}

/// `extract.destination_format`. Schema description: "Possible
/// values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables
/// and SAVED_MODEL for models. The default value for tables is CSV.
/// Tables with nested or repeated fields cannot be exported as CSV.
/// The default value for models is SAVED_MODEL." Values transcribed
/// from the description prose (no formal `enum_values` array on
/// this attribute).
extension type const BigqueryJobExtractDestinationFormat._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobExtractDestinationFormat.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobExtractDestinationFormat.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobExtractDestinationFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const csv = BigqueryJobExtractDestinationFormat._(TfArgLiteral('CSV'));
  static const newlineDelimitedJson = BigqueryJobExtractDestinationFormat._(
    TfArgLiteral('NEWLINE_DELIMITED_JSON'),
  );
  static const avro = BigqueryJobExtractDestinationFormat._(
    TfArgLiteral('AVRO'),
  );
  static const savedModel = BigqueryJobExtractDestinationFormat._(
    TfArgLiteral('SAVED_MODEL'),
  );

  static const List<BigqueryJobExtractDestinationFormat> values = [
    csv,
    newlineDelimitedJson,
    avro,
    savedModel,
  ];
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

  final BigqueryJobCreateDisposition? createDisposition;

  final BigqueryJobWriteDisposition? writeDisposition;

  final BigqueryJobDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobDestinationTable? destinationTable;

  final List<BigqueryJobSourceTables> sourceTables;

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
extension type const BigqueryJobCreateDisposition._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobCreateDisposition.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobCreateDisposition.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobCreateDisposition.arg(TfArg<String> arg) : this._(arg);

  static const createIfNeeded = BigqueryJobCreateDisposition._(
    TfArgLiteral('CREATE_IF_NEEDED'),
  );
  static const createNever = BigqueryJobCreateDisposition._(
    TfArgLiteral('CREATE_NEVER'),
  );

  static const List<BigqueryJobCreateDisposition> values = [
    createIfNeeded,
    createNever,
  ];
}

/// `write_disposition` — derived from the provider schema description.
extension type const BigqueryJobWriteDisposition._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobWriteDisposition.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobWriteDisposition.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobWriteDisposition.arg(TfArg<String> arg) : this._(arg);

  static const writeTruncate = BigqueryJobWriteDisposition._(
    TfArgLiteral('WRITE_TRUNCATE'),
  );
  static const writeAppend = BigqueryJobWriteDisposition._(
    TfArgLiteral('WRITE_APPEND'),
  );
  static const writeEmpty = BigqueryJobWriteDisposition._(
    TfArgLiteral('WRITE_EMPTY'),
  );

  static const List<BigqueryJobWriteDisposition> values = [
    writeTruncate,
    writeAppend,
    writeEmpty,
  ];
}

/// Typed helper for the `copy.destination_encryption_configuration` block of
/// `google_bigquery_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BigqueryJobDestinationEncryptionConfiguration {
  const BigqueryJobDestinationEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `copy.destination_table` block of
/// `google_bigquery_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BigqueryJobDestinationTable {
  const BigqueryJobDestinationTable({
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
final class BigqueryJobSourceTables {
  const BigqueryJobSourceTables({
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

  final BigqueryJobExtractCompression? compression;

  final BigqueryJobExtractDestinationFormat? destinationFormat;

  final TfArg<List<String>> destinationUris;

  final TfArg<String>? fieldDelimiter;

  final TfArg<bool>? printHeader;

  final TfArg<bool>? useAvroLogicalTypes;

  final BigqueryJobSource source;

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
sealed class BigqueryJobSource {
  const BigqueryJobSource();

  /// Sets `source_table`.
  const factory BigqueryJobSource.sourceTable(
    BigqueryJobSourceTable sourceTable,
  ) = BigqueryJobSourceTableChoice;

  /// Sets `source_model`.
  const factory BigqueryJobSource.sourceModel(
    BigqueryJobSourceModel sourceModel,
  ) = BigqueryJobSourceModelChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryJobSource.sourceTable] choice: sets `source_table`.
final class BigqueryJobSourceTableChoice extends BigqueryJobSource {
  const BigqueryJobSourceTableChoice(this.sourceTable);

  final BigqueryJobSourceTable sourceTable;

  @override
  String get blockKey => 'source_table';

  @override
  Map<String, Object?> encode() => {'source_table': sourceTable.encode()};
}

/// The [BigqueryJobSource.sourceModel] choice: sets `source_model`.
final class BigqueryJobSourceModelChoice extends BigqueryJobSource {
  const BigqueryJobSourceModelChoice(this.sourceModel);

  final BigqueryJobSourceModel sourceModel;

  @override
  String get blockKey => 'source_model';

  @override
  Map<String, Object?> encode() => {'source_model': sourceModel.encode()};
}

/// Typed helper for the `extract.source_model` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobSourceModel {
  const BigqueryJobSourceModel({
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
final class BigqueryJobSourceTable {
  const BigqueryJobSourceTable({
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

  final BigqueryJobCreateDisposition? createDisposition;

  final TfArg<String>? encoding;

  final TfArg<String>? fieldDelimiter;

  final TfArg<bool>? ignoreUnknownValues;

  final TfArg<String>? jsonExtension;

  final TfArg<num>? maxBadRecords;

  final TfArg<String>? nullMarker;

  final TfArg<List<String>>? projectionFields;

  final TfArg<String>? quote;

  final TfArg<List<String>>? schemaUpdateOptions;

  final TfArg<num>? skipLeadingRows;

  final BigqueryJobLoadSourceFormat? sourceFormat;

  final TfArg<List<String>> sourceUris;

  final BigqueryJobWriteDisposition? writeDisposition;

  final BigqueryJobDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobDestinationTable destinationTable;

  final BigqueryJobParquetOptions? parquetOptions;

  final BigqueryJobTimePartitioning? timePartitioning;

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

/// Typed helper for the `load.parquet_options` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobParquetOptions {
  const BigqueryJobParquetOptions({
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
final class BigqueryJobTimePartitioning {
  const BigqueryJobTimePartitioning({
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

  final BigqueryJobCreateDisposition? createDisposition;

  final TfArg<bool>? flattenResults;

  final TfArg<num>? maximumBillingTier;

  final TfArg<String>? maximumBytesBilled;

  final BigqueryJobParameterMode? parameterMode;

  final BigqueryJobPriority? priority;

  final TfArg<String> query;

  final TfArg<List<String>>? schemaUpdateOptions;

  final TfArg<bool>? useLegacySql;

  final TfArg<bool>? useQueryCache;

  final BigqueryJobWriteDisposition? writeDisposition;

  final List<BigqueryJobConnectionProperties>? connectionProperties;

  final BigqueryJobDefaultDataset? defaultDataset;

  final BigqueryJobDestinationEncryptionConfiguration?
  destinationEncryptionConfiguration;

  final BigqueryJobDestinationTable? destinationTable;

  final BigqueryJobScriptOptions? scriptOptions;

  final List<BigqueryJobUserDefinedFunctionResources>?
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

/// `priority` — derived from the provider schema description.
extension type const BigqueryJobPriority._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobPriority.variable(String name) : this._(TfArg.variable(name));
  BigqueryJobPriority.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobPriority.arg(TfArg<String> arg) : this._(arg);

  static const interactive = BigqueryJobPriority._(TfArgLiteral('INTERACTIVE'));
  static const batch = BigqueryJobPriority._(TfArgLiteral('BATCH'));

  static const List<BigqueryJobPriority> values = [interactive, batch];
}

/// Typed helper for the `query.connection_properties` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobConnectionProperties {
  const BigqueryJobConnectionProperties({
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
final class BigqueryJobDefaultDataset {
  const BigqueryJobDefaultDataset({required this.datasetId, this.projectId});

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
  };
}

/// Typed helper for the `query.script_options` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobScriptOptions {
  const BigqueryJobScriptOptions({
    this.keyResultStatement,
    this.statementByteBudget,
    this.statementTimeoutMs,
  });

  final BigqueryJobKeyResultStatement? keyResultStatement;

  final TfArg<String>? statementByteBudget;

  final TfArg<String>? statementTimeoutMs;

  Map<String, Object?> encode() => {
    'key_result_statement': ?keyResultStatement?.toTfJson(),
    'statement_byte_budget': ?statementByteBudget?.toTfJson(),
    'statement_timeout_ms': ?statementTimeoutMs?.toTfJson(),
  };
}

/// `key_result_statement` — derived from the provider schema description.
extension type const BigqueryJobKeyResultStatement._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryJobKeyResultStatement.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryJobKeyResultStatement.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryJobKeyResultStatement.arg(TfArg<String> arg) : this._(arg);

  static const last = BigqueryJobKeyResultStatement._(TfArgLiteral('LAST'));
  static const firstSelect = BigqueryJobKeyResultStatement._(
    TfArgLiteral('FIRST_SELECT'),
  );

  static const List<BigqueryJobKeyResultStatement> values = [last, firstSelect];
}

/// Typed helper for the `query.user_defined_function_resources` block of
/// `google_bigquery_job` (derived from provider schema).
@immutable
final class BigqueryJobUserDefinedFunctionResources {
  const BigqueryJobUserDefinedFunctionResources({
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
///   'daily_rollup',
///   // Rotate the job ID to force re-execution on the next apply.
///   jobId: .literal('daily_rollup_2026_05_19'),
///   location: .literal('US'),
///   labels: .literal({'pipeline': 'analytics', 'env': 'prod'}),
///   configuration: .query(
///     .new(
///       query: .literal(
///         'SELECT user_id, COUNT(*) AS events '
///         'FROM analytics_prod.events '
///         'WHERE event_ts >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 DAY) '
///         'GROUP BY user_id',
///       ),
///       useLegacySql: .literal(false),
///       destinationTable: .new(
///         datasetId: analyticsProd.ref,
///         tableId: .literal('daily_user_events'),
///       ),
///       writeDisposition: .writeTruncate,
///       createDisposition: .createIfNeeded,
///       priority: .batch,
///     ),
///   ),
/// );
/// ```
///
/// Example (load — GCS file -> table):
/// ```dart
/// final ingest = GoogleBigqueryJob(
///   'ingest_csv',
///   jobId: .literal('ingest_csv_2026_05_19'),
///   location: .literal('US'),
///   configuration: .load(
///     .new(
///       sourceUris: .literal([
///         'gs://my-landing-bucket/users/2026-05-19/users-*.csv',
///       ]),
///       destinationTable: .new(
///         datasetId: staging.ref,
///         tableId: .literal('users_raw'),
///       ),
///       sourceFormat: .csv,
///       skipLeadingRows: .literal(1),
///       autodetect: .literal(true),
///       writeDisposition: .writeTruncate,
///       createDisposition: .createIfNeeded,
///     ),
///   ),
/// );
/// ```
///
/// Sensitive fields: none. Authorization is via the service account
/// running Terraform — no in-schema secrets on this resource.
final class GoogleBigqueryJob extends Resource {
  static const String tfType = 'google_bigquery_job';

  GoogleBigqueryJob(
    super.localName, {
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

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `job_timeout_ms` attribute.
  TfRef<String> get jobTimeoutMs =>
      TfRef.attribute<String>(this, 'job_timeout_ms');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_analytics_application`.
const Set<String> _awsKinesisAnalyticsApplicationSensitive = <String>{};

/// Typed helper for the `cloudwatch_logging_options` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationCloudwatchLoggingOptions {
  const KinesisAnalyticsApplicationCloudwatchLoggingOptions({
    required this.logStreamArn,
    required this.roleArn,
  });

  final TfArg<String> logStreamArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'log_stream_arn': logStreamArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `inputs` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputs {
  const KinesisAnalyticsApplicationInputs({
    required this.namePrefix,
    this.kinesisFirehose,
    this.kinesisStream,
    this.parallelism,
    this.processingConfiguration,
    required this.schema,
    this.startingPositionConfiguration,
  });

  final TfArg<String> namePrefix;

  final KinesisAnalyticsApplicationInputsKinesisFirehose? kinesisFirehose;

  final KinesisAnalyticsApplicationInputsKinesisStream? kinesisStream;

  final KinesisAnalyticsApplicationInputsParallelism? parallelism;

  final KinesisAnalyticsApplicationInputsProcessingConfiguration?
  processingConfiguration;

  final KinesisAnalyticsApplicationInputsSchema schema;

  final List<KinesisAnalyticsApplicationInputsStartingPositionConfiguration>?
  startingPositionConfiguration;

  Map<String, Object?> encode() => {
    'name_prefix': namePrefix.toTfJson(),
    if (kinesisFirehose != null) 'kinesis_firehose': kinesisFirehose!.encode(),
    if (kinesisStream != null) 'kinesis_stream': kinesisStream!.encode(),
    if (parallelism != null) 'parallelism': parallelism!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    'schema': schema.encode(),
    if (startingPositionConfiguration != null)
      'starting_position_configuration': [
        for (final e in startingPositionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inputs.kinesis_firehose` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsKinesisFirehose {
  const KinesisAnalyticsApplicationInputsKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `inputs.kinesis_stream` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsKinesisStream {
  const KinesisAnalyticsApplicationInputsKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `inputs.parallelism` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsParallelism {
  const KinesisAnalyticsApplicationInputsParallelism({this.count});

  final TfArg<num>? count;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
  };
}

/// Typed helper for the `inputs.processing_configuration` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsProcessingConfiguration {
  const KinesisAnalyticsApplicationInputsProcessingConfiguration({
    required this.lambda,
  });

  final KinesisAnalyticsApplicationInputsProcessingConfigurationLambda lambda;

  Map<String, Object?> encode() => {'lambda': lambda.encode()};
}

/// Typed helper for the `inputs.processing_configuration.lambda` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsProcessingConfigurationLambda {
  const KinesisAnalyticsApplicationInputsProcessingConfigurationLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `inputs.schema` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchema {
  const KinesisAnalyticsApplicationInputsSchema({
    this.recordEncoding,
    required this.recordColumns,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<KinesisAnalyticsApplicationInputsSchemaRecordColumns>
  recordColumns;

  final KinesisAnalyticsApplicationInputsSchemaRecordFormat recordFormat;

  Map<String, Object?> encode() => {
    if (recordEncoding != null) 'record_encoding': recordEncoding!.toTfJson(),
    'record_columns': [for (final e in recordColumns) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `inputs.schema.record_columns` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchemaRecordColumns {
  const KinesisAnalyticsApplicationInputsSchemaRecordColumns({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  Map<String, Object?> encode() => {
    if (mapping != null) 'mapping': mapping!.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `inputs.schema.record_format` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchemaRecordFormat {
  const KinesisAnalyticsApplicationInputsSchemaRecordFormat({
    this.mappingParameters,
  });

  final KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParameters?
  mappingParameters;

  Map<String, Object?> encode() => {
    if (mappingParameters != null)
      'mapping_parameters': mappingParameters!.encode(),
  };
}

/// Typed helper for the `inputs.schema.record_format.mapping_parameters` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParameters {
  const KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  final KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv?
  csv;

  final KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson?
  json;

  Map<String, Object?> encode() => {
    if (csv != null) 'csv': csv!.encode(),
    if (json != null) 'json': json!.encode(),
  };
}

/// Typed helper for the `inputs.schema.record_format.mapping_parameters.csv` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv {
  const KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  final TfArg<String> recordColumnDelimiter;

  final TfArg<String> recordRowDelimiter;

  Map<String, Object?> encode() => {
    'record_column_delimiter': recordColumnDelimiter.toTfJson(),
    'record_row_delimiter': recordRowDelimiter.toTfJson(),
  };
}

/// Typed helper for the `inputs.schema.record_format.mapping_parameters.json` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson {
  const KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  final TfArg<String> recordRowPath;

  Map<String, Object?> encode() => {
    'record_row_path': recordRowPath.toTfJson(),
  };
}

/// Typed helper for the `inputs.starting_position_configuration` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationInputsStartingPositionConfiguration {
  const KinesisAnalyticsApplicationInputsStartingPositionConfiguration({
    this.startingPosition,
  });

  final TfArg<String>? startingPosition;

  Map<String, Object?> encode() => {
    if (startingPosition != null)
      'starting_position': startingPosition!.toTfJson(),
  };
}

/// Typed helper for the `outputs` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputs {
  const KinesisAnalyticsApplicationOutputs({
    required this.name,
    this.kinesisFirehose,
    this.kinesisStream,
    this.lambda,
    required this.schema,
  });

  final TfArg<String> name;

  final KinesisAnalyticsApplicationOutputsKinesisFirehose? kinesisFirehose;

  final KinesisAnalyticsApplicationOutputsKinesisStream? kinesisStream;

  final KinesisAnalyticsApplicationOutputsLambda? lambda;

  final KinesisAnalyticsApplicationOutputsSchema schema;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (kinesisFirehose != null) 'kinesis_firehose': kinesisFirehose!.encode(),
    if (kinesisStream != null) 'kinesis_stream': kinesisStream!.encode(),
    if (lambda != null) 'lambda': lambda!.encode(),
    'schema': schema.encode(),
  };
}

/// Typed helper for the `outputs.kinesis_firehose` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputsKinesisFirehose {
  const KinesisAnalyticsApplicationOutputsKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `outputs.kinesis_stream` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputsKinesisStream {
  const KinesisAnalyticsApplicationOutputsKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `outputs.lambda` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputsLambda {
  const KinesisAnalyticsApplicationOutputsLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `outputs.schema` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputsSchema {
  const KinesisAnalyticsApplicationOutputsSchema({
    required this.recordFormatType,
  });

  final TfArg<String> recordFormatType;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
  };
}

/// Typed helper for the `reference_data_sources` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSources {
  const KinesisAnalyticsApplicationReferenceDataSources({
    required this.tableName,
    required this.s3,
    required this.schema,
  });

  final TfArg<String> tableName;

  final KinesisAnalyticsApplicationReferenceDataSourcesS3 s3;

  final KinesisAnalyticsApplicationReferenceDataSourcesSchema schema;

  Map<String, Object?> encode() => {
    'table_name': tableName.toTfJson(),
    's3': s3.encode(),
    'schema': schema.encode(),
  };
}

/// Typed helper for the `reference_data_sources.s3` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesS3 {
  const KinesisAnalyticsApplicationReferenceDataSourcesS3({
    required this.bucketArn,
    required this.fileKey,
    required this.roleArn,
  });

  final TfArg<String> bucketArn;

  final TfArg<String> fileKey;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    'file_key': fileKey.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `reference_data_sources.schema` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchema {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchema({
    this.recordEncoding,
    required this.recordColumns,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordColumns>
  recordColumns;

  final KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormat
  recordFormat;

  Map<String, Object?> encode() => {
    if (recordEncoding != null) 'record_encoding': recordEncoding!.toTfJson(),
    'record_columns': [for (final e in recordColumns) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `reference_data_sources.schema.record_columns` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordColumns {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordColumns({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  Map<String, Object?> encode() => {
    if (mapping != null) 'mapping': mapping!.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `reference_data_sources.schema.record_format` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormat {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormat({
    this.mappingParameters,
  });

  final KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters?
  mappingParameters;

  Map<String, Object?> encode() => {
    if (mappingParameters != null)
      'mapping_parameters': mappingParameters!.encode(),
  };
}

/// Typed helper for the `reference_data_sources.schema.record_format.mapping_parameters` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  final KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv?
  csv;

  final KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson?
  json;

  Map<String, Object?> encode() => {
    if (csv != null) 'csv': csv!.encode(),
    if (json != null) 'json': json!.encode(),
  };
}

/// Typed helper for the `reference_data_sources.schema.record_format.mapping_parameters.csv` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  final TfArg<String> recordColumnDelimiter;

  final TfArg<String> recordRowDelimiter;

  Map<String, Object?> encode() => {
    'record_column_delimiter': recordColumnDelimiter.toTfJson(),
    'record_row_delimiter': recordRowDelimiter.toTfJson(),
  };
}

/// Typed helper for the `reference_data_sources.schema.record_format.mapping_parameters.json` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson {
  const KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  final TfArg<String> recordRowPath;

  Map<String, Object?> encode() => {
    'record_row_path': recordRowPath.toTfJson(),
  };
}

/// Factory wrapper for `aws_kinesis_analytics_application`.
final class AwsKinesisAnalyticsApplication extends Resource {
  static const String tfType = 'aws_kinesis_analytics_application';

  AwsKinesisAnalyticsApplication({
    required super.localName,
    TfArg<String>? code,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? startApplication,
    TfArg<Map<String, String>>? tags,
    KinesisAnalyticsApplicationCloudwatchLoggingOptions?
    cloudwatchLoggingOptions,
    KinesisAnalyticsApplicationInputs? inputs,
    List<KinesisAnalyticsApplicationOutputs>? outputs,
    KinesisAnalyticsApplicationReferenceDataSources? referenceDataSources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (code != null) 'code': code,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (startApplication != null) 'start_application': startApplication,
           if (tags != null) 'tags': tags,
           if (cloudwatchLoggingOptions != null)
             'cloudwatch_logging_options': TfArg.literal(
               cloudwatchLoggingOptions.encode(),
             ),
           if (inputs != null) 'inputs': TfArg.literal(inputs.encode()),
           if (outputs != null)
             'outputs': TfArg.literal([for (final e in outputs) e.encode()]),
           if (referenceDataSources != null)
             'reference_data_sources': TfArg.literal(
               referenceDataSources.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisAnalyticsApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_timestamp` attribute.
  TfRef<String> get createTimestamp =>
      TfRef.attribute<String>(this, 'create_timestamp');

  /// Reference to `last_update_timestamp` attribute.
  TfRef<String> get lastUpdateTimestamp =>
      TfRef.attribute<String>(this, 'last_update_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}

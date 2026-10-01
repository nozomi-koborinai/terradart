// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final RefTo<AwsIamRole> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'log_stream_arn': logStreamArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
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

  final KinesisAnalyticsApplicationKinesisFirehose? kinesisFirehose;

  final KinesisAnalyticsApplicationKinesisStream? kinesisStream;

  final KinesisAnalyticsApplicationParallelism? parallelism;

  final KinesisAnalyticsApplicationProcessingConfiguration?
  processingConfiguration;

  final KinesisAnalyticsApplicationInputsSchema schema;

  final List<KinesisAnalyticsApplicationStartingPositionConfiguration>?
  startingPositionConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'name_prefix': namePrefix.toTfJson(),
    'kinesis_firehose': ?kinesisFirehose?.encode(),
    'kinesis_stream': ?kinesisStream?.encode(),
    'parallelism': ?parallelism?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    'schema': schema.encode(),
    if (startingPositionConfiguration != null)
      'starting_position_configuration': [
        for (final e in startingPositionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inputs.kinesis_firehose` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationKinesisFirehose {
  const KinesisAnalyticsApplicationKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final RefTo<AwsIamRole> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `inputs.kinesis_stream` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationKinesisStream {
  const KinesisAnalyticsApplicationKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final RefTo<AwsIamRole> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `inputs.parallelism` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationParallelism {
  const KinesisAnalyticsApplicationParallelism({this.count});

  final TfArg<num>? count;

  @internal
  Map<String, Object?> encode() => {'count': ?count?.toTfJson()};
}

/// Typed helper for the `inputs.processing_configuration` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationProcessingConfiguration {
  const KinesisAnalyticsApplicationProcessingConfiguration({
    required this.lambda,
  });

  final KinesisAnalyticsApplicationLambda lambda;

  @internal
  Map<String, Object?> encode() => {'lambda': lambda.encode()};
}

/// Typed helper for the `outputs.lambda` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationLambda {
  const KinesisAnalyticsApplicationLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  final TfArg<String> resourceArn;

  final RefTo<AwsIamRole> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'resource_arn': resourceArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `inputs.schema` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationInputsSchema {
  const KinesisAnalyticsApplicationInputsSchema({
    this.recordEncoding,
    required this.recordColumns,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<KinesisAnalyticsApplicationRecordColumns> recordColumns;

  final KinesisAnalyticsApplicationRecordFormat recordFormat;

  @internal
  Map<String, Object?> encode() => {
    'record_encoding': ?recordEncoding?.toTfJson(),
    'record_columns': [for (final e in recordColumns) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `inputs.schema.record_columns` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationRecordColumns {
  const KinesisAnalyticsApplicationRecordColumns({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  @internal
  Map<String, Object?> encode() => {
    'mapping': ?mapping?.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `inputs.schema.record_format` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationRecordFormat {
  const KinesisAnalyticsApplicationRecordFormat({this.mappingParameters});

  final KinesisAnalyticsApplicationMappingParameters? mappingParameters;

  @internal
  Map<String, Object?> encode() => {
    'mapping_parameters': ?mappingParameters?.encode(),
  };
}

/// Exactly one of `csv`, `json` on the `inputs.schema.record_format.mapping_parameters` block of `aws_kinesis_analytics_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.csv(...)`.
sealed class KinesisAnalyticsApplicationMappingParameters {
  const KinesisAnalyticsApplicationMappingParameters();

  /// Sets `csv`.
  const factory KinesisAnalyticsApplicationMappingParameters.csv(
    KinesisAnalyticsApplicationCsv csv,
  ) = KinesisAnalyticsApplicationMappingParametersCsv;

  /// Sets `json`.
  const factory KinesisAnalyticsApplicationMappingParameters.json(
    KinesisAnalyticsApplicationJson json,
  ) = KinesisAnalyticsApplicationMappingParametersJson;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [KinesisAnalyticsApplicationMappingParameters.csv] choice: sets `csv`.
final class KinesisAnalyticsApplicationMappingParametersCsv
    extends KinesisAnalyticsApplicationMappingParameters {
  const KinesisAnalyticsApplicationMappingParametersCsv(this.csv);

  final KinesisAnalyticsApplicationCsv csv;

  @internal
  @override
  String get blockKey => 'csv';

  @internal
  @override
  Map<String, Object?> encode() => {'csv': csv.encode()};
}

/// The [KinesisAnalyticsApplicationMappingParameters.json] choice: sets `json`.
final class KinesisAnalyticsApplicationMappingParametersJson
    extends KinesisAnalyticsApplicationMappingParameters {
  const KinesisAnalyticsApplicationMappingParametersJson(this.json);

  final KinesisAnalyticsApplicationJson json;

  @internal
  @override
  String get blockKey => 'json';

  @internal
  @override
  Map<String, Object?> encode() => {'json': json.encode()};
}

/// Typed helper for the `inputs.schema.record_format.mapping_parameters.csv` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationCsv {
  const KinesisAnalyticsApplicationCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  final TfArg<String> recordColumnDelimiter;

  final TfArg<String> recordRowDelimiter;

  @internal
  Map<String, Object?> encode() => {
    'record_column_delimiter': recordColumnDelimiter.toTfJson(),
    'record_row_delimiter': recordRowDelimiter.toTfJson(),
  };
}

/// Typed helper for the `inputs.schema.record_format.mapping_parameters.json` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisAnalyticsApplicationJson {
  const KinesisAnalyticsApplicationJson({required this.recordRowPath});

  final TfArg<String> recordRowPath;

  @internal
  Map<String, Object?> encode() => {
    'record_row_path': recordRowPath.toTfJson(),
  };
}

/// Typed helper for the `inputs.starting_position_configuration` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationStartingPositionConfiguration {
  const KinesisAnalyticsApplicationStartingPositionConfiguration({
    this.startingPosition,
  });

  final KinesisAnalyticsApplicationStartingPosition? startingPosition;

  @internal
  Map<String, Object?> encode() => {
    'starting_position': ?startingPosition?.toTfJson(),
  };
}

/// `starting_position` — derived from the provider schema description.
extension type const KinesisAnalyticsApplicationStartingPosition._(
  TfArg<String> _
) implements TfArg<String> {
  KinesisAnalyticsApplicationStartingPosition.variable(String name)
    : this._(TfArg.variable(name));
  KinesisAnalyticsApplicationStartingPosition.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisAnalyticsApplicationStartingPosition.arg(TfArg<String> arg)
    : this._(arg);

  static const now = KinesisAnalyticsApplicationStartingPosition._(
    TfArgLiteral('NOW'),
  );
  static const trimHorizon = KinesisAnalyticsApplicationStartingPosition._(
    TfArgLiteral('TRIM_HORIZON'),
  );
  static const lastStoppedPoint = KinesisAnalyticsApplicationStartingPosition._(
    TfArgLiteral('LAST_STOPPED_POINT'),
  );

  static const List<KinesisAnalyticsApplicationStartingPosition> values = [
    now,
    trimHorizon,
    lastStoppedPoint,
  ];
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

  final KinesisAnalyticsApplicationKinesisFirehose? kinesisFirehose;

  final KinesisAnalyticsApplicationKinesisStream? kinesisStream;

  final KinesisAnalyticsApplicationLambda? lambda;

  final KinesisAnalyticsApplicationOutputsSchema schema;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'kinesis_firehose': ?kinesisFirehose?.encode(),
    'kinesis_stream': ?kinesisStream?.encode(),
    'lambda': ?lambda?.encode(),
    'schema': schema.encode(),
  };
}

/// Typed helper for the `outputs.schema` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationOutputsSchema {
  const KinesisAnalyticsApplicationOutputsSchema({
    required this.recordFormatType,
  });

  final KinesisAnalyticsApplicationRecordFormatType recordFormatType;

  @internal
  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
  };
}

/// `record_format_type` — derived from the provider schema description.
extension type const KinesisAnalyticsApplicationRecordFormatType._(
  TfArg<String> _
) implements TfArg<String> {
  KinesisAnalyticsApplicationRecordFormatType.variable(String name)
    : this._(TfArg.variable(name));
  KinesisAnalyticsApplicationRecordFormatType.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisAnalyticsApplicationRecordFormatType.arg(TfArg<String> arg)
    : this._(arg);

  static const json = KinesisAnalyticsApplicationRecordFormatType._(
    TfArgLiteral('JSON'),
  );
  static const csv = KinesisAnalyticsApplicationRecordFormatType._(
    TfArgLiteral('CSV'),
  );

  static const List<KinesisAnalyticsApplicationRecordFormatType> values = [
    json,
    csv,
  ];
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

  final KinesisAnalyticsApplicationS3 s3;

  final KinesisAnalyticsApplicationInputsSchema schema;

  @internal
  Map<String, Object?> encode() => {
    'table_name': tableName.toTfJson(),
    's3': s3.encode(),
    'schema': schema.encode(),
  };
}

/// Typed helper for the `reference_data_sources.s3` block of
/// `aws_kinesis_analytics_application` (derived from provider schema).
@immutable
final class KinesisAnalyticsApplicationS3 {
  const KinesisAnalyticsApplicationS3({
    required this.bucketArn,
    required this.fileKey,
    required this.roleArn,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String> fileKey;

  final RefTo<AwsIamRole> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'file_key': fileKey.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_kinesis_analytics_application`.
final class AwsKinesisAnalyticsApplication extends Resource {
  static const String tfType = 'aws_kinesis_analytics_application';

  AwsKinesisAnalyticsApplication(
    super.localName, {
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
           'code': ?code,
           'description': ?description,
           'name': name,
           'region': ?region,
           'start_application': ?startApplication,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisAnalyticsApplication>`.
  RefTo<AwsKinesisAnalyticsApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `code` attribute.
  TfRef<String> get code => TfRef.attribute<String>(this, 'code');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `start_application` attribute.
  TfRef<bool> get startApplication =>
      TfRef.attribute<bool>(this, 'start_application');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_timestreamquery_scheduled_query`.
const Set<String> _awsTimestreamqueryScheduledQuerySensitive = <String>{};

/// Typed helper for the `error_report_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryErrorReportConfiguration {
  const TimestreamqueryScheduledQueryErrorReportConfiguration({
    this.s3Configuration,
  });

  final List<TimestreamqueryScheduledQueryS3Configuration>? s3Configuration;

  @internal
  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `error_report_configuration.s3_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryS3Configuration {
  const TimestreamqueryScheduledQueryS3Configuration({
    required this.bucketName,
    this.encryptionOption,
    this.objectKeyPrefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TimestreamqueryScheduledQueryEncryptionOption? encryptionOption;

  final TfArg<String>? objectKeyPrefix;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'encryption_option': ?encryptionOption?.toTfJson(),
    'object_key_prefix': ?objectKeyPrefix?.toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
extension type const TimestreamqueryScheduledQueryEncryptionOption._(
  TfArg<String> _
) implements TfArg<String> {
  TimestreamqueryScheduledQueryEncryptionOption.variable(String name)
    : this._(TfArg.variable(name));
  TimestreamqueryScheduledQueryEncryptionOption.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamqueryScheduledQueryEncryptionOption.arg(TfArg<String> arg)
    : this._(arg);

  static const sseS3 = TimestreamqueryScheduledQueryEncryptionOption._(
    TfArgLiteral('SSE_S3'),
  );
  static const sseKms = TimestreamqueryScheduledQueryEncryptionOption._(
    TfArgLiteral('SSE_KMS'),
  );

  static const List<TimestreamqueryScheduledQueryEncryptionOption> values = [
    sseS3,
    sseKms,
  ];
}

/// Typed helper for the `last_run_summary` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummary {
  const TimestreamqueryScheduledQueryLastRunSummary({
    this.errorReportLocation,
    this.executionStats,
    this.queryInsightsResponse,
  });

  final List<TimestreamqueryScheduledQueryErrorReportLocation>?
  errorReportLocation;

  final List<TimestreamqueryScheduledQueryExecutionStats>? executionStats;

  final List<TimestreamqueryScheduledQueryInsightsResponse>?
  queryInsightsResponse;

  @internal
  Map<String, Object?> encode() => {
    if (errorReportLocation != null)
      'error_report_location': [
        for (final e in errorReportLocation!) e.encode(),
      ],
    if (executionStats != null)
      'execution_stats': [for (final e in executionStats!) e.encode()],
    if (queryInsightsResponse != null)
      'query_insights_response': [
        for (final e in queryInsightsResponse!) e.encode(),
      ],
  };
}

/// Typed helper for the `last_run_summary.error_report_location` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryErrorReportLocation {
  const TimestreamqueryScheduledQueryErrorReportLocation({
    this.s3ReportLocation,
  });

  final List<TimestreamqueryScheduledQueryS3ReportLocation>? s3ReportLocation;

  @internal
  Map<String, Object?> encode() => {
    if (s3ReportLocation != null)
      's3_report_location': [for (final e in s3ReportLocation!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.error_report_location.s3_report_location` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryS3ReportLocation {
  const TimestreamqueryScheduledQueryS3ReportLocation();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.execution_stats` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryExecutionStats {
  const TimestreamqueryScheduledQueryExecutionStats();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.query_insights_response` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryInsightsResponse {
  const TimestreamqueryScheduledQueryInsightsResponse({
    this.querySpatialCoverage,
    this.queryTemporalRange,
  });

  final List<TimestreamqueryScheduledQuerySpatialCoverage>?
  querySpatialCoverage;

  final List<TimestreamqueryScheduledQueryTemporalRange>? queryTemporalRange;

  @internal
  Map<String, Object?> encode() => {
    if (querySpatialCoverage != null)
      'query_spatial_coverage': [
        for (final e in querySpatialCoverage!) e.encode(),
      ],
    if (queryTemporalRange != null)
      'query_temporal_range': [for (final e in queryTemporalRange!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.query_insights_response.query_spatial_coverage` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQuerySpatialCoverage {
  const TimestreamqueryScheduledQuerySpatialCoverage({this.max});

  final List<TimestreamqueryScheduledQueryMax>? max;

  @internal
  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.query_insights_response.query_spatial_coverage.max` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryMax {
  const TimestreamqueryScheduledQueryMax();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.query_insights_response.query_temporal_range` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryTemporalRange {
  const TimestreamqueryScheduledQueryTemporalRange({this.max});

  final List<TimestreamqueryScheduledQueryMax>? max;

  @internal
  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `notification_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryNotificationConfiguration {
  const TimestreamqueryScheduledQueryNotificationConfiguration({
    this.snsConfiguration,
  });

  final List<TimestreamqueryScheduledQuerySnsConfiguration>? snsConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (snsConfiguration != null)
      'sns_configuration': [for (final e in snsConfiguration!) e.encode()],
  };
}

/// Typed helper for the `notification_configuration.sns_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQuerySnsConfiguration {
  const TimestreamqueryScheduledQuerySnsConfiguration({required this.topicArn});

  final RefTo<AwsSnsTopic> topicArn;

  @internal
  Map<String, Object?> encode() => {
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `recently_failed_runs` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRuns {
  const TimestreamqueryScheduledQueryRecentlyFailedRuns({
    this.errorReportLocation,
    this.executionStats,
    this.queryInsightsResponse,
  });

  final List<TimestreamqueryScheduledQueryErrorReportLocation>?
  errorReportLocation;

  final List<TimestreamqueryScheduledQueryExecutionStats>? executionStats;

  final List<TimestreamqueryScheduledQueryInsightsResponse>?
  queryInsightsResponse;

  @internal
  Map<String, Object?> encode() => {
    if (errorReportLocation != null)
      'error_report_location': [
        for (final e in errorReportLocation!) e.encode(),
      ],
    if (executionStats != null)
      'execution_stats': [for (final e in executionStats!) e.encode()],
    if (queryInsightsResponse != null)
      'query_insights_response': [
        for (final e in queryInsightsResponse!) e.encode(),
      ],
  };
}

/// Typed helper for the `schedule_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryScheduleConfiguration {
  const TimestreamqueryScheduledQueryScheduleConfiguration({
    required this.scheduleExpression,
  });

  final TfArg<String> scheduleExpression;

  @internal
  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
  };
}

/// Typed helper for the `target_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTargetConfiguration {
  const TimestreamqueryScheduledQueryTargetConfiguration({
    this.timestreamConfiguration,
  });

  final List<TimestreamqueryScheduledQueryTimestreamConfiguration>?
  timestreamConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (timestreamConfiguration != null)
      'timestream_configuration': [
        for (final e in timestreamConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.timestream_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTimestreamConfiguration {
  const TimestreamqueryScheduledQueryTimestreamConfiguration({
    required this.databaseName,
    this.measureNameColumn,
    required this.tableName,
    required this.timeColumn,
    this.dimensionMapping,
    this.mixedMeasureMapping,
    this.multiMeasureMappings,
  });

  final TfArg<String> databaseName;

  final TfArg<String>? measureNameColumn;

  final TfArg<String> tableName;

  final TfArg<String> timeColumn;

  final List<TimestreamqueryScheduledQueryDimensionMapping>? dimensionMapping;

  final List<TimestreamqueryScheduledQueryMixedMeasureMapping>?
  mixedMeasureMapping;

  final List<TimestreamqueryScheduledQueryMultiMeasureMappings>?
  multiMeasureMappings;

  @internal
  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'measure_name_column': ?measureNameColumn?.toTfJson(),
    'table_name': tableName.toTfJson(),
    'time_column': timeColumn.toTfJson(),
    if (dimensionMapping != null)
      'dimension_mapping': [for (final e in dimensionMapping!) e.encode()],
    if (mixedMeasureMapping != null)
      'mixed_measure_mapping': [
        for (final e in mixedMeasureMapping!) e.encode(),
      ],
    if (multiMeasureMappings != null)
      'multi_measure_mappings': [
        for (final e in multiMeasureMappings!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.timestream_configuration.dimension_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryDimensionMapping {
  const TimestreamqueryScheduledQueryDimensionMapping({
    required this.dimensionValueType,
    required this.name,
  });

  final TimestreamqueryScheduledQueryDimensionValueType dimensionValueType;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'dimension_value_type': dimensionValueType.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `dimension_value_type` — derived from the provider schema description.
extension type const TimestreamqueryScheduledQueryDimensionValueType._(
  TfArg<String> _
) implements TfArg<String> {
  TimestreamqueryScheduledQueryDimensionValueType.variable(String name)
    : this._(TfArg.variable(name));
  TimestreamqueryScheduledQueryDimensionValueType.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamqueryScheduledQueryDimensionValueType.arg(TfArg<String> arg)
    : this._(arg);

  static const varchar = TimestreamqueryScheduledQueryDimensionValueType._(
    TfArgLiteral('VARCHAR'),
  );

  static const List<TimestreamqueryScheduledQueryDimensionValueType> values = [
    varchar,
  ];
}

/// Typed helper for the `target_configuration.timestream_configuration.mixed_measure_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryMixedMeasureMapping {
  const TimestreamqueryScheduledQueryMixedMeasureMapping({
    this.measureName,
    required this.measureValueType,
    this.sourceColumn,
    this.targetMeasureName,
    this.multiMeasureAttributeMapping,
  });

  final TfArg<String>? measureName;

  final TimestreamqueryScheduledQueryMeasureValueType measureValueType;

  final TfArg<String>? sourceColumn;

  final TfArg<String>? targetMeasureName;

  final List<TimestreamqueryScheduledQueryMultiMeasureAttributeMapping>?
  multiMeasureAttributeMapping;

  @internal
  Map<String, Object?> encode() => {
    'measure_name': ?measureName?.toTfJson(),
    'measure_value_type': measureValueType.toTfJson(),
    'source_column': ?sourceColumn?.toTfJson(),
    'target_measure_name': ?targetMeasureName?.toTfJson(),
    if (multiMeasureAttributeMapping != null)
      'multi_measure_attribute_mapping': [
        for (final e in multiMeasureAttributeMapping!) e.encode(),
      ],
  };
}

/// `measure_value_type` — derived from the provider schema description.
extension type const TimestreamqueryScheduledQueryMeasureValueType._(
  TfArg<String> _
) implements TfArg<String> {
  TimestreamqueryScheduledQueryMeasureValueType.variable(String name)
    : this._(TfArg.variable(name));
  TimestreamqueryScheduledQueryMeasureValueType.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamqueryScheduledQueryMeasureValueType.arg(TfArg<String> arg)
    : this._(arg);

  static const bigint = TimestreamqueryScheduledQueryMeasureValueType._(
    TfArgLiteral('BIGINT'),
  );
  static const boolean = TimestreamqueryScheduledQueryMeasureValueType._(
    TfArgLiteral('BOOLEAN'),
  );
  static const double = TimestreamqueryScheduledQueryMeasureValueType._(
    TfArgLiteral('DOUBLE'),
  );
  static const varchar = TimestreamqueryScheduledQueryMeasureValueType._(
    TfArgLiteral('VARCHAR'),
  );
  static const multi = TimestreamqueryScheduledQueryMeasureValueType._(
    TfArgLiteral('MULTI'),
  );

  static const List<TimestreamqueryScheduledQueryMeasureValueType> values = [
    bigint,
    boolean,
    double,
    varchar,
    multi,
  ];
}

/// Typed helper for the `target_configuration.timestream_configuration.mixed_measure_mapping.multi_measure_attribute_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TimestreamqueryScheduledQueryMultiMeasureAttributeMapping {
  const TimestreamqueryScheduledQueryMultiMeasureAttributeMapping({
    required this.measureValueType,
    required this.sourceColumn,
    this.targetMultiMeasureAttributeName,
  });

  final TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType
  measureValueType;

  final TfArg<String> sourceColumn;

  final TfArg<String>? targetMultiMeasureAttributeName;

  @internal
  Map<String, Object?> encode() => {
    'measure_value_type': measureValueType.toTfJson(),
    'source_column': sourceColumn.toTfJson(),
    'target_multi_measure_attribute_name': ?targetMultiMeasureAttributeName
        ?.toTfJson(),
  };
}

/// `measure_value_type` — derived from the provider schema description.
extension type const TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
  TfArg<String> _
) implements TfArg<String> {
  TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const bigint =
      TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
        TfArgLiteral('BIGINT'),
      );
  static const boolean =
      TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
        TfArgLiteral('BOOLEAN'),
      );
  static const double =
      TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
        TfArgLiteral('DOUBLE'),
      );
  static const varchar =
      TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
        TfArgLiteral('VARCHAR'),
      );
  static const timestamp =
      TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType._(
        TfArgLiteral('TIMESTAMP'),
      );

  static const List<
    TimestreamqueryScheduledQueryMultiMeasureAttributeMappingMeasureValueType
  >
  values = [bigint, boolean, double, varchar, timestamp];
}

/// Typed helper for the `target_configuration.timestream_configuration.multi_measure_mappings` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryMultiMeasureMappings {
  const TimestreamqueryScheduledQueryMultiMeasureMappings({
    this.targetMultiMeasureName,
    this.multiMeasureAttributeMapping,
  });

  final TfArg<String>? targetMultiMeasureName;

  final List<TimestreamqueryScheduledQueryMultiMeasureAttributeMapping>?
  multiMeasureAttributeMapping;

  @internal
  Map<String, Object?> encode() => {
    'target_multi_measure_name': ?targetMultiMeasureName?.toTfJson(),
    if (multiMeasureAttributeMapping != null)
      'multi_measure_attribute_mapping': [
        for (final e in multiMeasureAttributeMapping!) e.encode(),
      ],
  };
}

/// Factory wrapper for `aws_timestreamquery_scheduled_query`.
final class AwsTimestreamqueryScheduledQuery extends Resource {
  static const String tfType = 'aws_timestreamquery_scheduled_query';

  AwsTimestreamqueryScheduledQuery(
    super.localName, {
    required RefTo<AwsIamRole> executionRoleArn,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    required TfArg<String> queryString,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<TimestreamqueryScheduledQueryErrorReportConfiguration>?
    errorReportConfiguration,
    List<TimestreamqueryScheduledQueryLastRunSummary>? lastRunSummary,
    List<TimestreamqueryScheduledQueryNotificationConfiguration>?
    notificationConfiguration,
    List<TimestreamqueryScheduledQueryRecentlyFailedRuns>? recentlyFailedRuns,
    List<TimestreamqueryScheduledQueryScheduleConfiguration>?
    scheduleConfiguration,
    List<TimestreamqueryScheduledQueryTargetConfiguration>? targetConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'query_string': queryString,
           'region': ?region,
           'tags': ?tags,
           if (errorReportConfiguration != null)
             'error_report_configuration': TfArg.literal([
               for (final e in errorReportConfiguration) e.encode(),
             ]),
           if (lastRunSummary != null)
             'last_run_summary': TfArg.literal([
               for (final e in lastRunSummary) e.encode(),
             ]),
           if (notificationConfiguration != null)
             'notification_configuration': TfArg.literal([
               for (final e in notificationConfiguration) e.encode(),
             ]),
           if (recentlyFailedRuns != null)
             'recently_failed_runs': TfArg.literal([
               for (final e in recentlyFailedRuns) e.encode(),
             ]),
           if (scheduleConfiguration != null)
             'schedule_configuration': TfArg.literal([
               for (final e in scheduleConfiguration) e.encode(),
             ]),
           if (targetConfiguration != null)
             'target_configuration': TfArg.literal([
               for (final e in targetConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreamqueryScheduledQuerySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTimestreamqueryScheduledQuery>`.
  RefTo<AwsTimestreamqueryScheduledQuery> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `next_invocation_time` attribute.
  TfRef<String> get nextInvocationTime =>
      TfRef.attribute<String>(this, 'next_invocation_time');

  /// Reference to `previous_invocation_time` attribute.
  TfRef<String> get previousInvocationTime =>
      TfRef.attribute<String>(this, 'previous_invocation_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `query_string` attribute.
  TfRef<String> get queryString =>
      TfRef.attribute<String>(this, 'query_string');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

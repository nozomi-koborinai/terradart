// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_timestreamquery_scheduled_query`.
const Set<String> _awsTimestreamqueryScheduledQuerySensitive = <String>{};

/// Typed helper for the `error_report_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryErrorReportConfiguration {
  const TimestreamqueryScheduledQueryErrorReportConfiguration({
    this.s3Configuration,
  });

  final List<
    TimestreamqueryScheduledQueryErrorReportConfigurationS3Configuration
  >?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `error_report_configuration.s3_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryErrorReportConfigurationS3Configuration {
  const TimestreamqueryScheduledQueryErrorReportConfigurationS3Configuration({
    required this.bucketName,
    this.encryptionOption,
    this.objectKeyPrefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? encryptionOption;

  final TfArg<String>? objectKeyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (encryptionOption != null)
      'encryption_option': encryptionOption!.toTfJson(),
    if (objectKeyPrefix != null)
      'object_key_prefix': objectKeyPrefix!.toTfJson(),
  };
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

  final List<TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocation>?
  errorReportLocation;

  final List<TimestreamqueryScheduledQueryLastRunSummaryExecutionStats>?
  executionStats;

  final List<TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponse>?
  queryInsightsResponse;

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
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocation {
  const TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocation({
    this.s3ReportLocation,
  });

  final List<
    TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation
  >?
  s3ReportLocation;

  Map<String, Object?> encode() => {
    if (s3ReportLocation != null)
      's3_report_location': [for (final e in s3ReportLocation!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.error_report_location.s3_report_location` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation {
  const TimestreamqueryScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.execution_stats` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryExecutionStats {
  const TimestreamqueryScheduledQueryLastRunSummaryExecutionStats();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.query_insights_response` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponse {
  const TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponse({
    this.querySpatialCoverage,
    this.queryTemporalRange,
  });

  final List<
    TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage
  >?
  querySpatialCoverage;

  final List<
    TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange
  >?
  queryTemporalRange;

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
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage {
  const TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverage({
    this.max,
  });

  final List<
    TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMax
  >?
  max;

  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.query_insights_response.query_spatial_coverage.max` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMax {
  const TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMax();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `last_run_summary.query_insights_response.query_temporal_range` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange {
  const TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRange({
    this.max,
  });

  final List<
    TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMax
  >?
  max;

  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `last_run_summary.query_insights_response.query_temporal_range.max` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMax {
  const TimestreamqueryScheduledQueryLastRunSummaryQueryInsightsResponseQueryTemporalRangeMax();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `notification_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryNotificationConfiguration {
  const TimestreamqueryScheduledQueryNotificationConfiguration({
    this.snsConfiguration,
  });

  final List<
    TimestreamqueryScheduledQueryNotificationConfigurationSnsConfiguration
  >?
  snsConfiguration;

  Map<String, Object?> encode() => {
    if (snsConfiguration != null)
      'sns_configuration': [for (final e in snsConfiguration!) e.encode()],
  };
}

/// Typed helper for the `notification_configuration.sns_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryNotificationConfigurationSnsConfiguration {
  const TimestreamqueryScheduledQueryNotificationConfigurationSnsConfiguration({
    required this.topicArn,
  });

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {'topic_arn': topicArn.toTfJson()};
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

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocation
  >?
  errorReportLocation;

  final List<TimestreamqueryScheduledQueryRecentlyFailedRunsExecutionStats>?
  executionStats;

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponse
  >?
  queryInsightsResponse;

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

/// Typed helper for the `recently_failed_runs.error_report_location` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocation {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocation({
    this.s3ReportLocation,
  });

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocationS3ReportLocation
  >?
  s3ReportLocation;

  Map<String, Object?> encode() => {
    if (s3ReportLocation != null)
      's3_report_location': [for (final e in s3ReportLocation!) e.encode()],
  };
}

/// Typed helper for the `recently_failed_runs.error_report_location.s3_report_location` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocationS3ReportLocation {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsErrorReportLocationS3ReportLocation();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `recently_failed_runs.execution_stats` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsExecutionStats {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsExecutionStats();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `recently_failed_runs.query_insights_response` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponse {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponse({
    this.querySpatialCoverage,
    this.queryTemporalRange,
  });

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverage
  >?
  querySpatialCoverage;

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRange
  >?
  queryTemporalRange;

  Map<String, Object?> encode() => {
    if (querySpatialCoverage != null)
      'query_spatial_coverage': [
        for (final e in querySpatialCoverage!) e.encode(),
      ],
    if (queryTemporalRange != null)
      'query_temporal_range': [for (final e in queryTemporalRange!) e.encode()],
  };
}

/// Typed helper for the `recently_failed_runs.query_insights_response.query_spatial_coverage` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverage {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverage({
    this.max,
  });

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverageMax
  >?
  max;

  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `recently_failed_runs.query_insights_response.query_spatial_coverage.max` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverageMax {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQuerySpatialCoverageMax();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `recently_failed_runs.query_insights_response.query_temporal_range` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRange {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRange({
    this.max,
  });

  final List<
    TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRangeMax
  >?
  max;

  Map<String, Object?> encode() => {
    if (max != null) 'max': [for (final e in max!) e.encode()],
  };
}

/// Typed helper for the `recently_failed_runs.query_insights_response.query_temporal_range.max` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRangeMax {
  const TimestreamqueryScheduledQueryRecentlyFailedRunsQueryInsightsResponseQueryTemporalRangeMax();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `schedule_configuration` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryScheduleConfiguration {
  const TimestreamqueryScheduledQueryScheduleConfiguration({
    required this.scheduleExpression,
  });

  final TfArg<String> scheduleExpression;

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

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfiguration
  >?
  timestreamConfiguration;

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
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfiguration {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfiguration({
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

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping
  >?
  dimensionMapping;

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping
  >?
  mixedMeasureMapping;

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings
  >?
  multiMeasureMappings;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    if (measureNameColumn != null)
      'measure_name_column': measureNameColumn!.toTfJson(),
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
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping({
    required this.dimensionValueType,
    required this.name,
  });

  final TfArg<String> dimensionValueType;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'dimension_value_type': dimensionValueType.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `target_configuration.timestream_configuration.mixed_measure_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping({
    this.measureName,
    required this.measureValueType,
    this.sourceColumn,
    this.targetMeasureName,
    this.multiMeasureAttributeMapping,
  });

  final TfArg<String>? measureName;

  final TfArg<String> measureValueType;

  final TfArg<String>? sourceColumn;

  final TfArg<String>? targetMeasureName;

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping
  >?
  multiMeasureAttributeMapping;

  Map<String, Object?> encode() => {
    if (measureName != null) 'measure_name': measureName!.toTfJson(),
    'measure_value_type': measureValueType.toTfJson(),
    if (sourceColumn != null) 'source_column': sourceColumn!.toTfJson(),
    if (targetMeasureName != null)
      'target_measure_name': targetMeasureName!.toTfJson(),
    if (multiMeasureAttributeMapping != null)
      'multi_measure_attribute_mapping': [
        for (final e in multiMeasureAttributeMapping!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.timestream_configuration.mixed_measure_mapping.multi_measure_attribute_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping({
    required this.measureValueType,
    required this.sourceColumn,
    this.targetMultiMeasureAttributeName,
  });

  final TfArg<String> measureValueType;

  final TfArg<String> sourceColumn;

  final TfArg<String>? targetMultiMeasureAttributeName;

  Map<String, Object?> encode() => {
    'measure_value_type': measureValueType.toTfJson(),
    'source_column': sourceColumn.toTfJson(),
    if (targetMultiMeasureAttributeName != null)
      'target_multi_measure_attribute_name': targetMultiMeasureAttributeName!
          .toTfJson(),
  };
}

/// Typed helper for the `target_configuration.timestream_configuration.multi_measure_mappings` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings({
    this.targetMultiMeasureName,
    this.multiMeasureAttributeMapping,
  });

  final TfArg<String>? targetMultiMeasureName;

  final List<
    TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping
  >?
  multiMeasureAttributeMapping;

  Map<String, Object?> encode() => {
    if (targetMultiMeasureName != null)
      'target_multi_measure_name': targetMultiMeasureName!.toTfJson(),
    if (multiMeasureAttributeMapping != null)
      'multi_measure_attribute_mapping': [
        for (final e in multiMeasureAttributeMapping!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mapping` block of
/// `aws_timestreamquery_scheduled_query` (derived from provider schema).
@immutable
final class TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping {
  const TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping({
    required this.measureValueType,
    required this.sourceColumn,
    this.targetMultiMeasureAttributeName,
  });

  final TfArg<String> measureValueType;

  final TfArg<String> sourceColumn;

  final TfArg<String>? targetMultiMeasureAttributeName;

  Map<String, Object?> encode() => {
    'measure_value_type': measureValueType.toTfJson(),
    'source_column': sourceColumn.toTfJson(),
    if (targetMultiMeasureAttributeName != null)
      'target_multi_measure_attribute_name': targetMultiMeasureAttributeName!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_timestreamquery_scheduled_query`.
final class AwsTimestreamqueryScheduledQuery extends Resource {
  static const String tfType = 'aws_timestreamquery_scheduled_query';

  AwsTimestreamqueryScheduledQuery({
    required super.localName,
    required TfArg<String> executionRoleArn,
    TfArg<String>? kmsKeyId,
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
           'execution_role_arn': executionRoleArn,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           'query_string': queryString,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

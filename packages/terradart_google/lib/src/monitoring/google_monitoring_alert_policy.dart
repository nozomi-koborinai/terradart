// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_alert_policy`.
const Set<String> _googleMonitoringAlertPolicySensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Combiner for `google_monitoring_alert_policy.combiner` — how the
/// conditions list reduces to a single incident-open decision.
enum AlertCombiner implements TerraformEnum {
  and('AND'),
  or('OR'),
  andWithMatchingResource('AND_WITH_MATCHING_RESOURCE');

  const AlertCombiner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Severity for `google_monitoring_alert_policy.severity`. Surfaces on
/// the Incident detail page and in notifications.
enum AlertSeverity implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING');

  const AlertSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Condition-type enums
// ===========================================================================

/// Comparison operator for `condition_threshold.comparison` and
/// `condition_sql.row_count_test.comparison`.
enum Comparison implements TerraformEnum {
  greaterThan('COMPARISON_GT'),
  greaterThanOrEqual('COMPARISON_GE'),
  lessThan('COMPARISON_LT'),
  lessThanOrEqual('COMPARISON_LE'),
  equalTo('COMPARISON_EQ'),
  notEqualTo('COMPARISON_NE');

  const Comparison(this.terraformValue);
  @override
  final String terraformValue;
}

/// Behavior when a threshold / MQL condition stops receiving data.
enum EvaluationMissingData implements TerraformEnum {
  inactive('EVALUATION_MISSING_DATA_INACTIVE'),
  active('EVALUATION_MISSING_DATA_ACTIVE'),
  noOp('EVALUATION_MISSING_DATA_NO_OP');

  const EvaluationMissingData(this.terraformValue);
  @override
  final String terraformValue;
}

/// Per-series alignment function for `aggregations.per_series_aligner`.
enum Aligner implements TerraformEnum {
  none('ALIGN_NONE'),
  delta('ALIGN_DELTA'),
  rate('ALIGN_RATE'),
  interpolate('ALIGN_INTERPOLATE'),
  alignNextOlder('ALIGN_NEXT_OLDER'),
  min('ALIGN_MIN'),
  max('ALIGN_MAX'),
  mean('ALIGN_MEAN'),
  count('ALIGN_COUNT'),
  sum('ALIGN_SUM'),
  stddev('ALIGN_STDDEV'),
  countTrue('ALIGN_COUNT_TRUE'),
  countFalse('ALIGN_COUNT_FALSE'),
  fractionTrue('ALIGN_FRACTION_TRUE'),
  percentile99('ALIGN_PERCENTILE_99'),
  percentile95('ALIGN_PERCENTILE_95'),
  percentile50('ALIGN_PERCENTILE_50'),
  percentile05('ALIGN_PERCENTILE_05'),
  percentChange('ALIGN_PERCENT_CHANGE');

  const Aligner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cross-series reducer for `aggregations.cross_series_reducer`.
enum Reducer implements TerraformEnum {
  none('REDUCE_NONE'),
  mean('REDUCE_MEAN'),
  min('REDUCE_MIN'),
  max('REDUCE_MAX'),
  sum('REDUCE_SUM'),
  stddev('REDUCE_STDDEV'),
  count('REDUCE_COUNT'),
  countTrue('REDUCE_COUNT_TRUE'),
  countFalse('REDUCE_COUNT_FALSE'),
  fractionTrue('REDUCE_FRACTION_TRUE'),
  percentile99('REDUCE_PERCENTILE_99'),
  percentile95('REDUCE_PERCENTILE_95'),
  percentile50('REDUCE_PERCENTILE_50'),
  percentile05('REDUCE_PERCENTILE_05');

  const Reducer(this.terraformValue);
  @override
  final String terraformValue;
}

/// Notification prompt for `alert_strategy.notification_prompts` —
/// controls when notifications fire across the incident lifecycle.
enum NotificationPrompt implements TerraformEnum {
  unspecified('NOTIFICATION_PROMPT_UNSPECIFIED'),
  opened('OPENED'),
  closed('CLOSED');

  const NotificationPrompt(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// MonitoringAlertPolicyAggregations helper (shared by condition_threshold + condition_absent)
// ===========================================================================

// ===========================================================================
// Shared trigger helper (used by 3 condition types)
// ===========================================================================

// ===========================================================================
// condition_threshold + condition_absent sub-blocks
// ===========================================================================

// ===========================================================================
// condition_matched_log
// ===========================================================================

// ===========================================================================
// condition_monitoring_query_language
// ===========================================================================

// ===========================================================================
// condition_prometheus_query_language
// ===========================================================================

// ===========================================================================
// condition_sql + schedule / test sub-blocks
// ===========================================================================

// ===========================================================================
// MonitoringAlertPolicyConditions — one entry in conditions list
// ===========================================================================

// ===========================================================================
// MonitoringAlertPolicyAlertStrategy + sub-blocks
// ===========================================================================

// ===========================================================================
// MonitoringAlertPolicyDocumentation + link sub-block
// ===========================================================================

/// Typed helper for the `alert_strategy` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyAlertStrategy {
  const MonitoringAlertPolicyAlertStrategy({
    this.autoClose,
    this.notificationPrompts,
    this.notificationChannelStrategy,
    this.notificationRateLimit,
  });

  final TfArg<String>? autoClose;

  final List<TfArg<MonitoringAlertPolicyNotificationPrompts>>?
  notificationPrompts;

  final List<MonitoringAlertPolicyNotificationChannelStrategy>?
  notificationChannelStrategy;

  final MonitoringAlertPolicyNotificationRateLimit? notificationRateLimit;

  Map<String, Object?> encode() => {
    'auto_close': ?autoClose?.toTfJson(),
    if (notificationPrompts != null)
      'notification_prompts': [
        for (final e in notificationPrompts!) e.toTfJson(),
      ],
    if (notificationChannelStrategy != null)
      'notification_channel_strategy': [
        for (final e in notificationChannelStrategy!) e.encode(),
      ],
    'notification_rate_limit': ?notificationRateLimit?.encode(),
  };
}

/// `notification_prompts` — derived from the provider schema description.
enum MonitoringAlertPolicyNotificationPrompts implements TerraformEnum {
  notificationPromptUnspecified('NOTIFICATION_PROMPT_UNSPECIFIED'),
  opened('OPENED'),
  closed('CLOSED');

  const MonitoringAlertPolicyNotificationPrompts(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `alert_strategy.notification_channel_strategy` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyNotificationChannelStrategy {
  const MonitoringAlertPolicyNotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });

  final TfArg<List<String>>? notificationChannelNames;

  final TfArg<String>? renotifyInterval;

  Map<String, Object?> encode() => {
    'notification_channel_names': ?notificationChannelNames?.toTfJson(),
    'renotify_interval': ?renotifyInterval?.toTfJson(),
  };
}

/// Typed helper for the `alert_strategy.notification_rate_limit` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyNotificationRateLimit {
  const MonitoringAlertPolicyNotificationRateLimit({this.period});

  final TfArg<String>? period;

  Map<String, Object?> encode() => {'period': ?period?.toTfJson()};
}

/// Typed helper for the `conditions` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditions {
  const MonitoringAlertPolicyConditions({
    required this.displayName,
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionSql,
    this.conditionThreshold,
  });

  final TfArg<String> displayName;

  final MonitoringAlertPolicyConditionAbsent? conditionAbsent;

  final MonitoringAlertPolicyConditionMatchedLog? conditionMatchedLog;

  final MonitoringAlertPolicyConditionMonitoringQueryLanguage?
  conditionMonitoringQueryLanguage;

  final MonitoringAlertPolicyConditionPrometheusQueryLanguage?
  conditionPrometheusQueryLanguage;

  final MonitoringAlertPolicyConditionSql? conditionSql;

  final MonitoringAlertPolicyConditionThreshold? conditionThreshold;

  Map<String, Object?> encode() => {
    'display_name': displayName.toTfJson(),
    'condition_absent': ?conditionAbsent?.encode(),
    'condition_matched_log': ?conditionMatchedLog?.encode(),
    'condition_monitoring_query_language': ?conditionMonitoringQueryLanguage
        ?.encode(),
    'condition_prometheus_query_language': ?conditionPrometheusQueryLanguage
        ?.encode(),
    'condition_sql': ?conditionSql?.encode(),
    'condition_threshold': ?conditionThreshold?.encode(),
  };
}

/// Typed helper for the `conditions.condition_absent` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionAbsent {
  const MonitoringAlertPolicyConditionAbsent({
    required this.duration,
    this.filter,
    this.aggregations,
    this.trigger,
  });

  final TfArg<String> duration;

  final TfArg<String>? filter;

  final List<MonitoringAlertPolicyAggregations>? aggregations;

  final MonitoringAlertPolicyTrigger? trigger;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'filter': ?filter?.toTfJson(),
    if (aggregations != null)
      'aggregations': [for (final e in aggregations!) e.encode()],
    'trigger': ?trigger?.encode(),
  };
}

/// Typed helper for the `conditions.condition_absent.aggregations` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringAlertPolicyAggregations {
  const MonitoringAlertPolicyAggregations({
    this.alignmentPeriod,
    this.crossSeriesReducer,
    this.groupByFields,
    this.perSeriesAligner,
  });

  final TfArg<String>? alignmentPeriod;

  final TfArg<Reducer>? crossSeriesReducer;

  final TfArg<List<String>>? groupByFields;

  final TfArg<Aligner>? perSeriesAligner;

  Map<String, Object?> encode() => {
    'alignment_period': ?alignmentPeriod?.toTfJson(),
    'cross_series_reducer': ?crossSeriesReducer?.toTfJson(),
    'group_by_fields': ?groupByFields?.toTfJson(),
    'per_series_aligner': ?perSeriesAligner?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_absent.trigger` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitoringAlertPolicyTrigger {
  const MonitoringAlertPolicyTrigger({this.count, this.percent});

  final TfArg<num>? count;

  final TfArg<num>? percent;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'percent': ?percent?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_matched_log` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionMatchedLog {
  const MonitoringAlertPolicyConditionMatchedLog({
    required this.filter,
    this.labelExtractors,
  });

  final TfArg<String> filter;

  final TfArg<Map<String, String>>? labelExtractors;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'label_extractors': ?labelExtractors?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_monitoring_query_language` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionMonitoringQueryLanguage {
  const MonitoringAlertPolicyConditionMonitoringQueryLanguage({
    required this.duration,
    this.evaluationMissingData,
    required this.query,
    this.trigger,
  });

  final TfArg<String> duration;

  final TfArg<EvaluationMissingData>? evaluationMissingData;

  final TfArg<String> query;

  final MonitoringAlertPolicyTrigger? trigger;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'evaluation_missing_data': ?evaluationMissingData?.toTfJson(),
    'query': query.toTfJson(),
    'trigger': ?trigger?.encode(),
  };
}

/// Typed helper for the `conditions.condition_prometheus_query_language` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionPrometheusQueryLanguage {
  const MonitoringAlertPolicyConditionPrometheusQueryLanguage({
    this.alertRule,
    this.disableMetricValidation,
    this.duration,
    this.evaluationInterval,
    this.labels,
    required this.query,
    this.ruleGroup,
  });

  final TfArg<String>? alertRule;

  final TfArg<bool>? disableMetricValidation;

  final TfArg<String>? duration;

  final TfArg<String>? evaluationInterval;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> query;

  final TfArg<String>? ruleGroup;

  Map<String, Object?> encode() => {
    'alert_rule': ?alertRule?.toTfJson(),
    'disable_metric_validation': ?disableMetricValidation?.toTfJson(),
    'duration': ?duration?.toTfJson(),
    'evaluation_interval': ?evaluationInterval?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'query': query.toTfJson(),
    'rule_group': ?ruleGroup?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_sql` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionSql {
  const MonitoringAlertPolicyConditionSql({
    required this.query,
    required this.test,
    required this.schedule,
  });

  final TfArg<String> query;

  final MonitoringAlertPolicyTest test;

  final MonitoringAlertPolicySchedule schedule;

  Map<String, Object?> encode() => {
    'query': query.toTfJson(),
    ...test.encode(),
    ...schedule.encode(),
  };
}

/// Exactly one of `minutes`, `hourly`, `daily` on the `conditions.condition_sql` block of `google_monitoring_alert_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minutes(...)`.
sealed class MonitoringAlertPolicySchedule {
  const MonitoringAlertPolicySchedule();

  /// Sets `minutes`.
  const factory MonitoringAlertPolicySchedule.minutes(
    MonitoringAlertPolicyMinutes minutes,
  ) = MonitoringAlertPolicyScheduleMinutes;

  /// Sets `hourly`.
  const factory MonitoringAlertPolicySchedule.hourly(
    MonitoringAlertPolicyHourly hourly,
  ) = MonitoringAlertPolicyScheduleHourly;

  /// Sets `daily`.
  const factory MonitoringAlertPolicySchedule.daily(
    MonitoringAlertPolicyDaily daily,
  ) = MonitoringAlertPolicyScheduleDaily;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringAlertPolicySchedule.minutes] choice: sets `minutes`.
final class MonitoringAlertPolicyScheduleMinutes
    extends MonitoringAlertPolicySchedule {
  const MonitoringAlertPolicyScheduleMinutes(this.minutes);

  final MonitoringAlertPolicyMinutes minutes;

  @override
  String get blockKey => 'minutes';

  @override
  Map<String, Object?> encode() => {'minutes': minutes.encode()};
}

/// The [MonitoringAlertPolicySchedule.hourly] choice: sets `hourly`.
final class MonitoringAlertPolicyScheduleHourly
    extends MonitoringAlertPolicySchedule {
  const MonitoringAlertPolicyScheduleHourly(this.hourly);

  final MonitoringAlertPolicyHourly hourly;

  @override
  String get blockKey => 'hourly';

  @override
  Map<String, Object?> encode() => {'hourly': hourly.encode()};
}

/// The [MonitoringAlertPolicySchedule.daily] choice: sets `daily`.
final class MonitoringAlertPolicyScheduleDaily
    extends MonitoringAlertPolicySchedule {
  const MonitoringAlertPolicyScheduleDaily(this.daily);

  final MonitoringAlertPolicyDaily daily;

  @override
  String get blockKey => 'daily';

  @override
  Map<String, Object?> encode() => {'daily': daily.encode()};
}

/// Exactly one of `row_count_test`, `boolean_test` on the `conditions.condition_sql` block of `google_monitoring_alert_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.rowCountTest(...)`.
sealed class MonitoringAlertPolicyTest {
  const MonitoringAlertPolicyTest();

  /// Sets `row_count_test`.
  const factory MonitoringAlertPolicyTest.rowCountTest(
    MonitoringAlertPolicyRowCountTest rowCountTest,
  ) = MonitoringAlertPolicyRowCountTestChoice;

  /// Sets `boolean_test`.
  const factory MonitoringAlertPolicyTest.booleanTest(
    MonitoringAlertPolicyBooleanTest booleanTest,
  ) = MonitoringAlertPolicyBooleanTestChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringAlertPolicyTest.rowCountTest] choice: sets `row_count_test`.
final class MonitoringAlertPolicyRowCountTestChoice
    extends MonitoringAlertPolicyTest {
  const MonitoringAlertPolicyRowCountTestChoice(this.rowCountTest);

  final MonitoringAlertPolicyRowCountTest rowCountTest;

  @override
  String get blockKey => 'row_count_test';

  @override
  Map<String, Object?> encode() => {'row_count_test': rowCountTest.encode()};
}

/// The [MonitoringAlertPolicyTest.booleanTest] choice: sets `boolean_test`.
final class MonitoringAlertPolicyBooleanTestChoice
    extends MonitoringAlertPolicyTest {
  const MonitoringAlertPolicyBooleanTestChoice(this.booleanTest);

  final MonitoringAlertPolicyBooleanTest booleanTest;

  @override
  String get blockKey => 'boolean_test';

  @override
  Map<String, Object?> encode() => {'boolean_test': booleanTest.encode()};
}

/// Typed helper for the `conditions.condition_sql.boolean_test` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyBooleanTest {
  const MonitoringAlertPolicyBooleanTest({required this.column});

  final TfArg<String> column;

  Map<String, Object?> encode() => {'column': column.toTfJson()};
}

/// Typed helper for the `conditions.condition_sql.daily` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyDaily {
  const MonitoringAlertPolicyDaily({
    required this.periodicity,
    this.executionTime,
  });

  final TfArg<num> periodicity;

  final MonitoringAlertPolicyExecutionTime? executionTime;

  Map<String, Object?> encode() => {
    'periodicity': periodicity.toTfJson(),
    'execution_time': ?executionTime?.encode(),
  };
}

/// Typed helper for the `conditions.condition_sql.daily.execution_time` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyExecutionTime {
  const MonitoringAlertPolicyExecutionTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_sql.hourly` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyHourly {
  const MonitoringAlertPolicyHourly({
    this.minuteOffset,
    required this.periodicity,
  });

  final TfArg<num>? minuteOffset;

  final TfArg<num> periodicity;

  Map<String, Object?> encode() => {
    'minute_offset': ?minuteOffset?.toTfJson(),
    'periodicity': periodicity.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_sql.minutes` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyMinutes {
  const MonitoringAlertPolicyMinutes({required this.periodicity});

  final TfArg<num> periodicity;

  Map<String, Object?> encode() => {'periodicity': periodicity.toTfJson()};
}

/// Typed helper for the `conditions.condition_sql.row_count_test` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyRowCountTest {
  const MonitoringAlertPolicyRowCountTest({
    required this.comparison,
    required this.threshold,
  });

  final TfArg<Comparison> comparison;

  final TfArg<num> threshold;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'threshold': threshold.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_threshold` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyConditionThreshold {
  const MonitoringAlertPolicyConditionThreshold({
    required this.comparison,
    this.denominatorFilter,
    required this.duration,
    this.evaluationMissingData,
    this.filter,
    this.thresholdValue,
    this.aggregations,
    this.denominatorAggregations,
    this.forecastOptions,
    this.trigger,
  });

  final TfArg<Comparison> comparison;

  final TfArg<String>? denominatorFilter;

  final TfArg<String> duration;

  final TfArg<EvaluationMissingData>? evaluationMissingData;

  final TfArg<String>? filter;

  final TfArg<num>? thresholdValue;

  final List<MonitoringAlertPolicyAggregations>? aggregations;

  final List<MonitoringAlertPolicyDenominatorAggregations>?
  denominatorAggregations;

  final MonitoringAlertPolicyForecastOptions? forecastOptions;

  final MonitoringAlertPolicyTrigger? trigger;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'denominator_filter': ?denominatorFilter?.toTfJson(),
    'duration': duration.toTfJson(),
    'evaluation_missing_data': ?evaluationMissingData?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'threshold_value': ?thresholdValue?.toTfJson(),
    if (aggregations != null)
      'aggregations': [for (final e in aggregations!) e.encode()],
    if (denominatorAggregations != null)
      'denominator_aggregations': [
        for (final e in denominatorAggregations!) e.encode(),
      ],
    'forecast_options': ?forecastOptions?.encode(),
    'trigger': ?trigger?.encode(),
  };
}

/// Typed helper for the `conditions.condition_threshold.denominator_aggregations` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyDenominatorAggregations {
  const MonitoringAlertPolicyDenominatorAggregations({
    this.alignmentPeriod,
    this.crossSeriesReducer,
    this.groupByFields,
    this.perSeriesAligner,
  });

  final TfArg<String>? alignmentPeriod;

  final TfArg<Reducer>? crossSeriesReducer;

  final TfArg<List<String>>? groupByFields;

  final TfArg<Aligner>? perSeriesAligner;

  Map<String, Object?> encode() => {
    'alignment_period': ?alignmentPeriod?.toTfJson(),
    'cross_series_reducer': ?crossSeriesReducer?.toTfJson(),
    'group_by_fields': ?groupByFields?.toTfJson(),
    'per_series_aligner': ?perSeriesAligner?.toTfJson(),
  };
}

/// Typed helper for the `conditions.condition_threshold.forecast_options` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyForecastOptions {
  const MonitoringAlertPolicyForecastOptions({required this.forecastHorizon});

  final TfArg<String> forecastHorizon;

  Map<String, Object?> encode() => {
    'forecast_horizon': forecastHorizon.toTfJson(),
  };
}

/// Typed helper for the `documentation` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyDocumentation {
  const MonitoringAlertPolicyDocumentation({
    this.content,
    this.mimeType,
    this.subject,
    this.links,
  });

  final TfArg<String>? content;

  final TfArg<String>? mimeType;

  final TfArg<String>? subject;

  final List<MonitoringAlertPolicyLinks>? links;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'mime_type': ?mimeType?.toTfJson(),
    'subject': ?subject?.toTfJson(),
    if (links != null) 'links': [for (final e in links!) e.encode()],
  };
}

/// Typed helper for the `documentation.links` block of
/// `google_monitoring_alert_policy` (derived from provider schema).
@immutable
final class MonitoringAlertPolicyLinks {
  const MonitoringAlertPolicyLinks({this.displayName, this.url});

  final TfArg<String>? displayName;

  final TfArg<String>? url;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// Factory wrapper for `google_monitoring_alert_policy`.
///
/// A description of the conditions under which some aspect of your system is
/// considered to be "unhealthy" and the ways to notify people or services about
/// this state.
///
/// Required identity beyond [localName]:
/// - `displayName`: human-readable label shown in dashboards / notifications
///   (<= 512 Unicode characters).
/// - `combiner`: how multiple [conditions] combine into an incident. Use
///   [AlertCombiner.and] / [AlertCombiner.or] / [AlertCombiner.andWithMatchingResource].
/// - `conditions`: non-empty list. Each [MonitoringAlertPolicyConditions] carries a
///   `displayName` plus EXACTLY one of the 6 condition-type sub-blocks
///   ([MonitoringAlertPolicyConditions.conditionThreshold], `conditionAbsent`,
///   `conditionMatchedLog`, `conditionMonitoringQueryLanguage`,
///   `conditionPrometheusQueryLanguage`, `conditionSql`).
///
/// Modeling choice for `conditions`: each entry is a single [MonitoringAlertPolicyConditions]
/// helper with one required `displayName` plus 6 mutually-exclusive nullable
/// sub-fields. Terraform enforces the exactly_one_of contract at apply time,
/// so we keep the Dart shape flat (and the count of generated classes
/// manageable) instead of introducing a 6-variant sealed type.
///
/// Example (threshold on Compute Engine instance uptime):
/// ```dart
/// final policy = GoogleMonitoringAlertPolicy(
///   localName: 'compute_uptime',
///   displayName: TfArg.literal('Compute instance uptime SLO'),
///   combiner: TfArg.literal(AlertCombiner.or),
///   conditions: const [
///     MonitoringAlertPolicyConditions(
///       displayName: TfArgLiteral('uptime < 95% over 5 min'),
///       conditionThreshold: .new(
///         filter: TfArgLiteral(
///           'metric.type="compute.googleapis.com/instance/uptime" '
///           'resource.type="gce_instance"',
///         ),
///         comparison: TfArgLiteral(Comparison.lessThan),
///         thresholdValue: TfArgLiteral(0.95),
///         duration: TfArgLiteral('300s'),
///       ),
///     ),
///   ],
///   notificationChannels: TfArg.literal(const <String>[]),
///   alertStrategy: const MonitoringAlertPolicyAlertStrategy(autoClose: TfArgLiteral('1800s')),
///   severity: TfArg.literal(AlertSeverity.warning),
/// );
/// ```
final class GoogleMonitoringAlertPolicy extends Resource {
  static const String tfType = 'google_monitoring_alert_policy';

  GoogleMonitoringAlertPolicy({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<AlertCombiner> combiner,
    required List<MonitoringAlertPolicyConditions> conditions,
    TfArg<List<String>>? notificationChannels,
    MonitoringAlertPolicyAlertStrategy? alertStrategy,
    MonitoringAlertPolicyDocumentation? documentation,
    TfArg<bool>? enabled,
    TfArg<AlertSeverity>? severity,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'combiner': combiner,
           'conditions': TfArg.literal([
             for (final e in conditions) e.encode(),
           ]),
           'notification_channels': ?notificationChannels,
           if (alertStrategy != null)
             'alert_strategy': TfArg.literal(alertStrategy.encode()),
           if (documentation != null)
             'documentation': TfArg.literal(documentation.encode()),
           'enabled': ?enabled,
           'severity': ?severity,
           'user_labels': ?userLabels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringAlertPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringAlertPolicy>`.
  RefTo<GoogleMonitoringAlertPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_record` attribute.
  TfRef<List<Map<String, Object?>>> get creationRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'creation_record');

  /// Reference to `combiner` attribute.
  TfRef<String> get combinerRef => TfRef.attribute<String>(this, 'combiner');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `notification_channels` attribute.
  TfRef<List<String>> get notificationChannelsRef =>
      TfRef.attribute<List<String>>(this, 'notification_channels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `severity` attribute.
  TfRef<String> get severityRef => TfRef.attribute<String>(this, 'severity');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');
}

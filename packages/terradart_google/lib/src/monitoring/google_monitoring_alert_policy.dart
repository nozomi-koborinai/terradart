// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_monitoring_alert_policy.schema.dart'
    show $GoogleMonitoringAlertPolicy, googleMonitoringAlertPolicySensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleMonitoringAlertPolicySchemaInstance
    implements $GoogleMonitoringAlertPolicy {
  const _GoogleMonitoringAlertPolicySchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Combiner for `google_monitoring_alert_policy.combiner` — how the
/// conditions list reduces to a single incident-open decision.
enum AlertCombiner {
  and('AND'),
  or('OR'),
  andWithMatchingResource('AND_WITH_MATCHING_RESOURCE');

  const AlertCombiner(this.terraformValue);
  final String terraformValue;
}

/// Severity for `google_monitoring_alert_policy.severity`. Surfaces on
/// the Incident detail page and in notifications.
enum AlertSeverity {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING');

  const AlertSeverity(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Condition-type enums
// ===========================================================================

/// Comparison operator for `condition_threshold.comparison` and
/// `condition_sql.row_count_test.comparison`.
enum Comparison {
  gt('COMPARISON_GT'),
  ge('COMPARISON_GE'),
  lt('COMPARISON_LT'),
  le('COMPARISON_LE'),
  eq('COMPARISON_EQ'),
  ne('COMPARISON_NE');

  const Comparison(this.terraformValue);
  final String terraformValue;
}

/// Behavior when a threshold / MQL condition stops receiving data.
enum EvaluationMissingData {
  inactive('EVALUATION_MISSING_DATA_INACTIVE'),
  active('EVALUATION_MISSING_DATA_ACTIVE'),
  noOp('EVALUATION_MISSING_DATA_NO_OP');

  const EvaluationMissingData(this.terraformValue);
  final String terraformValue;
}

/// Per-series alignment function for `aggregations.per_series_aligner`.
enum Aligner {
  none('ALIGN_NONE'),
  delta('ALIGN_DELTA'),
  rate('ALIGN_RATE'),
  interpolate('ALIGN_INTERPOLATE'),
  nextOlder('ALIGN_NEXT_OLDER'),
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
  final String terraformValue;
}

/// Cross-series reducer for `aggregations.cross_series_reducer`.
enum Reducer {
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
  final String terraformValue;
}

/// Notification prompt for `alert_strategy.notification_prompts` —
/// controls when notifications fire across the incident lifecycle.
enum NotificationPrompt {
  unspecified('NOTIFICATION_PROMPT_UNSPECIFIED'),
  opened('OPENED'),
  closed('CLOSED');

  const NotificationPrompt(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Aggregation helper (shared by condition_threshold + condition_absent)
// ===========================================================================

/// One entry in an `aggregations` / `denominator_aggregations` list.
/// Multiple [Aggregation]s are applied in order.
class Aggregation {
  const Aggregation({
    this.alignmentPeriod,
    this.perSeriesAligner,
    this.crossSeriesReducer,
    this.groupByFields,
  });

  /// Per-time-series alignment period (Duration string, e.g. `'60s'`).
  final TfArg<String>? alignmentPeriod;
  final Aligner? perSeriesAligner;
  final Reducer? crossSeriesReducer;
  final TfArg<List<String>>? groupByFields;

  Map<String, Object?> toArgMap() => {
    if (alignmentPeriod != null)
      'alignment_period': alignmentPeriod!.toTfJson(),
    if (perSeriesAligner != null)
      'per_series_aligner': perSeriesAligner!.terraformValue,
    if (crossSeriesReducer != null)
      'cross_series_reducer': crossSeriesReducer!.terraformValue,
    if (groupByFields != null) 'group_by_fields': groupByFields!.toTfJson(),
  };
}

// ===========================================================================
// Shared trigger helper (used by 3 condition types)
// ===========================================================================

/// `trigger` sub-block — number / percentage of time series that must fail
/// the predicate for the condition to fire. Both fields are optional; if
/// neither is set, any single failing time series triggers the condition.
class ConditionTrigger {
  const ConditionTrigger({this.count, this.percent});
  final TfArg<num>? count;
  final TfArg<num>? percent;
  Map<String, Object?> toArgMap() => {
    if (count != null) 'count': count!.toTfJson(),
    if (percent != null) 'percent': percent!.toTfJson(),
  };
}

// ===========================================================================
// condition_threshold + condition_absent sub-blocks
// ===========================================================================

/// `condition_threshold.forecast_options` (max=1).
class ForecastOptions {
  const ForecastOptions({required this.forecastHorizon});
  final TfArg<String> forecastHorizon;
  Map<String, Object?> toArgMap() => {
    'forecast_horizon': forecastHorizon.toTfJson(),
  };
}

/// `condition_threshold` block — compares a time series against a fixed
/// threshold (or a numerator/denominator ratio when [denominatorFilter] is
/// set). `forecastOptions` flips the semantics to "predict whether the
/// timeseries will violate within forecastHorizon".
class ConditionThreshold {
  const ConditionThreshold({
    required this.filter,
    required this.comparison,
    required this.duration,
    this.thresholdValue,
    this.denominatorFilter,
    this.evaluationMissingData,
    this.aggregations,
    this.denominatorAggregations,
    this.trigger,
    this.forecastOptions,
  });

  final TfArg<String> filter;
  final TfArg<Comparison> comparison;

  /// Duration string (seconds + `'s'`), e.g. `'300s'`.
  final TfArg<String> duration;
  final TfArg<num>? thresholdValue;
  final TfArg<String>? denominatorFilter;
  final TfArg<EvaluationMissingData>? evaluationMissingData;
  final List<Aggregation>? aggregations;
  final List<Aggregation>? denominatorAggregations;
  final ConditionTrigger? trigger;
  final ForecastOptions? forecastOptions;

  Map<String, Object?> toArgMap() => {
    'filter': filter.toTfJson(),
    'comparison': comparison.toTfJson(),
    'duration': duration.toTfJson(),
    if (thresholdValue != null) 'threshold_value': thresholdValue!.toTfJson(),
    if (denominatorFilter != null)
      'denominator_filter': denominatorFilter!.toTfJson(),
    if (evaluationMissingData != null)
      'evaluation_missing_data': evaluationMissingData!.toTfJson(),
    if (aggregations != null)
      'aggregations': aggregations!.map((a) => a.toArgMap()).toList(),
    if (denominatorAggregations != null)
      'denominator_aggregations': denominatorAggregations!
          .map((a) => a.toArgMap())
          .toList(),
    if (trigger != null) 'trigger': [trigger!.toArgMap()],
    if (forecastOptions != null)
      'forecast_options': [forecastOptions!.toArgMap()],
  };
}

/// `condition_absent` block — fires when a time series stops receiving
/// data points for [duration]. Currently only multiples of a minute are
/// accepted by the API for [duration].
class ConditionAbsent {
  const ConditionAbsent({
    required this.duration,
    this.filter,
    this.aggregations,
    this.trigger,
  });
  final TfArg<String> duration;
  final TfArg<String>? filter;
  final List<Aggregation>? aggregations;
  final ConditionTrigger? trigger;
  Map<String, Object?> toArgMap() => {
    'duration': duration.toTfJson(),
    if (filter != null) 'filter': filter!.toTfJson(),
    if (aggregations != null)
      'aggregations': aggregations!.map((a) => a.toArgMap()).toList(),
    if (trigger != null) 'trigger': [trigger!.toArgMap()],
  };
}

// ===========================================================================
// condition_matched_log
// ===========================================================================

/// `condition_matched_log` block — fires on log entries matching [filter].
/// If set, no other conditions can be present in the parent
/// [AlertCondition] (the alert policy must use a `notification_rate_limit`
/// in [AlertStrategy] when this condition type is used).
class ConditionMatchedLog {
  const ConditionMatchedLog({required this.filter, this.labelExtractors});
  final TfArg<String> filter;
  final TfArg<Map<String, String>>? labelExtractors;
  Map<String, Object?> toArgMap() => {
    'filter': filter.toTfJson(),
    if (labelExtractors != null)
      'label_extractors': labelExtractors!.toTfJson(),
  };
}

// ===========================================================================
// condition_monitoring_query_language
// ===========================================================================

/// `condition_monitoring_query_language` block — MQL-driven condition.
/// [query] must produce a boolean stream.
class ConditionMonitoringQueryLanguage {
  const ConditionMonitoringQueryLanguage({
    required this.query,
    required this.duration,
    this.evaluationMissingData,
    this.trigger,
  });
  final TfArg<String> query;
  final TfArg<String> duration;
  final TfArg<EvaluationMissingData>? evaluationMissingData;
  final ConditionTrigger? trigger;
  Map<String, Object?> toArgMap() => {
    'query': query.toTfJson(),
    'duration': duration.toTfJson(),
    if (evaluationMissingData != null)
      'evaluation_missing_data': evaluationMissingData!.toTfJson(),
    if (trigger != null) 'trigger': [trigger!.toArgMap()],
  };
}

// ===========================================================================
// condition_prometheus_query_language
// ===========================================================================

/// `condition_prometheus_query_language` block — PromQL-driven condition.
/// [duration] is optional (default 0) but represents how long the PromQL
/// expression must evaluate to true before the alert fires.
class ConditionPrometheusQueryLanguage {
  const ConditionPrometheusQueryLanguage({
    required this.query,
    this.duration,
    this.evaluationInterval,
    this.alertRule,
    this.labels,
    this.ruleGroup,
    this.disableMetricValidation,
  });
  final TfArg<String> query;
  final TfArg<String>? duration;
  final TfArg<String>? evaluationInterval;
  final TfArg<String>? alertRule;
  final TfArg<Map<String, String>>? labels;
  final TfArg<String>? ruleGroup;
  final TfArg<bool>? disableMetricValidation;
  Map<String, Object?> toArgMap() => {
    'query': query.toTfJson(),
    if (duration != null) 'duration': duration!.toTfJson(),
    if (evaluationInterval != null)
      'evaluation_interval': evaluationInterval!.toTfJson(),
    if (alertRule != null) 'alert_rule': alertRule!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (ruleGroup != null) 'rule_group': ruleGroup!.toTfJson(),
    if (disableMetricValidation != null)
      'disable_metric_validation': disableMetricValidation!.toTfJson(),
  };
}

// ===========================================================================
// condition_sql + schedule / test sub-blocks
// ===========================================================================

/// `condition_sql.minutes` schedule.
class SqlScheduleMinutes {
  const SqlScheduleMinutes({required this.periodicity});
  final TfArg<num> periodicity;
  Map<String, Object?> toArgMap() => {'periodicity': periodicity.toTfJson()};
}

/// `condition_sql.hourly` schedule.
class SqlScheduleHourly {
  const SqlScheduleHourly({required this.periodicity, this.minuteOffset});
  final TfArg<num> periodicity;
  final TfArg<num>? minuteOffset;
  Map<String, Object?> toArgMap() => {
    'periodicity': periodicity.toTfJson(),
    if (minuteOffset != null) 'minute_offset': minuteOffset!.toTfJson(),
  };
}

/// `condition_sql.daily.execution_time` (max=1) — wall-clock time of day
/// (UTC) for the daily run.
class SqlExecutionTime {
  const SqlExecutionTime({this.hours, this.minutes, this.seconds, this.nanos});
  final TfArg<num>? hours;
  final TfArg<num>? minutes;
  final TfArg<num>? seconds;
  final TfArg<num>? nanos;
  Map<String, Object?> toArgMap() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
  };
}

/// `condition_sql.daily` schedule.
class SqlScheduleDaily {
  const SqlScheduleDaily({required this.periodicity, this.executionTime});
  final TfArg<num> periodicity;
  final SqlExecutionTime? executionTime;
  Map<String, Object?> toArgMap() => {
    'periodicity': periodicity.toTfJson(),
    if (executionTime != null) 'execution_time': [executionTime!.toArgMap()],
  };
}

/// `condition_sql.boolean_test` — the SQL query returns a boolean column;
/// rows where [column] is `true` are treated as violations.
class SqlBooleanTest {
  const SqlBooleanTest({required this.column});
  final TfArg<String> column;
  Map<String, Object?> toArgMap() => {'column': column.toTfJson()};
}

/// `condition_sql.row_count_test` — fires when the result row count
/// satisfies `count [comparison] threshold`.
class SqlRowCountTest {
  const SqlRowCountTest({required this.comparison, required this.threshold});
  final TfArg<Comparison> comparison;
  final TfArg<num> threshold;
  Map<String, Object?> toArgMap() => {
    'comparison': comparison.toTfJson(),
    'threshold': threshold.toTfJson(),
  };
}

/// `condition_sql` block — Log Analytics SQL-driven condition. Pick
/// exactly one of [minutes] / [hourly] / [daily] for the schedule, and
/// exactly one of [booleanTest] / [rowCountTest] for the alerting rule
/// (Terraform enforces both exactly_one_of contracts).
class ConditionSql {
  const ConditionSql({
    required this.query,
    this.minutes,
    this.hourly,
    this.daily,
    this.booleanTest,
    this.rowCountTest,
  });
  final TfArg<String> query;
  final SqlScheduleMinutes? minutes;
  final SqlScheduleHourly? hourly;
  final SqlScheduleDaily? daily;
  final SqlBooleanTest? booleanTest;
  final SqlRowCountTest? rowCountTest;
  Map<String, Object?> toArgMap() => {
    'query': query.toTfJson(),
    if (minutes != null) 'minutes': [minutes!.toArgMap()],
    if (hourly != null) 'hourly': [hourly!.toArgMap()],
    if (daily != null) 'daily': [daily!.toArgMap()],
    if (booleanTest != null) 'boolean_test': [booleanTest!.toArgMap()],
    if (rowCountTest != null) 'row_count_test': [rowCountTest!.toArgMap()],
  };
}

// ===========================================================================
// AlertCondition — one entry in conditions list
// ===========================================================================

/// One entry in `google_monitoring_alert_policy.conditions`. Carries a
/// human-readable [displayName] plus EXACTLY one of the 6 condition-type
/// sub-blocks. Terraform enforces the exactly_one_of contract at apply
/// time; the Dart shape leaves all 6 sub-fields nullable to keep the
/// class count manageable.
class AlertCondition {
  const AlertCondition({
    required this.displayName,
    this.conditionThreshold,
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionSql,
  });

  final TfArg<String> displayName;
  final ConditionThreshold? conditionThreshold;
  final ConditionAbsent? conditionAbsent;
  final ConditionMatchedLog? conditionMatchedLog;
  final ConditionMonitoringQueryLanguage? conditionMonitoringQueryLanguage;
  final ConditionPrometheusQueryLanguage? conditionPrometheusQueryLanguage;
  final ConditionSql? conditionSql;

  Map<String, Object?> toArgMap() => {
    'display_name': displayName.toTfJson(),
    if (conditionThreshold != null)
      'condition_threshold': [conditionThreshold!.toArgMap()],
    if (conditionAbsent != null)
      'condition_absent': [conditionAbsent!.toArgMap()],
    if (conditionMatchedLog != null)
      'condition_matched_log': [conditionMatchedLog!.toArgMap()],
    if (conditionMonitoringQueryLanguage != null)
      'condition_monitoring_query_language': [
        conditionMonitoringQueryLanguage!.toArgMap(),
      ],
    if (conditionPrometheusQueryLanguage != null)
      'condition_prometheus_query_language': [
        conditionPrometheusQueryLanguage!.toArgMap(),
      ],
    if (conditionSql != null) 'condition_sql': [conditionSql!.toArgMap()],
  };
}

// ===========================================================================
// AlertStrategy + sub-blocks
// ===========================================================================

/// `alert_strategy.notification_rate_limit` (max=1).
/// [period] is a Duration string (e.g. `'300s'`). Required when the
/// parent policy uses a [ConditionMatchedLog] condition.
class NotificationRateLimit {
  const NotificationRateLimit({this.period});
  final TfArg<String>? period;
  Map<String, Object?> toArgMap() => {
    if (period != null) 'period': period!.toTfJson(),
  };
}

/// `alert_strategy.notification_channel_strategy` (list) — per-channel
/// notification controls. Each entry pairs a subset of the alert's
/// notification channels with a [renotifyInterval] cadence.
class NotificationChannelStrategy {
  const NotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });
  final TfArg<List<String>>? notificationChannelNames;
  final TfArg<String>? renotifyInterval;
  Map<String, Object?> toArgMap() => {
    if (notificationChannelNames != null)
      'notification_channel_names': notificationChannelNames!.toTfJson(),
    if (renotifyInterval != null)
      'renotify_interval': renotifyInterval!.toTfJson(),
  };
}

/// `alert_strategy` block (max=1) — controls notification cadence,
/// auto-close timing, and notification prompts.
class AlertStrategy {
  const AlertStrategy({
    this.notificationRateLimit,
    this.notificationPrompts,
    this.autoClose,
    this.notificationChannelStrategy,
  });
  final NotificationRateLimit? notificationRateLimit;
  final List<NotificationPrompt>? notificationPrompts;

  /// Duration string (e.g. `'1800s'` for 30 minutes).
  final TfArg<String>? autoClose;
  final List<NotificationChannelStrategy>? notificationChannelStrategy;
  Map<String, Object?> toArgMap() => {
    if (notificationRateLimit != null)
      'notification_rate_limit': [notificationRateLimit!.toArgMap()],
    if (notificationPrompts != null)
      'notification_prompts': notificationPrompts!
          .map((p) => p.terraformValue)
          .toList(),
    if (autoClose != null) 'auto_close': autoClose!.toTfJson(),
    if (notificationChannelStrategy != null)
      'notification_channel_strategy': notificationChannelStrategy!
          .map((s) => s.toArgMap())
          .toList(),
  };
}

// ===========================================================================
// Documentation + link sub-block
// ===========================================================================

/// `documentation.links` entry — a labeled URL surfaced in notifications.
/// Up to 3 link entries per policy.
class DocumentationLink {
  const DocumentationLink({this.displayName, this.url});
  final TfArg<String>? displayName;
  final TfArg<String>? url;
  Map<String, Object?> toArgMap() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
  };
}

/// `documentation` block (max=1) — notification-side context: content body,
/// subject line, and optional playbook / runbook links.
class Documentation {
  const Documentation({this.content, this.mimeType, this.subject, this.links});
  final TfArg<String>? content;
  final TfArg<String>? mimeType;
  final TfArg<String>? subject;
  final List<DocumentationLink>? links;
  Map<String, Object?> toArgMap() => {
    if (content != null) 'content': content!.toTfJson(),
    if (mimeType != null) 'mime_type': mimeType!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
    if (links != null) 'links': links!.map((l) => l.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_monitoring_alert_policy` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_monitoring_alert_policy.`).
/// - `displayName`: human-readable label shown in dashboards / notifications
///   (<= 512 Unicode characters).
/// - `combiner`: how multiple [conditions] combine into an incident. Use
///   [AlertCombiner.and] / [AlertCombiner.or] / [AlertCombiner.andWithMatchingResource].
/// - `conditions`: non-empty list. Each [AlertCondition] carries a
///   `displayName` plus EXACTLY one of the 6 condition-type sub-blocks
///   ([AlertCondition.conditionThreshold], `conditionAbsent`,
///   `conditionMatchedLog`, `conditionMonitoringQueryLanguage`,
///   `conditionPrometheusQueryLanguage`, `conditionSql`).
///
/// Modeling choice for `conditions`: each entry is a single [AlertCondition]
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
///     AlertCondition(
///       displayName: TfArgLiteral('uptime < 95% over 5 min'),
///       conditionThreshold: ConditionThreshold(
///         filter: TfArgLiteral(
///           'metric.type="compute.googleapis.com/instance/uptime" '
///           'resource.type="gce_instance"',
///         ),
///         comparison: TfArgLiteral(Comparison.lt),
///         thresholdValue: TfArgLiteral(0.95),
///         duration: TfArgLiteral('300s'),
///       ),
///     ),
///   ],
///   notificationChannels: TfArg.literal(const <String>[]),
///   alertStrategy: const AlertStrategy(autoClose: TfArgLiteral('1800s')),
///   severity: TfArg.literal(AlertSeverity.warning),
/// );
/// ```
///
/// Manages a Cloud Monitoring alert policy. Composition pattern: extends
/// `Resource<$GoogleMonitoringAlertPolicy>` for runtime behavior. The
/// nested-block helpers ([AlertCondition], [ConditionThreshold],
/// [Aggregation], [AlertStrategy], [Documentation], etc.) are modeled in
/// the `prelude` below.
final class GoogleMonitoringAlertPolicy
    extends Resource<$GoogleMonitoringAlertPolicy> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_monitoring_alert_policy';

  GoogleMonitoringAlertPolicy({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<AlertCombiner> combiner,
    required List<AlertCondition> conditions,
    TfArg<List<String>>? notificationChannels,
    AlertStrategy? alertStrategy,
    Documentation? documentation,
    TfArg<bool>? enabled,
    TfArg<AlertSeverity>? severity,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleMonitoringAlertPolicySchemaInstance(),
         argMap: {
           'display_name': displayName,
           'combiner': combiner,
           'conditions': TfArg.literal(
             conditions.map((c) => c.toArgMap()).toList(),
           ),
           if (notificationChannels != null)
             'notification_channels': notificationChannels,
           if (alertStrategy != null)
             'alert_strategy': TfArg.literal([alertStrategy.toArgMap()]),
           if (documentation != null)
             'documentation': TfArg.literal([documentation.toArgMap()]),
           if (enabled != null) 'enabled': enabled,
           if (severity != null) 'severity': severity,
           if (userLabels != null) 'user_labels': userLabels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleMonitoringAlertPolicySensitive;

  /// Reference to `id` attribute (the alert policy's full resource name,
  /// `projects/{project}/alertPolicies/{policy_id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (same shape as [id]; populated by
  /// Cloud Monitoring on create).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

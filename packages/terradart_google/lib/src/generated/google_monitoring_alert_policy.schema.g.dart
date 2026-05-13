// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_monitoring_alert_policy.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class NotificationChannelStrategy {
  /// Creates a [NotificationChannelStrategy] from a JSON map.
  factory NotificationChannelStrategy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NotificationChannelStrategy._(this._json);

  NotificationChannelStrategy({
    List<String>? notificationChannelNames,
    String? renotifyInterval,
  }) {
    _json = {
      'notification_channel_names': ?notificationChannelNames,
      'renotify_interval': ?renotifyInterval,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NotificationChannelStrategy].
  static const SchemanticType<NotificationChannelStrategy> $schema =
      _NotificationChannelStrategyTypeFactory();

  List<String>? get notificationChannelNames {
    return (_json['notification_channel_names'] as List?)?.cast<String>();
  }

  set notificationChannelNames(List<String>? value) {
    if (value == null) {
      _json.remove('notification_channel_names');
    } else {
      _json['notification_channel_names'] = value;
    }
  }

  String? get renotifyInterval {
    return _json['renotify_interval'] as String?;
  }

  set renotifyInterval(String? value) {
    if (value == null) {
      _json.remove('renotify_interval');
    } else {
      _json['renotify_interval'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NotificationChannelStrategy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NotificationChannelStrategyTypeFactory
    extends SchemanticType<NotificationChannelStrategy> {
  const _NotificationChannelStrategyTypeFactory();

  @override
  NotificationChannelStrategy parse(Object? json) {
    return NotificationChannelStrategy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NotificationChannelStrategy',
    definition: $Schema
        .object(
          properties: {
            'notification_channel_names': $Schema.list(
              description:
                  'The notification channels that these settings apply to. Each of these\ncorrespond to the name field in one of the NotificationChannel objects\nreferenced in the notification_channels field of this AlertPolicy. The format is\n\'projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]\'',
              items: $Schema.string(),
            ),
            'renotify_interval': $Schema.string(
              description:
                  'The frequency at which to send reminder notifications for open incidents.',
            ),
          },
          description:
              'Control over how the notification channels in \'notification_channels\'\nare notified when this alert fires, on a per-channel basis.',
        )
        .value,
    dependencies: [],
  );
}

base class NotificationRateLimit {
  /// Creates a [NotificationRateLimit] from a JSON map.
  factory NotificationRateLimit.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NotificationRateLimit._(this._json);

  NotificationRateLimit({String? period}) {
    _json = {'period': ?period};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NotificationRateLimit].
  static const SchemanticType<NotificationRateLimit> $schema =
      _NotificationRateLimitTypeFactory();

  String? get period {
    return _json['period'] as String?;
  }

  set period(String? value) {
    if (value == null) {
      _json.remove('period');
    } else {
      _json['period'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NotificationRateLimit] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NotificationRateLimitTypeFactory
    extends SchemanticType<NotificationRateLimit> {
  const _NotificationRateLimitTypeFactory();

  @override
  NotificationRateLimit parse(Object? json) {
    return NotificationRateLimit._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NotificationRateLimit',
    definition: $Schema
        .object(
          properties: {
            'period': $Schema.string(
              description:
                  'Not more than one notification per period.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'. Example "60.5s".',
            ),
          },
          description:
              'Required for alert policies with a LogMatch condition.\nThis limit is not implemented for alert policies that are not log-based.',
        )
        .value,
    dependencies: [],
  );
}

base class AlertStrategy {
  /// Creates a [AlertStrategy] from a JSON map.
  factory AlertStrategy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AlertStrategy._(this._json);

  AlertStrategy({
    String? autoClose,
    List<String>? notificationPrompts,
    List<NotificationChannelStrategy>? notificationChannelStrategy,
    NotificationRateLimit? notificationRateLimit,
  }) {
    _json = {
      'auto_close': ?autoClose,
      'notification_prompts': ?notificationPrompts,
      'notification_channel_strategy': ?notificationChannelStrategy
          ?.map((e) => e.toJson())
          .toList(),
      'notification_rate_limit': ?notificationRateLimit?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AlertStrategy].
  static const SchemanticType<AlertStrategy> $schema =
      _AlertStrategyTypeFactory();

  String? get autoClose {
    return _json['auto_close'] as String?;
  }

  set autoClose(String? value) {
    if (value == null) {
      _json.remove('auto_close');
    } else {
      _json['auto_close'] = value;
    }
  }

  List<String>? get notificationPrompts {
    return (_json['notification_prompts'] as List?)?.cast<String>();
  }

  set notificationPrompts(List<String>? value) {
    if (value == null) {
      _json.remove('notification_prompts');
    } else {
      _json['notification_prompts'] = value;
    }
  }

  List<NotificationChannelStrategy>? get notificationChannelStrategy {
    return (_json['notification_channel_strategy'] as List?)
        ?.map(
          (e) =>
              NotificationChannelStrategy.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set notificationChannelStrategy(List<NotificationChannelStrategy>? value) {
    if (value == null) {
      _json.remove('notification_channel_strategy');
    } else {
      _json['notification_channel_strategy'] = value.toList();
    }
  }

  NotificationRateLimit? get notificationRateLimit {
    return _json['notification_rate_limit'] == null
        ? null
        : NotificationRateLimit.fromJson(
            _json['notification_rate_limit'] as Map<String, dynamic>,
          );
  }

  set notificationRateLimit(NotificationRateLimit? value) {
    if (value == null) {
      _json.remove('notification_rate_limit');
    } else {
      _json['notification_rate_limit'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AlertStrategy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AlertStrategyTypeFactory extends SchemanticType<AlertStrategy> {
  const _AlertStrategyTypeFactory();

  @override
  AlertStrategy parse(Object? json) {
    return AlertStrategy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AlertStrategy',
    definition: $Schema
        .object(
          properties: {
            'auto_close': $Schema.string(
              description:
                  'If an alert policy that was active has no data for this long, any open incidents will close.',
            ),
            'notification_prompts': $Schema.list(
              description:
                  'Control when notifications will be sent out. Possible values: ["NOTIFICATION_PROMPT_UNSPECIFIED", "OPENED", "CLOSED"]',
              items: $Schema.string(),
            ),
            'notification_channel_strategy': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/NotificationChannelStrategy',
              }),
            ),
            'notification_rate_limit': $Schema.fromMap({
              '\$ref': r'#/$defs/NotificationRateLimit',
            }),
          },
          description:
              'Control over how this alert policy\'s notification channels are notified.',
        )
        .value,
    dependencies: [
      NotificationChannelStrategy.$schema,
      NotificationRateLimit.$schema,
    ],
  );
}

base class ConditionsConditionAbsentAggregations {
  /// Creates a [ConditionsConditionAbsentAggregations] from a JSON map.
  factory ConditionsConditionAbsentAggregations.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionsConditionAbsentAggregations._(this._json);

  ConditionsConditionAbsentAggregations({
    String? alignmentPeriod,
    String? crossSeriesReducer,
    List<String>? groupByFields,
    String? perSeriesAligner,
  }) {
    _json = {
      'alignment_period': ?alignmentPeriod,
      'cross_series_reducer': ?crossSeriesReducer,
      'group_by_fields': ?groupByFields,
      'per_series_aligner': ?perSeriesAligner,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionsConditionAbsentAggregations].
  static const SchemanticType<ConditionsConditionAbsentAggregations> $schema =
      _ConditionsConditionAbsentAggregationsTypeFactory();

  String? get alignmentPeriod {
    return _json['alignment_period'] as String?;
  }

  set alignmentPeriod(String? value) {
    if (value == null) {
      _json.remove('alignment_period');
    } else {
      _json['alignment_period'] = value;
    }
  }

  String? get crossSeriesReducer {
    return _json['cross_series_reducer'] as String?;
  }

  set crossSeriesReducer(String? value) {
    if (value == null) {
      _json.remove('cross_series_reducer');
    } else {
      _json['cross_series_reducer'] = value;
    }
  }

  List<String>? get groupByFields {
    return (_json['group_by_fields'] as List?)?.cast<String>();
  }

  set groupByFields(List<String>? value) {
    if (value == null) {
      _json.remove('group_by_fields');
    } else {
      _json['group_by_fields'] = value;
    }
  }

  String? get perSeriesAligner {
    return _json['per_series_aligner'] as String?;
  }

  set perSeriesAligner(String? value) {
    if (value == null) {
      _json.remove('per_series_aligner');
    } else {
      _json['per_series_aligner'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionsConditionAbsentAggregations] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsConditionAbsentAggregationsTypeFactory
    extends SchemanticType<ConditionsConditionAbsentAggregations> {
  const _ConditionsConditionAbsentAggregationsTypeFactory();

  @override
  ConditionsConditionAbsentAggregations parse(Object? json) {
    return ConditionsConditionAbsentAggregations._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionsConditionAbsentAggregations',
    definition: $Schema
        .object(
          properties: {
            'alignment_period': $Schema.string(
              description:
                  'The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned.',
            ),
            'cross_series_reducer': $Schema.string(
              description:
                  'The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN", "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV", "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE", "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99", "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50", "REDUCE_PERCENTILE_05"]',
            ),
            'group_by_fields': $Schema.list(
              description:
                  'The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored.',
              items: $Schema.string(),
            ),
            'per_series_aligner': $Schema.string(
              description:
                  'The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA", "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER", "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT", "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE", "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE", "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95", "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05", "ALIGN_PERCENT_CHANGE"]',
            ),
          },
          description:
              'Specifies the alignment of data points in\nindividual time series as well as how to\ncombine the retrieved time series together\n(such as when aggregating multiple streams\non each resource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).\nMultiple aggregations are applied in the\norder specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionsConditionAbsentTrigger {
  /// Creates a [ConditionsConditionAbsentTrigger] from a JSON map.
  factory ConditionsConditionAbsentTrigger.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionsConditionAbsentTrigger._(this._json);

  ConditionsConditionAbsentTrigger({num? count, num? percent}) {
    _json = {'count': ?count, 'percent': ?percent};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionsConditionAbsentTrigger].
  static const SchemanticType<ConditionsConditionAbsentTrigger> $schema =
      _ConditionsConditionAbsentTriggerTypeFactory();

  num? get count {
    return _json['count'] as num?;
  }

  set count(num? value) {
    if (value == null) {
      _json.remove('count');
    } else {
      _json['count'] = value;
    }
  }

  num? get percent {
    return _json['percent'] as num?;
  }

  set percent(num? value) {
    if (value == null) {
      _json.remove('percent');
    } else {
      _json['percent'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionsConditionAbsentTrigger] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsConditionAbsentTriggerTypeFactory
    extends SchemanticType<ConditionsConditionAbsentTrigger> {
  const _ConditionsConditionAbsentTriggerTypeFactory();

  @override
  ConditionsConditionAbsentTrigger parse(Object? json) {
    return ConditionsConditionAbsentTrigger._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionsConditionAbsentTrigger',
    definition: $Schema
        .object(
          properties: {
            'count': $Schema.number(
              description:
                  'The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered.',
            ),
            'percent': $Schema.number(
              description:
                  'The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered.',
            ),
          },
          description:
              'The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionAbsent {
  /// Creates a [ConditionAbsent] from a JSON map.
  factory ConditionAbsent.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConditionAbsent._(this._json);

  ConditionAbsent({
    required String duration,
    String? filter,
    List<ConditionsConditionAbsentAggregations>? aggregations,
    ConditionsConditionAbsentTrigger? trigger,
  }) {
    _json = {
      'duration': duration,
      'filter': ?filter,
      'aggregations': ?aggregations?.map((e) => e.toJson()).toList(),
      'trigger': ?trigger?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionAbsent].
  static const SchemanticType<ConditionAbsent> $schema =
      _ConditionAbsentTypeFactory();

  String get duration {
    return _json['duration'] as String;
  }

  set duration(String value) {
    _json['duration'] = value;
  }

  String? get filter {
    return _json['filter'] as String?;
  }

  set filter(String? value) {
    if (value == null) {
      _json.remove('filter');
    } else {
      _json['filter'] = value;
    }
  }

  List<ConditionsConditionAbsentAggregations>? get aggregations {
    return (_json['aggregations'] as List?)
        ?.map(
          (e) => ConditionsConditionAbsentAggregations.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  set aggregations(List<ConditionsConditionAbsentAggregations>? value) {
    if (value == null) {
      _json.remove('aggregations');
    } else {
      _json['aggregations'] = value.toList();
    }
  }

  ConditionsConditionAbsentTrigger? get trigger {
    return _json['trigger'] == null
        ? null
        : ConditionsConditionAbsentTrigger.fromJson(
            _json['trigger'] as Map<String, dynamic>,
          );
  }

  set trigger(ConditionsConditionAbsentTrigger? value) {
    if (value == null) {
      _json.remove('trigger');
    } else {
      _json['trigger'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionAbsent] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionAbsentTypeFactory extends SchemanticType<ConditionAbsent> {
  const _ConditionAbsentTypeFactory();

  @override
  ConditionAbsent parse(Object? json) {
    return ConditionAbsent._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionAbsent',
    definition: $Schema
        .object(
          properties: {
            'duration': $Schema.string(
              description:
                  'The amount of time that a time series must\nfail to report new data to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g. 60s, 120s, or 300s\n--are supported.',
            ),
            'filter': $Schema.string(
              description:
                  'A filter that identifies which time series\nshould be compared with the threshold.The\nfilter is similar to the one that is\nspecified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length.',
            ),
            'aggregations': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/ConditionsConditionAbsentAggregations',
              }),
            ),
            'trigger': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionsConditionAbsentTrigger',
            }),
          },
          required: ['duration'],
          description:
              'A condition that checks that a time series\ncontinues to receive new data points.',
        )
        .value,
    dependencies: [
      ConditionsConditionAbsentAggregations.$schema,
      ConditionsConditionAbsentTrigger.$schema,
    ],
  );
}

base class ConditionMatchedLog {
  /// Creates a [ConditionMatchedLog] from a JSON map.
  factory ConditionMatchedLog.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConditionMatchedLog._(this._json);

  ConditionMatchedLog({
    required String filter,
    Map<String, String>? labelExtractors,
  }) {
    _json = {'filter': filter, 'label_extractors': ?labelExtractors};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionMatchedLog].
  static const SchemanticType<ConditionMatchedLog> $schema =
      _ConditionMatchedLogTypeFactory();

  String get filter {
    return _json['filter'] as String;
  }

  set filter(String value) {
    _json['filter'] = value;
  }

  Map<String, String>? get labelExtractors {
    return (_json['label_extractors'] as Map?)?.cast<String, String>();
  }

  set labelExtractors(Map<String, String>? value) {
    if (value == null) {
      _json.remove('label_extractors');
    } else {
      _json['label_extractors'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionMatchedLog] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionMatchedLogTypeFactory
    extends SchemanticType<ConditionMatchedLog> {
  const _ConditionMatchedLogTypeFactory();

  @override
  ConditionMatchedLog parse(Object? json) {
    return ConditionMatchedLog._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionMatchedLog',
    definition: $Schema
        .object(
          properties: {
            'filter': $Schema.string(description: 'A logs-based filter.'),
            'label_extractors': $Schema.object(
              description:
                  'A map from a label key to an extractor expression, which is used to\nextract the value for this label key. Each entry in this map is\na specification for how data should be extracted from log entries that\nmatch filter. Each combination of extracted values is treated as\na separate rule for the purposes of triggering notifications.\nLabel keys and corresponding values can be used in notifications\ngenerated by this condition.',
              additionalProperties: $Schema.string(),
            ),
          },
          required: ['filter'],
          description:
              'A condition that checks for log messages matching given constraints.\nIf set, no other conditions can be present.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionsConditionMonitoringQueryLanguageTrigger {
  /// Creates a [ConditionsConditionMonitoringQueryLanguageTrigger] from a JSON map.
  factory ConditionsConditionMonitoringQueryLanguageTrigger.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionsConditionMonitoringQueryLanguageTrigger._(this._json);

  ConditionsConditionMonitoringQueryLanguageTrigger({
    num? count,
    num? percent,
  }) {
    _json = {'count': ?count, 'percent': ?percent};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionsConditionMonitoringQueryLanguageTrigger].
  static const SchemanticType<ConditionsConditionMonitoringQueryLanguageTrigger>
  $schema = _ConditionsConditionMonitoringQueryLanguageTriggerTypeFactory();

  num? get count {
    return _json['count'] as num?;
  }

  set count(num? value) {
    if (value == null) {
      _json.remove('count');
    } else {
      _json['count'] = value;
    }
  }

  num? get percent {
    return _json['percent'] as num?;
  }

  set percent(num? value) {
    if (value == null) {
      _json.remove('percent');
    } else {
      _json['percent'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionsConditionMonitoringQueryLanguageTrigger] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsConditionMonitoringQueryLanguageTriggerTypeFactory
    extends SchemanticType<ConditionsConditionMonitoringQueryLanguageTrigger> {
  const _ConditionsConditionMonitoringQueryLanguageTriggerTypeFactory();

  @override
  ConditionsConditionMonitoringQueryLanguageTrigger parse(Object? json) {
    return ConditionsConditionMonitoringQueryLanguageTrigger._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionsConditionMonitoringQueryLanguageTrigger',
    definition: $Schema
        .object(
          properties: {
            'count': $Schema.number(
              description:
                  'The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered.',
            ),
            'percent': $Schema.number(
              description:
                  'The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered.',
            ),
          },
          description:
              'The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations,\nor by the ratio, if denominator_filter and\ndenominator_aggregations are specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionMonitoringQueryLanguage {
  /// Creates a [ConditionMonitoringQueryLanguage] from a JSON map.
  factory ConditionMonitoringQueryLanguage.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionMonitoringQueryLanguage._(this._json);

  ConditionMonitoringQueryLanguage({
    required String duration,
    String? evaluationMissingData,
    required String query,
    ConditionsConditionMonitoringQueryLanguageTrigger? trigger,
  }) {
    _json = {
      'duration': duration,
      'evaluation_missing_data': ?evaluationMissingData,
      'query': query,
      'trigger': ?trigger?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionMonitoringQueryLanguage].
  static const SchemanticType<ConditionMonitoringQueryLanguage> $schema =
      _ConditionMonitoringQueryLanguageTypeFactory();

  String get duration {
    return _json['duration'] as String;
  }

  set duration(String value) {
    _json['duration'] = value;
  }

  String? get evaluationMissingData {
    return _json['evaluation_missing_data'] as String?;
  }

  set evaluationMissingData(String? value) {
    if (value == null) {
      _json.remove('evaluation_missing_data');
    } else {
      _json['evaluation_missing_data'] = value;
    }
  }

  String get query {
    return _json['query'] as String;
  }

  set query(String value) {
    _json['query'] = value;
  }

  ConditionsConditionMonitoringQueryLanguageTrigger? get trigger {
    return _json['trigger'] == null
        ? null
        : ConditionsConditionMonitoringQueryLanguageTrigger.fromJson(
            _json['trigger'] as Map<String, dynamic>,
          );
  }

  set trigger(ConditionsConditionMonitoringQueryLanguageTrigger? value) {
    if (value == null) {
      _json.remove('trigger');
    } else {
      _json['trigger'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionMonitoringQueryLanguage] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionMonitoringQueryLanguageTypeFactory
    extends SchemanticType<ConditionMonitoringQueryLanguage> {
  const _ConditionMonitoringQueryLanguageTypeFactory();

  @override
  ConditionMonitoringQueryLanguage parse(Object? json) {
    return ConditionMonitoringQueryLanguage._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionMonitoringQueryLanguage',
    definition: $Schema
        .object(
          properties: {
            'duration': $Schema.string(
              description:
                  'The amount of time that a time series must\nviolate the threshold to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g., 0, 60, 120, or\n300 seconds--are supported. If an invalid\nvalue is given, an error will be returned.\nWhen choosing a duration, it is useful to\nkeep in mind the frequency of the underlying\ntime series data (which may also be affected\nby any alignments specified in the\naggregations field); a good duration is long\nenough so that a single outlier does not\ngenerate spurious alerts, but short enough\nthat unhealthy states are detected and\nalerted on quickly.',
            ),
            'evaluation_missing_data': $Schema.string(
              description:
                  'A condition control that determines how\nmetric-threshold conditions are evaluated when\ndata stops arriving. Possible values: ["EVALUATION_MISSING_DATA_INACTIVE", "EVALUATION_MISSING_DATA_ACTIVE", "EVALUATION_MISSING_DATA_NO_OP"]',
            ),
            'query': $Schema.string(
              description:
                  'Monitoring Query Language query that outputs a boolean stream.',
            ),
            'trigger': $Schema.fromMap({
              '\$ref':
                  r'#/$defs/ConditionsConditionMonitoringQueryLanguageTrigger',
            }),
          },
          required: ['duration', 'query'],
          description:
              'A Monitoring Query Language query that outputs a boolean stream',
        )
        .value,
    dependencies: [ConditionsConditionMonitoringQueryLanguageTrigger.$schema],
  );
}

base class ConditionPrometheusQueryLanguage {
  /// Creates a [ConditionPrometheusQueryLanguage] from a JSON map.
  factory ConditionPrometheusQueryLanguage.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionPrometheusQueryLanguage._(this._json);

  ConditionPrometheusQueryLanguage({
    String? alertRule,
    bool? disableMetricValidation,
    String? duration,
    String? evaluationInterval,
    Map<String, String>? labels,
    required String query,
    String? ruleGroup,
  }) {
    _json = {
      'alert_rule': ?alertRule,
      'disable_metric_validation': ?disableMetricValidation,
      'duration': ?duration,
      'evaluation_interval': ?evaluationInterval,
      'labels': ?labels,
      'query': query,
      'rule_group': ?ruleGroup,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionPrometheusQueryLanguage].
  static const SchemanticType<ConditionPrometheusQueryLanguage> $schema =
      _ConditionPrometheusQueryLanguageTypeFactory();

  String? get alertRule {
    return _json['alert_rule'] as String?;
  }

  set alertRule(String? value) {
    if (value == null) {
      _json.remove('alert_rule');
    } else {
      _json['alert_rule'] = value;
    }
  }

  bool? get disableMetricValidation {
    return _json['disable_metric_validation'] as bool?;
  }

  set disableMetricValidation(bool? value) {
    if (value == null) {
      _json.remove('disable_metric_validation');
    } else {
      _json['disable_metric_validation'] = value;
    }
  }

  String? get duration {
    return _json['duration'] as String?;
  }

  set duration(String? value) {
    if (value == null) {
      _json.remove('duration');
    } else {
      _json['duration'] = value;
    }
  }

  String? get evaluationInterval {
    return _json['evaluation_interval'] as String?;
  }

  set evaluationInterval(String? value) {
    if (value == null) {
      _json.remove('evaluation_interval');
    } else {
      _json['evaluation_interval'] = value;
    }
  }

  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
    }
  }

  String get query {
    return _json['query'] as String;
  }

  set query(String value) {
    _json['query'] = value;
  }

  String? get ruleGroup {
    return _json['rule_group'] as String?;
  }

  set ruleGroup(String? value) {
    if (value == null) {
      _json.remove('rule_group');
    } else {
      _json['rule_group'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionPrometheusQueryLanguage] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionPrometheusQueryLanguageTypeFactory
    extends SchemanticType<ConditionPrometheusQueryLanguage> {
  const _ConditionPrometheusQueryLanguageTypeFactory();

  @override
  ConditionPrometheusQueryLanguage parse(Object? json) {
    return ConditionPrometheusQueryLanguage._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionPrometheusQueryLanguage',
    definition: $Schema
        .object(
          properties: {
            'alert_rule': $Schema.string(
              description:
                  'The alerting rule name of this alert in the corresponding Prometheus\nconfiguration file.\n\nSome external tools may require this field to be populated correctly\nin order to refer to the original Prometheus configuration file.\nThe rule group name and the alert name are necessary to update the\nrelevant AlertPolicies in case the definition of the rule group changes\nin the future.\n\nThis field is optional. If this field is not empty, then it must be a\nvalid Prometheus label name.',
            ),
            'disable_metric_validation': $Schema.boolean(
              description:
                  'Whether to disable metric existence validation for this condition.\n\nThis allows alerting policies to be defined on metrics that do not yet\nexist, improving advanced customer workflows such as configuring\nalerting policies using Terraform.\n\nUsers with the \'monitoring.alertPolicyViewer\' role are able to see the\nname of the non-existent metric in the alerting policy condition.',
            ),
            'duration': $Schema.string(
              description:
                  'Alerts are considered firing once their PromQL expression evaluated\nto be "true" for this long. Alerts whose PromQL expression was not\nevaluated to be "true" for long enough are considered pending. The\ndefault value is zero. Must be zero or positive.',
            ),
            'evaluation_interval': $Schema.string(
              description:
                  'How often this rule should be evaluated. Must be a positive multiple\nof 30 seconds or missing. The default value is 30 seconds. If this\nPrometheusQueryLanguageCondition was generated from a Prometheus\nalerting rule, then this value should be taken from the enclosing\nrule group.',
            ),
            'labels': $Schema.object(
              description:
                  'Labels to add to or overwrite in the PromQL query result. Label names\nmust be valid.\n\nLabel values can be templatized by using variables. The only available\nvariable names are the names of the labels in the PromQL result,\nalthough label names beginning with \_\_ (two "\_") are reserved for\ninternal use. "labels" may be empty. This field is intended to be used\nfor organizing and identifying the AlertPolicy.',
              additionalProperties: $Schema.string(),
            ),
            'query': $Schema.string(
              description:
                  'The PromQL expression to evaluate. Every evaluation cycle this\nexpression is evaluated at the current time, and all resultant time\nseries become pending/firing alerts. This field must not be empty.',
            ),
            'rule_group': $Schema.string(
              description:
                  'The rule group name of this alert in the corresponding Prometheus\nconfiguration file.\n\nSome external tools may require this field to be populated correctly\nin order to refer to the original Prometheus configuration file.\nThe rule group name and the alert name are necessary to update the\nrelevant AlertPolicies in case the definition of the rule group changes\nin the future. This field is optional.',
            ),
          },
          required: ['query'],
          description:
              'A condition type that allows alert policies to be defined using\nPrometheus Query Language (PromQL).\n\nThe PrometheusQueryLanguageCondition message contains information\nfrom a Prometheus alerting rule and its associated rule group.',
        )
        .value,
    dependencies: [],
  );
}

base class BooleanTest {
  /// Creates a [BooleanTest] from a JSON map.
  factory BooleanTest.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BooleanTest._(this._json);

  BooleanTest({required String column}) {
    _json = {'column': column};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BooleanTest].
  static const SchemanticType<BooleanTest> $schema = _BooleanTestTypeFactory();

  String get column {
    return _json['column'] as String;
  }

  set column(String value) {
    _json['column'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BooleanTest] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BooleanTestTypeFactory extends SchemanticType<BooleanTest> {
  const _BooleanTestTypeFactory();

  @override
  BooleanTest parse(Object? json) {
    return BooleanTest._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BooleanTest',
    definition: $Schema
        .object(
          properties: {
            'column': $Schema.string(
              description:
                  'The name of the column containing the boolean value. If the value in a row is\nNULL, that row is ignored.',
            ),
          },
          required: ['column'],
          description:
              'A test that uses an alerting result in a boolean column produced by the SQL query.',
        )
        .value,
    dependencies: [],
  );
}

base class ExecutionTime {
  /// Creates a [ExecutionTime] from a JSON map.
  factory ExecutionTime.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExecutionTime._(this._json);

  ExecutionTime({num? hours, num? minutes, num? nanos, num? seconds}) {
    _json = {
      'hours': ?hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExecutionTime].
  static const SchemanticType<ExecutionTime> $schema =
      _ExecutionTimeTypeFactory();

  num? get hours {
    return _json['hours'] as num?;
  }

  set hours(num? value) {
    if (value == null) {
      _json.remove('hours');
    } else {
      _json['hours'] = value;
    }
  }

  num? get minutes {
    return _json['minutes'] as num?;
  }

  set minutes(num? value) {
    if (value == null) {
      _json.remove('minutes');
    } else {
      _json['minutes'] = value;
    }
  }

  num? get nanos {
    return _json['nanos'] as num?;
  }

  set nanos(num? value) {
    if (value == null) {
      _json.remove('nanos');
    } else {
      _json['nanos'] = value;
    }
  }

  num? get seconds {
    return _json['seconds'] as num?;
  }

  set seconds(num? value) {
    if (value == null) {
      _json.remove('seconds');
    } else {
      _json['seconds'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ExecutionTime] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExecutionTimeTypeFactory extends SchemanticType<ExecutionTime> {
  const _ExecutionTimeTypeFactory();

  @override
  ExecutionTime parse(Object? json) {
    return ExecutionTime._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExecutionTime',
    definition: $Schema
        .object(
          properties: {
            'hours': $Schema.number(
              description:
                  'Hours of a day in 24 hour format. Must be greater than or equal\nto 0 and typically must be less than or equal to 23. An API may\nchoose to allow the value "24:00:00" for scenarios like business\nclosing time.',
            ),
            'minutes': $Schema.number(
              description:
                  'Minutes of an hour. Must be greater than or equal to 0 and\nless than or equal to 59.',
            ),
            'nanos': $Schema.number(
              description:
                  'Fractions of seconds, in nanoseconds. Must be greater than or\nequal to 0 and less than or equal to 999,999,999.',
            ),
            'seconds': $Schema.number(
              description:
                  'Seconds of a minute. Must be greater than or equal to 0 and\ntypically must be less than or equal to 59. An API may allow the\nvalue 60 if it allows leap-seconds.',
            ),
          },
          description:
              'The time of day (in UTC) at which the query should run. If left\nunspecified, the server picks an arbitrary time of day and runs\nthe query at the same time each day.',
        )
        .value,
    dependencies: [],
  );
}

base class Daily {
  /// Creates a [Daily] from a JSON map.
  factory Daily.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Daily._(this._json);

  Daily({required num periodicity, ExecutionTime? executionTime}) {
    _json = {
      'periodicity': periodicity,
      'execution_time': ?executionTime?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Daily].
  static const SchemanticType<Daily> $schema = _DailyTypeFactory();

  num get periodicity {
    return _json['periodicity'] as num;
  }

  set periodicity(num value) {
    _json['periodicity'] = value;
  }

  ExecutionTime? get executionTime {
    return _json['execution_time'] == null
        ? null
        : ExecutionTime.fromJson(
            _json['execution_time'] as Map<String, dynamic>,
          );
  }

  set executionTime(ExecutionTime? value) {
    if (value == null) {
      _json.remove('execution_time');
    } else {
      _json['execution_time'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Daily] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DailyTypeFactory extends SchemanticType<Daily> {
  const _DailyTypeFactory();

  @override
  Daily parse(Object? json) {
    return Daily._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Daily',
    definition: $Schema
        .object(
          properties: {
            'periodicity': $Schema.number(
              description:
                  'The number of days between runs. Must be greater than or equal\nto 1 day and less than or equal to 30 days.',
            ),
            'execution_time': $Schema.fromMap({
              '\$ref': r'#/$defs/ExecutionTime',
            }),
          },
          required: ['periodicity'],
          description: 'Used to schedule the query to run every so many days.',
        )
        .value,
    dependencies: [ExecutionTime.$schema],
  );
}

base class Hourly {
  /// Creates a [Hourly] from a JSON map.
  factory Hourly.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Hourly._(this._json);

  Hourly({num? minuteOffset, required num periodicity}) {
    _json = {'minute_offset': ?minuteOffset, 'periodicity': periodicity};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Hourly].
  static const SchemanticType<Hourly> $schema = _HourlyTypeFactory();

  num? get minuteOffset {
    return _json['minute_offset'] as num?;
  }

  set minuteOffset(num? value) {
    if (value == null) {
      _json.remove('minute_offset');
    } else {
      _json['minute_offset'] = value;
    }
  }

  num get periodicity {
    return _json['periodicity'] as num;
  }

  set periodicity(num value) {
    _json['periodicity'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Hourly] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HourlyTypeFactory extends SchemanticType<Hourly> {
  const _HourlyTypeFactory();

  @override
  Hourly parse(Object? json) {
    return Hourly._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Hourly',
    definition: $Schema
        .object(
          properties: {
            'minute_offset': $Schema.number(
              description:
                  'The number of minutes after the hour (in UTC) to run the query.\nMust be greater than or equal to 0 minutes and less than or equal to\n59 minutes.  If left unspecified, then an arbitrary offset is used.',
            ),
            'periodicity': $Schema.number(
              description:
                  'Number of hours between runs. The interval must be greater than or\nequal to 1 hour and less than or equal to 48 hours.',
            ),
          },
          required: ['periodicity'],
          description: 'Used to schedule the query to run every so many hours.',
        )
        .value,
    dependencies: [],
  );
}

base class Minutes {
  /// Creates a [Minutes] from a JSON map.
  factory Minutes.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Minutes._(this._json);

  Minutes({required num periodicity}) {
    _json = {'periodicity': periodicity};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Minutes].
  static const SchemanticType<Minutes> $schema = _MinutesTypeFactory();

  num get periodicity {
    return _json['periodicity'] as num;
  }

  set periodicity(num value) {
    _json['periodicity'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Minutes] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MinutesTypeFactory extends SchemanticType<Minutes> {
  const _MinutesTypeFactory();

  @override
  Minutes parse(Object? json) {
    return Minutes._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Minutes',
    definition: $Schema
        .object(
          properties: {
            'periodicity': $Schema.number(
              description:
                  'Number of minutes between runs. The interval must be greater than or\nequal to 5 minutes and less than or equal to 1440 minutes.',
            ),
          },
          required: ['periodicity'],
          description:
              'Used to schedule the query to run every so many minutes.',
        )
        .value,
    dependencies: [],
  );
}

base class RowCountTest {
  /// Creates a [RowCountTest] from a JSON map.
  factory RowCountTest.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RowCountTest._(this._json);

  RowCountTest({required String comparison, required num threshold}) {
    _json = {'comparison': comparison, 'threshold': threshold};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RowCountTest].
  static const SchemanticType<RowCountTest> $schema =
      _RowCountTestTypeFactory();

  String get comparison {
    return _json['comparison'] as String;
  }

  set comparison(String value) {
    _json['comparison'] = value;
  }

  num get threshold {
    return _json['threshold'] as num;
  }

  set threshold(num value) {
    _json['threshold'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RowCountTest] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RowCountTestTypeFactory extends SchemanticType<RowCountTest> {
  const _RowCountTestTypeFactory();

  @override
  RowCountTest parse(Object? json) {
    return RowCountTest._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RowCountTest',
    definition: $Schema
        .object(
          properties: {
            'comparison': $Schema.string(
              description:
                  'The comparison to apply between the time\nseries (indicated by filter and aggregation)\nand the threshold (indicated by\nthreshold_value). The comparison is applied\non each time series, with the time series on\nthe left-hand side and the threshold on the\nright-hand side. Only COMPARISON_LT and\nCOMPARISON_GT are supported currently. Possible values: ["COMPARISON_GT", "COMPARISON_GE", "COMPARISON_LT", "COMPARISON_LE", "COMPARISON_EQ", "COMPARISON_NE"]',
            ),
            'threshold': $Schema.number(
              description: 'The value against which to compare the row count.',
            ),
          },
          required: ['comparison', 'threshold'],
          description:
              'A test that checks if the number of rows in the result set violates some threshold.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionSql {
  /// Creates a [ConditionSql] from a JSON map.
  factory ConditionSql.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConditionSql._(this._json);

  ConditionSql({
    required String query,
    BooleanTest? booleanTest,
    Daily? daily,
    Hourly? hourly,
    Minutes? minutes,
    RowCountTest? rowCountTest,
  }) {
    _json = {
      'query': query,
      'boolean_test': ?booleanTest?.toJson(),
      'daily': ?daily?.toJson(),
      'hourly': ?hourly?.toJson(),
      'minutes': ?minutes?.toJson(),
      'row_count_test': ?rowCountTest?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionSql].
  static const SchemanticType<ConditionSql> $schema =
      _ConditionSqlTypeFactory();

  String get query {
    return _json['query'] as String;
  }

  set query(String value) {
    _json['query'] = value;
  }

  BooleanTest? get booleanTest {
    return _json['boolean_test'] == null
        ? null
        : BooleanTest.fromJson(_json['boolean_test'] as Map<String, dynamic>);
  }

  set booleanTest(BooleanTest? value) {
    if (value == null) {
      _json.remove('boolean_test');
    } else {
      _json['boolean_test'] = value;
    }
  }

  Daily? get daily {
    return _json['daily'] == null
        ? null
        : Daily.fromJson(_json['daily'] as Map<String, dynamic>);
  }

  set daily(Daily? value) {
    if (value == null) {
      _json.remove('daily');
    } else {
      _json['daily'] = value;
    }
  }

  Hourly? get hourly {
    return _json['hourly'] == null
        ? null
        : Hourly.fromJson(_json['hourly'] as Map<String, dynamic>);
  }

  set hourly(Hourly? value) {
    if (value == null) {
      _json.remove('hourly');
    } else {
      _json['hourly'] = value;
    }
  }

  Minutes? get minutes {
    return _json['minutes'] == null
        ? null
        : Minutes.fromJson(_json['minutes'] as Map<String, dynamic>);
  }

  set minutes(Minutes? value) {
    if (value == null) {
      _json.remove('minutes');
    } else {
      _json['minutes'] = value;
    }
  }

  RowCountTest? get rowCountTest {
    return _json['row_count_test'] == null
        ? null
        : RowCountTest.fromJson(
            _json['row_count_test'] as Map<String, dynamic>,
          );
  }

  set rowCountTest(RowCountTest? value) {
    if (value == null) {
      _json.remove('row_count_test');
    } else {
      _json['row_count_test'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionSql] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionSqlTypeFactory extends SchemanticType<ConditionSql> {
  const _ConditionSqlTypeFactory();

  @override
  ConditionSql parse(Object? json) {
    return ConditionSql._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionSql',
    definition: $Schema
        .object(
          properties: {
            'query': $Schema.string(
              description:
                  'The Log Analytics SQL query to run, as a string.  The query must\nconform to the required shape. Specifically, the query must not try to\nfilter the input by time.  A filter will automatically be applied\nto filter the input so that the query receives all rows received\nsince the last time the query was run.',
            ),
            'boolean_test': $Schema.fromMap({'\$ref': r'#/$defs/BooleanTest'}),
            'daily': $Schema.fromMap({'\$ref': r'#/$defs/Daily'}),
            'hourly': $Schema.fromMap({'\$ref': r'#/$defs/Hourly'}),
            'minutes': $Schema.fromMap({'\$ref': r'#/$defs/Minutes'}),
            'row_count_test': $Schema.fromMap({
              '\$ref': r'#/$defs/RowCountTest',
            }),
          },
          required: ['query'],
          description:
              'A condition that allows alerting policies to be defined using GoogleSQL.\nSQL conditions examine a sliding window of logs using GoogleSQL.\nAlert policies with SQL conditions may incur additional billing.',
        )
        .value,
    dependencies: [
      BooleanTest.$schema,
      Daily.$schema,
      Hourly.$schema,
      Minutes.$schema,
      RowCountTest.$schema,
    ],
  );
}

base class ConditionsConditionThresholdAggregations {
  /// Creates a [ConditionsConditionThresholdAggregations] from a JSON map.
  factory ConditionsConditionThresholdAggregations.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionsConditionThresholdAggregations._(this._json);

  ConditionsConditionThresholdAggregations({
    String? alignmentPeriod,
    String? crossSeriesReducer,
    List<String>? groupByFields,
    String? perSeriesAligner,
  }) {
    _json = {
      'alignment_period': ?alignmentPeriod,
      'cross_series_reducer': ?crossSeriesReducer,
      'group_by_fields': ?groupByFields,
      'per_series_aligner': ?perSeriesAligner,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionsConditionThresholdAggregations].
  static const SchemanticType<ConditionsConditionThresholdAggregations>
  $schema = _ConditionsConditionThresholdAggregationsTypeFactory();

  String? get alignmentPeriod {
    return _json['alignment_period'] as String?;
  }

  set alignmentPeriod(String? value) {
    if (value == null) {
      _json.remove('alignment_period');
    } else {
      _json['alignment_period'] = value;
    }
  }

  String? get crossSeriesReducer {
    return _json['cross_series_reducer'] as String?;
  }

  set crossSeriesReducer(String? value) {
    if (value == null) {
      _json.remove('cross_series_reducer');
    } else {
      _json['cross_series_reducer'] = value;
    }
  }

  List<String>? get groupByFields {
    return (_json['group_by_fields'] as List?)?.cast<String>();
  }

  set groupByFields(List<String>? value) {
    if (value == null) {
      _json.remove('group_by_fields');
    } else {
      _json['group_by_fields'] = value;
    }
  }

  String? get perSeriesAligner {
    return _json['per_series_aligner'] as String?;
  }

  set perSeriesAligner(String? value) {
    if (value == null) {
      _json.remove('per_series_aligner');
    } else {
      _json['per_series_aligner'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionsConditionThresholdAggregations] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsConditionThresholdAggregationsTypeFactory
    extends SchemanticType<ConditionsConditionThresholdAggregations> {
  const _ConditionsConditionThresholdAggregationsTypeFactory();

  @override
  ConditionsConditionThresholdAggregations parse(Object? json) {
    return ConditionsConditionThresholdAggregations._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionsConditionThresholdAggregations',
    definition: $Schema
        .object(
          properties: {
            'alignment_period': $Schema.string(
              description:
                  'The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned.',
            ),
            'cross_series_reducer': $Schema.string(
              description:
                  'The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN", "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV", "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE", "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99", "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50", "REDUCE_PERCENTILE_05"]',
            ),
            'group_by_fields': $Schema.list(
              description:
                  'The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored.',
              items: $Schema.string(),
            ),
            'per_series_aligner': $Schema.string(
              description:
                  'The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA", "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER", "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT", "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE", "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE", "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95", "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05", "ALIGN_PERCENT_CHANGE"]',
            ),
          },
          description:
              'Specifies the alignment of data points in\nindividual time series as well as how to\ncombine the retrieved time series together\n(such as when aggregating multiple streams\non each resource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).\nMultiple aggregations are applied in the\norder specified.This field is similar to the\none in the MetricService.ListTimeSeries\nrequest. It is advisable to use the\nListTimeSeries method when debugging this\nfield.',
        )
        .value,
    dependencies: [],
  );
}

base class DenominatorAggregations {
  /// Creates a [DenominatorAggregations] from a JSON map.
  factory DenominatorAggregations.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DenominatorAggregations._(this._json);

  DenominatorAggregations({
    String? alignmentPeriod,
    String? crossSeriesReducer,
    List<String>? groupByFields,
    String? perSeriesAligner,
  }) {
    _json = {
      'alignment_period': ?alignmentPeriod,
      'cross_series_reducer': ?crossSeriesReducer,
      'group_by_fields': ?groupByFields,
      'per_series_aligner': ?perSeriesAligner,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DenominatorAggregations].
  static const SchemanticType<DenominatorAggregations> $schema =
      _DenominatorAggregationsTypeFactory();

  String? get alignmentPeriod {
    return _json['alignment_period'] as String?;
  }

  set alignmentPeriod(String? value) {
    if (value == null) {
      _json.remove('alignment_period');
    } else {
      _json['alignment_period'] = value;
    }
  }

  String? get crossSeriesReducer {
    return _json['cross_series_reducer'] as String?;
  }

  set crossSeriesReducer(String? value) {
    if (value == null) {
      _json.remove('cross_series_reducer');
    } else {
      _json['cross_series_reducer'] = value;
    }
  }

  List<String>? get groupByFields {
    return (_json['group_by_fields'] as List?)?.cast<String>();
  }

  set groupByFields(List<String>? value) {
    if (value == null) {
      _json.remove('group_by_fields');
    } else {
      _json['group_by_fields'] = value;
    }
  }

  String? get perSeriesAligner {
    return _json['per_series_aligner'] as String?;
  }

  set perSeriesAligner(String? value) {
    if (value == null) {
      _json.remove('per_series_aligner');
    } else {
      _json['per_series_aligner'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DenominatorAggregations] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DenominatorAggregationsTypeFactory
    extends SchemanticType<DenominatorAggregations> {
  const _DenominatorAggregationsTypeFactory();

  @override
  DenominatorAggregations parse(Object? json) {
    return DenominatorAggregations._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DenominatorAggregations',
    definition: $Schema
        .object(
          properties: {
            'alignment_period': $Schema.string(
              description:
                  'The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned.',
            ),
            'cross_series_reducer': $Schema.string(
              description:
                  'The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN", "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV", "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE", "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99", "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50", "REDUCE_PERCENTILE_05"]',
            ),
            'group_by_fields': $Schema.list(
              description:
                  'The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored.',
              items: $Schema.string(),
            ),
            'per_series_aligner': $Schema.string(
              description:
                  'The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA", "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER", "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT", "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE", "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE", "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95", "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05", "ALIGN_PERCENT_CHANGE"]',
            ),
          },
          description:
              'Specifies the alignment of data points in\nindividual time series selected by\ndenominatorFilter as well as how to combine\nthe retrieved time series together (such as\nwhen aggregating multiple streams on each\nresource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).When\ncomputing ratios, the aggregations and\ndenominator_aggregations fields must use the\nsame alignment period and produce time\nseries that have the same periodicity and\nlabels.This field is similar to the one in\nthe MetricService.ListTimeSeries request. It\nis advisable to use the ListTimeSeries\nmethod when debugging this field.',
        )
        .value,
    dependencies: [],
  );
}

base class ForecastOptions {
  /// Creates a [ForecastOptions] from a JSON map.
  factory ForecastOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ForecastOptions._(this._json);

  ForecastOptions({required String forecastHorizon}) {
    _json = {'forecast_horizon': forecastHorizon};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ForecastOptions].
  static const SchemanticType<ForecastOptions> $schema =
      _ForecastOptionsTypeFactory();

  String get forecastHorizon {
    return _json['forecast_horizon'] as String;
  }

  set forecastHorizon(String value) {
    _json['forecast_horizon'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ForecastOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ForecastOptionsTypeFactory extends SchemanticType<ForecastOptions> {
  const _ForecastOptionsTypeFactory();

  @override
  ForecastOptions parse(Object? json) {
    return ForecastOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ForecastOptions',
    definition: $Schema
        .object(
          properties: {
            'forecast_horizon': $Schema.string(
              description:
                  'The length of time into the future to forecast\nwhether a timeseries will violate the threshold.\nIf the predicted value is found to violate the\nthreshold, and the violation is observed in all\nforecasts made for the Configured \'duration\',\nthen the timeseries is considered to be failing.',
            ),
          },
          required: ['forecast_horizon'],
          description:
              'When this field is present, the \'MetricThreshold\'\ncondition forecasts whether the time series is\npredicted to violate the threshold within the\n\'forecastHorizon\'. When this field is not set, the\n\'MetricThreshold\' tests the current value of the\ntimeseries against the threshold.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionsConditionThresholdTrigger {
  /// Creates a [ConditionsConditionThresholdTrigger] from a JSON map.
  factory ConditionsConditionThresholdTrigger.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ConditionsConditionThresholdTrigger._(this._json);

  ConditionsConditionThresholdTrigger({num? count, num? percent}) {
    _json = {'count': ?count, 'percent': ?percent};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionsConditionThresholdTrigger].
  static const SchemanticType<ConditionsConditionThresholdTrigger> $schema =
      _ConditionsConditionThresholdTriggerTypeFactory();

  num? get count {
    return _json['count'] as num?;
  }

  set count(num? value) {
    if (value == null) {
      _json.remove('count');
    } else {
      _json['count'] = value;
    }
  }

  num? get percent {
    return _json['percent'] as num?;
  }

  set percent(num? value) {
    if (value == null) {
      _json.remove('percent');
    } else {
      _json['percent'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionsConditionThresholdTrigger] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsConditionThresholdTriggerTypeFactory
    extends SchemanticType<ConditionsConditionThresholdTrigger> {
  const _ConditionsConditionThresholdTriggerTypeFactory();

  @override
  ConditionsConditionThresholdTrigger parse(Object? json) {
    return ConditionsConditionThresholdTrigger._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionsConditionThresholdTrigger',
    definition: $Schema
        .object(
          properties: {
            'count': $Schema.number(
              description:
                  'The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered.',
            ),
            'percent': $Schema.number(
              description:
                  'The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered.',
            ),
          },
          description:
              'The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations,\nor by the ratio, if denominator_filter and\ndenominator_aggregations are specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ConditionThreshold {
  /// Creates a [ConditionThreshold] from a JSON map.
  factory ConditionThreshold.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConditionThreshold._(this._json);

  ConditionThreshold({
    required String comparison,
    String? denominatorFilter,
    required String duration,
    String? evaluationMissingData,
    String? filter,
    num? thresholdValue,
    List<ConditionsConditionThresholdAggregations>? aggregations,
    List<DenominatorAggregations>? denominatorAggregations,
    ForecastOptions? forecastOptions,
    ConditionsConditionThresholdTrigger? trigger,
  }) {
    _json = {
      'comparison': comparison,
      'denominator_filter': ?denominatorFilter,
      'duration': duration,
      'evaluation_missing_data': ?evaluationMissingData,
      'filter': ?filter,
      'threshold_value': ?thresholdValue,
      'aggregations': ?aggregations?.map((e) => e.toJson()).toList(),
      'denominator_aggregations': ?denominatorAggregations
          ?.map((e) => e.toJson())
          .toList(),
      'forecast_options': ?forecastOptions?.toJson(),
      'trigger': ?trigger?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConditionThreshold].
  static const SchemanticType<ConditionThreshold> $schema =
      _ConditionThresholdTypeFactory();

  String get comparison {
    return _json['comparison'] as String;
  }

  set comparison(String value) {
    _json['comparison'] = value;
  }

  String? get denominatorFilter {
    return _json['denominator_filter'] as String?;
  }

  set denominatorFilter(String? value) {
    if (value == null) {
      _json.remove('denominator_filter');
    } else {
      _json['denominator_filter'] = value;
    }
  }

  String get duration {
    return _json['duration'] as String;
  }

  set duration(String value) {
    _json['duration'] = value;
  }

  String? get evaluationMissingData {
    return _json['evaluation_missing_data'] as String?;
  }

  set evaluationMissingData(String? value) {
    if (value == null) {
      _json.remove('evaluation_missing_data');
    } else {
      _json['evaluation_missing_data'] = value;
    }
  }

  String? get filter {
    return _json['filter'] as String?;
  }

  set filter(String? value) {
    if (value == null) {
      _json.remove('filter');
    } else {
      _json['filter'] = value;
    }
  }

  num? get thresholdValue {
    return _json['threshold_value'] as num?;
  }

  set thresholdValue(num? value) {
    if (value == null) {
      _json.remove('threshold_value');
    } else {
      _json['threshold_value'] = value;
    }
  }

  List<ConditionsConditionThresholdAggregations>? get aggregations {
    return (_json['aggregations'] as List?)
        ?.map(
          (e) => ConditionsConditionThresholdAggregations.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  set aggregations(List<ConditionsConditionThresholdAggregations>? value) {
    if (value == null) {
      _json.remove('aggregations');
    } else {
      _json['aggregations'] = value.toList();
    }
  }

  List<DenominatorAggregations>? get denominatorAggregations {
    return (_json['denominator_aggregations'] as List?)
        ?.map(
          (e) => DenominatorAggregations.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set denominatorAggregations(List<DenominatorAggregations>? value) {
    if (value == null) {
      _json.remove('denominator_aggregations');
    } else {
      _json['denominator_aggregations'] = value.toList();
    }
  }

  ForecastOptions? get forecastOptions {
    return _json['forecast_options'] == null
        ? null
        : ForecastOptions.fromJson(
            _json['forecast_options'] as Map<String, dynamic>,
          );
  }

  set forecastOptions(ForecastOptions? value) {
    if (value == null) {
      _json.remove('forecast_options');
    } else {
      _json['forecast_options'] = value;
    }
  }

  ConditionsConditionThresholdTrigger? get trigger {
    return _json['trigger'] == null
        ? null
        : ConditionsConditionThresholdTrigger.fromJson(
            _json['trigger'] as Map<String, dynamic>,
          );
  }

  set trigger(ConditionsConditionThresholdTrigger? value) {
    if (value == null) {
      _json.remove('trigger');
    } else {
      _json['trigger'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConditionThreshold] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionThresholdTypeFactory
    extends SchemanticType<ConditionThreshold> {
  const _ConditionThresholdTypeFactory();

  @override
  ConditionThreshold parse(Object? json) {
    return ConditionThreshold._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConditionThreshold',
    definition: $Schema
        .object(
          properties: {
            'comparison': $Schema.string(
              description:
                  'The comparison to apply between the time\nseries (indicated by filter and aggregation)\nand the threshold (indicated by\nthreshold_value). The comparison is applied\non each time series, with the time series on\nthe left-hand side and the threshold on the\nright-hand side. Only COMPARISON_LT and\nCOMPARISON_GT are supported currently. Possible values: ["COMPARISON_GT", "COMPARISON_GE", "COMPARISON_LT", "COMPARISON_LE", "COMPARISON_EQ", "COMPARISON_NE"]',
            ),
            'denominator_filter': $Schema.string(
              description:
                  'A filter that identifies a time series that\nshould be used as the denominator of a ratio\nthat will be compared with the threshold. If\na denominator_filter is specified, the time\nseries specified by the filter field will be\nused as the numerator.The filter is similar\nto the one that is specified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length.',
            ),
            'duration': $Schema.string(
              description:
                  'The amount of time that a time series must\nviolate the threshold to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g., 0, 60, 120, or\n300 seconds--are supported. If an invalid\nvalue is given, an error will be returned.\nWhen choosing a duration, it is useful to\nkeep in mind the frequency of the underlying\ntime series data (which may also be affected\nby any alignments specified in the\naggregations field); a good duration is long\nenough so that a single outlier does not\ngenerate spurious alerts, but short enough\nthat unhealthy states are detected and\nalerted on quickly.',
            ),
            'evaluation_missing_data': $Schema.string(
              description:
                  'A condition control that determines how\nmetric-threshold conditions are evaluated when\ndata stops arriving. Possible values: ["EVALUATION_MISSING_DATA_INACTIVE", "EVALUATION_MISSING_DATA_ACTIVE", "EVALUATION_MISSING_DATA_NO_OP"]',
            ),
            'filter': $Schema.string(
              description:
                  'A filter that identifies which time series\nshould be compared with the threshold.The\nfilter is similar to the one that is\nspecified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length.',
            ),
            'threshold_value': $Schema.number(
              description: 'A value against which to compare the time\nseries.',
            ),
            'aggregations': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/ConditionsConditionThresholdAggregations',
              }),
            ),
            'denominator_aggregations': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/DenominatorAggregations',
              }),
            ),
            'forecast_options': $Schema.fromMap({
              '\$ref': r'#/$defs/ForecastOptions',
            }),
            'trigger': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionsConditionThresholdTrigger',
            }),
          },
          required: ['comparison', 'duration'],
          description:
              'A condition that compares a time series against a\nthreshold.',
        )
        .value,
    dependencies: [
      ConditionsConditionThresholdAggregations.$schema,
      DenominatorAggregations.$schema,
      ForecastOptions.$schema,
      ConditionsConditionThresholdTrigger.$schema,
    ],
  );
}

base class Conditions {
  /// Creates a [Conditions] from a JSON map.
  factory Conditions.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Conditions._(this._json);

  Conditions({
    required String displayName,
    ConditionAbsent? conditionAbsent,
    ConditionMatchedLog? conditionMatchedLog,
    ConditionMonitoringQueryLanguage? conditionMonitoringQueryLanguage,
    ConditionPrometheusQueryLanguage? conditionPrometheusQueryLanguage,
    ConditionSql? conditionSql,
    ConditionThreshold? conditionThreshold,
  }) {
    _json = {
      'display_name': displayName,
      'condition_absent': ?conditionAbsent?.toJson(),
      'condition_matched_log': ?conditionMatchedLog?.toJson(),
      'condition_monitoring_query_language': ?conditionMonitoringQueryLanguage
          ?.toJson(),
      'condition_prometheus_query_language': ?conditionPrometheusQueryLanguage
          ?.toJson(),
      'condition_sql': ?conditionSql?.toJson(),
      'condition_threshold': ?conditionThreshold?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Conditions].
  static const SchemanticType<Conditions> $schema = _ConditionsTypeFactory();

  String get displayName {
    return _json['display_name'] as String;
  }

  set displayName(String value) {
    _json['display_name'] = value;
  }

  ConditionAbsent? get conditionAbsent {
    return _json['condition_absent'] == null
        ? null
        : ConditionAbsent.fromJson(
            _json['condition_absent'] as Map<String, dynamic>,
          );
  }

  set conditionAbsent(ConditionAbsent? value) {
    if (value == null) {
      _json.remove('condition_absent');
    } else {
      _json['condition_absent'] = value;
    }
  }

  ConditionMatchedLog? get conditionMatchedLog {
    return _json['condition_matched_log'] == null
        ? null
        : ConditionMatchedLog.fromJson(
            _json['condition_matched_log'] as Map<String, dynamic>,
          );
  }

  set conditionMatchedLog(ConditionMatchedLog? value) {
    if (value == null) {
      _json.remove('condition_matched_log');
    } else {
      _json['condition_matched_log'] = value;
    }
  }

  ConditionMonitoringQueryLanguage? get conditionMonitoringQueryLanguage {
    return _json['condition_monitoring_query_language'] == null
        ? null
        : ConditionMonitoringQueryLanguage.fromJson(
            _json['condition_monitoring_query_language']
                as Map<String, dynamic>,
          );
  }

  set conditionMonitoringQueryLanguage(
    ConditionMonitoringQueryLanguage? value,
  ) {
    if (value == null) {
      _json.remove('condition_monitoring_query_language');
    } else {
      _json['condition_monitoring_query_language'] = value;
    }
  }

  ConditionPrometheusQueryLanguage? get conditionPrometheusQueryLanguage {
    return _json['condition_prometheus_query_language'] == null
        ? null
        : ConditionPrometheusQueryLanguage.fromJson(
            _json['condition_prometheus_query_language']
                as Map<String, dynamic>,
          );
  }

  set conditionPrometheusQueryLanguage(
    ConditionPrometheusQueryLanguage? value,
  ) {
    if (value == null) {
      _json.remove('condition_prometheus_query_language');
    } else {
      _json['condition_prometheus_query_language'] = value;
    }
  }

  ConditionSql? get conditionSql {
    return _json['condition_sql'] == null
        ? null
        : ConditionSql.fromJson(_json['condition_sql'] as Map<String, dynamic>);
  }

  set conditionSql(ConditionSql? value) {
    if (value == null) {
      _json.remove('condition_sql');
    } else {
      _json['condition_sql'] = value;
    }
  }

  ConditionThreshold? get conditionThreshold {
    return _json['condition_threshold'] == null
        ? null
        : ConditionThreshold.fromJson(
            _json['condition_threshold'] as Map<String, dynamic>,
          );
  }

  set conditionThreshold(ConditionThreshold? value) {
    if (value == null) {
      _json.remove('condition_threshold');
    } else {
      _json['condition_threshold'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Conditions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsTypeFactory extends SchemanticType<Conditions> {
  const _ConditionsTypeFactory();

  @override
  Conditions parse(Object? json) {
    return Conditions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Conditions',
    definition: $Schema
        .object(
          properties: {
            'display_name': $Schema.string(
              description:
                  'A short name or phrase used to identify the\ncondition in dashboards, notifications, and\nincidents. To avoid confusion, don\'t use the same\ndisplay name for multiple conditions in the same\npolicy.',
            ),
            'condition_absent': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionAbsent',
            }),
            'condition_matched_log': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionMatchedLog',
            }),
            'condition_monitoring_query_language': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionMonitoringQueryLanguage',
            }),
            'condition_prometheus_query_language': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionPrometheusQueryLanguage',
            }),
            'condition_sql': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionSql',
            }),
            'condition_threshold': $Schema.fromMap({
              '\$ref': r'#/$defs/ConditionThreshold',
            }),
          },
          required: ['display_name'],
          description:
              'A list of conditions for the policy. The conditions are combined by\nAND or OR according to the combiner field. If the combined conditions\nevaluate to true, then an incident is created. A policy can have from\none to six conditions.',
        )
        .value,
    dependencies: [
      ConditionAbsent.$schema,
      ConditionMatchedLog.$schema,
      ConditionMonitoringQueryLanguage.$schema,
      ConditionPrometheusQueryLanguage.$schema,
      ConditionSql.$schema,
      ConditionThreshold.$schema,
    ],
  );
}

base class Links {
  /// Creates a [Links] from a JSON map.
  factory Links.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Links._(this._json);

  Links({String? displayName, String? url}) {
    _json = {'display_name': ?displayName, 'url': ?url};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Links].
  static const SchemanticType<Links> $schema = _LinksTypeFactory();

  String? get displayName {
    return _json['display_name'] as String?;
  }

  set displayName(String? value) {
    if (value == null) {
      _json.remove('display_name');
    } else {
      _json['display_name'] = value;
    }
  }

  String? get url {
    return _json['url'] as String?;
  }

  set url(String? value) {
    if (value == null) {
      _json.remove('url');
    } else {
      _json['url'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Links] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LinksTypeFactory extends SchemanticType<Links> {
  const _LinksTypeFactory();

  @override
  Links parse(Object? json) {
    return Links._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Links',
    definition: $Schema
        .object(
          properties: {
            'display_name': $Schema.string(
              description:
                  'A short display name for the link. The display name must not be empty or exceed 63 characters. Example: "playbook".',
            ),
            'url': $Schema.string(
              description:
                  'The url of a webpage. A url can be templatized by using variables in the path or the query parameters. The total length of a URL should not exceed 2083 characters before and after variable expansion. Example: "https://my_domain.com/playbook?name=＄{resource.name}".',
            ),
          },
          description:
              'Links to content such as playbooks, repositories, and other resources. This field can contain up to 3 entries.',
        )
        .value,
    dependencies: [],
  );
}

base class Documentation {
  /// Creates a [Documentation] from a JSON map.
  factory Documentation.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  Documentation._(this._json);

  Documentation({
    String? content,
    String? mimeType,
    String? subject,
    List<Links>? links,
  }) {
    _json = {
      'content': ?content,
      'mime_type': ?mimeType,
      'subject': ?subject,
      'links': ?links?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Documentation].
  static const SchemanticType<Documentation> $schema =
      _DocumentationTypeFactory();

  String? get content {
    return _json['content'] as String?;
  }

  set content(String? value) {
    if (value == null) {
      _json.remove('content');
    } else {
      _json['content'] = value;
    }
  }

  String? get mimeType {
    return _json['mime_type'] as String?;
  }

  set mimeType(String? value) {
    if (value == null) {
      _json.remove('mime_type');
    } else {
      _json['mime_type'] = value;
    }
  }

  String? get subject {
    return _json['subject'] as String?;
  }

  set subject(String? value) {
    if (value == null) {
      _json.remove('subject');
    } else {
      _json['subject'] = value;
    }
  }

  List<Links>? get links {
    return (_json['links'] as List?)
        ?.map((e) => Links.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set links(List<Links>? value) {
    if (value == null) {
      _json.remove('links');
    } else {
      _json['links'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Documentation] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DocumentationTypeFactory extends SchemanticType<Documentation> {
  const _DocumentationTypeFactory();

  @override
  Documentation parse(Object? json) {
    return Documentation._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Documentation',
    definition: $Schema
        .object(
          properties: {
            'content': $Schema.string(
              description:
                  'The text of the documentation, interpreted according to mimeType.\nThe content may not exceed 8,192 Unicode characters and may not\nexceed more than 10,240 bytes when encoded in UTF-8 format,\nwhichever is smaller.',
            ),
            'mime_type': $Schema.string(
              description:
                  'The format of the content field. Presently, only the value\n"text/markdown" is supported.',
            ),
            'subject': $Schema.string(
              description:
                  'The subject line of the notification. The subject line may not\nexceed 10,240 bytes. In notifications generated by this policy the contents\nof the subject line after variable expansion will be truncated to 255 bytes\nor shorter at the latest UTF-8 character boundary.',
            ),
            'links': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Links'}),
            ),
          },
          description:
              'Documentation that is included with notifications and incidents related\nto this policy. Best practice is for the documentation to include information\nto help responders understand, mitigate, escalate, and correct the underlying\nproblems detected by the alerting policy. Notification channels that have\nlimited capacity might not show this documentation.',
        )
        .value,
    dependencies: [Links.$schema],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleMonitoringAlertPolicy {
  /// Creates a [GoogleMonitoringAlertPolicy] from a JSON map.
  factory GoogleMonitoringAlertPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleMonitoringAlertPolicy._(this._json);

  GoogleMonitoringAlertPolicy({
    required String combiner,
    required String displayName,
    bool? enabled,
    String? id,
    List<String>? notificationChannels,
    String? project,
    String? severity,
    Map<String, String>? userLabels,
    AlertStrategy? alertStrategy,
    required List<Conditions> conditions,
    Documentation? documentation,
    Timeouts? timeouts,
  }) {
    _json = {
      'combiner': combiner,
      'display_name': displayName,
      'enabled': ?enabled,
      'id': ?id,
      'notification_channels': ?notificationChannels,
      'project': ?project,
      'severity': ?severity,
      'user_labels': ?userLabels,
      'alert_strategy': ?alertStrategy?.toJson(),
      'conditions': conditions.map((e) => e.toJson()).toList(),
      'documentation': ?documentation?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleMonitoringAlertPolicy].
  static const SchemanticType<GoogleMonitoringAlertPolicy> $schema =
      _GoogleMonitoringAlertPolicyTypeFactory();

  String get combiner {
    return _json['combiner'] as String;
  }

  set combiner(String value) {
    _json['combiner'] = value;
  }

  String get displayName {
    return _json['display_name'] as String;
  }

  set displayName(String value) {
    _json['display_name'] = value;
  }

  bool? get enabled {
    return _json['enabled'] as bool?;
  }

  set enabled(bool? value) {
    if (value == null) {
      _json.remove('enabled');
    } else {
      _json['enabled'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  List<String>? get notificationChannels {
    return (_json['notification_channels'] as List?)?.cast<String>();
  }

  set notificationChannels(List<String>? value) {
    if (value == null) {
      _json.remove('notification_channels');
    } else {
      _json['notification_channels'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  String? get severity {
    return _json['severity'] as String?;
  }

  set severity(String? value) {
    if (value == null) {
      _json.remove('severity');
    } else {
      _json['severity'] = value;
    }
  }

  Map<String, String>? get userLabels {
    return (_json['user_labels'] as Map?)?.cast<String, String>();
  }

  set userLabels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('user_labels');
    } else {
      _json['user_labels'] = value;
    }
  }

  AlertStrategy? get alertStrategy {
    return _json['alert_strategy'] == null
        ? null
        : AlertStrategy.fromJson(
            _json['alert_strategy'] as Map<String, dynamic>,
          );
  }

  set alertStrategy(AlertStrategy? value) {
    if (value == null) {
      _json.remove('alert_strategy');
    } else {
      _json['alert_strategy'] = value;
    }
  }

  List<Conditions> get conditions {
    return (_json['conditions'] as List)
        .map((e) => Conditions.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set conditions(List<Conditions> value) {
    _json['conditions'] = value.toList();
  }

  Documentation? get documentation {
    return _json['documentation'] == null
        ? null
        : Documentation.fromJson(
            _json['documentation'] as Map<String, dynamic>,
          );
  }

  set documentation(Documentation? value) {
    if (value == null) {
      _json.remove('documentation');
    } else {
      _json['documentation'] = value;
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleMonitoringAlertPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleMonitoringAlertPolicyTypeFactory
    extends SchemanticType<GoogleMonitoringAlertPolicy> {
  const _GoogleMonitoringAlertPolicyTypeFactory();

  @override
  GoogleMonitoringAlertPolicy parse(Object? json) {
    return GoogleMonitoringAlertPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleMonitoringAlertPolicy',
    definition: $Schema
        .object(
          properties: {
            'combiner': $Schema.string(
              description:
                  'How to combine the results of multiple conditions to\ndetermine if an incident should be opened. Possible values: ["AND", "OR", "AND_WITH_MATCHING_RESOURCE"]',
            ),
            'display_name': $Schema.string(
              description:
                  'A short name or phrase used to identify the policy in\ndashboards, notifications, and incidents. To avoid confusion, don\'t use\nthe same display name for multiple policies in the same project. The\nname is limited to 512 Unicode characters.',
            ),
            'enabled': $Schema.boolean(
              description:
                  'Whether or not the policy is enabled. The default is true.',
            ),
            'id': $Schema.string(),
            'notification_channels': $Schema.list(
              description:
                  'Identifies the notification channels to which notifications should be\nsent when incidents are opened or closed or when new violations occur\non an already opened incident. Each element of this array corresponds\nto the name field in each of the NotificationChannel objects that are\nreturned from the notificationChannels.list method. The syntax of the\nentries in this field is\n\'projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]\'',
              items: $Schema.string(),
            ),
            'project': $Schema.string(),
            'severity': $Schema.string(
              description:
                  'The severity of an alert policy indicates how important incidents generated\nby that policy are. The severity level will be displayed on the Incident\ndetail page and in notifications. Possible values: ["CRITICAL", "ERROR", "WARNING"]',
            ),
            'user_labels': $Schema.object(
              description:
                  'This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter.',
              additionalProperties: $Schema.string(),
            ),
            'alert_strategy': $Schema.fromMap({
              '\$ref': r'#/$defs/AlertStrategy',
            }),
            'conditions': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Conditions'}),
            ),
            'documentation': $Schema.fromMap({
              '\$ref': r'#/$defs/Documentation',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['combiner', 'display_name', 'conditions'],
        )
        .value,
    dependencies: [
      AlertStrategy.$schema,
      Conditions.$schema,
      Documentation.$schema,
      Timeouts.$schema,
    ],
  );
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_alert`.
const Set<String> _awsCloudwatchomniAlertSensitive = <String>{};

/// Typed helper for the `notification_rule` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertNotificationRule {
  const CloudwatchomniAlertNotificationRule({this.target, this.trigger});

  final List<CloudwatchomniAlertTarget>? target;

  final List<CloudwatchomniAlertTrigger>? trigger;

  @internal
  Map<String, Object?> encode() => {
    if (target != null) 'target': [for (final e in target!) e.encode()],
    if (trigger != null) 'trigger': [for (final e in trigger!) e.encode()],
  };
}

/// Typed helper for the `notification_rule.target` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertTarget {
  const CloudwatchomniAlertTarget({
    required this.arn,
    this.metadata,
    required this.type,
  });

  final TfArg<String> arn;

  final TfArg<Map<String, String>>? metadata;

  final CloudwatchomniAlertType type;

  @internal
  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CloudwatchomniAlertType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertType.variable(String name) : this._(TfArg.variable(name));
  CloudwatchomniAlertType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertType.arg(TfArg<String> arg) : this._(arg);

  static const sns = CloudwatchomniAlertType._(TfArgLiteral('sns'));
  static const slack = CloudwatchomniAlertType._(TfArgLiteral('slack'));
  static const pagerduty = CloudwatchomniAlertType._(TfArgLiteral('pagerduty'));

  static const List<CloudwatchomniAlertType> values = [sns, slack, pagerduty];
}

/// Typed helper for the `notification_rule.trigger` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertTrigger {
  const CloudwatchomniAlertTrigger({this.stateValues});

  final EnumList<CloudwatchomniAlertStateValues>? stateValues;

  @internal
  Map<String, Object?> encode() => {'state_values': ?stateValues?.toTfJson()};
}

/// `state_values` — derived from the provider schema description.
extension type const CloudwatchomniAlertStateValues._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertStateValues.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAlertStateValues.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertStateValues.arg(TfArg<String> arg) : this._(arg);

  static const ok = CloudwatchomniAlertStateValues._(TfArgLiteral('OK'));
  static const warning = CloudwatchomniAlertStateValues._(
    TfArgLiteral('WARNING'),
  );
  static const critical = CloudwatchomniAlertStateValues._(
    TfArgLiteral('CRITICAL'),
  );
  static const nodata = CloudwatchomniAlertStateValues._(
    TfArgLiteral('NODATA'),
  );

  static const List<CloudwatchomniAlertStateValues> values = [
    ok,
    warning,
    critical,
    nodata,
  ];
}

/// Typed helper for the `rule` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertRule {
  const CloudwatchomniAlertRule({this.telemetryRule});

  final List<CloudwatchomniAlertTelemetryRule>? telemetryRule;

  @internal
  Map<String, Object?> encode() => {
    if (telemetryRule != null)
      'telemetry_rule': [for (final e in telemetryRule!) e.encode()],
  };
}

/// Typed helper for the `rule.telemetry_rule` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertTelemetryRule {
  const CloudwatchomniAlertTelemetryRule({
    this.condition,
    this.evaluation,
    this.noData,
    this.query,
  });

  final List<CloudwatchomniAlertCondition>? condition;

  final List<CloudwatchomniAlertEvaluation>? evaluation;

  final List<CloudwatchomniAlertNoData>? noData;

  final List<CloudwatchomniAlertQuery>? query;

  @internal
  Map<String, Object?> encode() => {
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (evaluation != null)
      'evaluation': [for (final e in evaluation!) e.encode()],
    if (noData != null) 'no_data': [for (final e in noData!) e.encode()],
    if (query != null) 'query': [for (final e in query!) e.encode()],
  };
}

/// Typed helper for the `rule.telemetry_rule.condition` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertCondition {
  const CloudwatchomniAlertCondition({
    required this.comparator,
    this.criticalThreshold,
    this.thresholdField,
    required this.thresholdMode,
    this.warningThreshold,
  });

  final CloudwatchomniAlertComparator comparator;

  final TfArg<num>? criticalThreshold;

  final TfArg<String>? thresholdField;

  final CloudwatchomniAlertThresholdMode thresholdMode;

  final TfArg<num>? warningThreshold;

  @internal
  Map<String, Object?> encode() => {
    'comparator': comparator.toTfJson(),
    'critical_threshold': ?criticalThreshold?.toTfJson(),
    'threshold_field': ?thresholdField?.toTfJson(),
    'threshold_mode': thresholdMode.toTfJson(),
    'warning_threshold': ?warningThreshold?.toTfJson(),
  };
}

/// `comparator` — derived from the provider schema description.
extension type const CloudwatchomniAlertComparator._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertComparator.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAlertComparator.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertComparator.arg(TfArg<String> arg) : this._(arg);

  static const gt = CloudwatchomniAlertComparator._(TfArgLiteral('GT'));
  static const lt = CloudwatchomniAlertComparator._(TfArgLiteral('LT'));
  static const gte = CloudwatchomniAlertComparator._(TfArgLiteral('GTE'));
  static const lte = CloudwatchomniAlertComparator._(TfArgLiteral('LTE'));

  static const List<CloudwatchomniAlertComparator> values = [gt, lt, gte, lte];
}

/// `threshold_mode` — derived from the provider schema description.
extension type const CloudwatchomniAlertThresholdMode._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertThresholdMode.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAlertThresholdMode.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertThresholdMode.arg(TfArg<String> arg) : this._(arg);

  static const countOfResults = CloudwatchomniAlertThresholdMode._(
    TfArgLiteral('COUNT_OF_RESULTS'),
  );
  static const fieldValue = CloudwatchomniAlertThresholdMode._(
    TfArgLiteral('FIELD_VALUE'),
  );

  static const List<CloudwatchomniAlertThresholdMode> values = [
    countOfResults,
    fieldValue,
  ];
}

/// Typed helper for the `rule.telemetry_rule.evaluation` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertEvaluation {
  const CloudwatchomniAlertEvaluation({
    required this.intervalSeconds,
    this.pendingDurationSeconds,
    this.recoveryDurationSeconds,
  });

  final TfArg<num> intervalSeconds;

  final TfArg<num>? pendingDurationSeconds;

  final TfArg<num>? recoveryDurationSeconds;

  @internal
  Map<String, Object?> encode() => {
    'interval_seconds': intervalSeconds.toTfJson(),
    'pending_duration_seconds': ?pendingDurationSeconds?.toTfJson(),
    'recovery_duration_seconds': ?recoveryDurationSeconds?.toTfJson(),
  };
}

/// Typed helper for the `rule.telemetry_rule.no_data` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertNoData {
  const CloudwatchomniAlertNoData({required this.treatAs});

  final CloudwatchomniAlertTreatAs treatAs;

  @internal
  Map<String, Object?> encode() => {'treat_as': treatAs.toTfJson()};
}

/// `treat_as` — derived from the provider schema description.
extension type const CloudwatchomniAlertTreatAs._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertTreatAs.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAlertTreatAs.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertTreatAs.arg(TfArg<String> arg) : this._(arg);

  static const ok = CloudwatchomniAlertTreatAs._(TfArgLiteral('OK'));
  static const warning = CloudwatchomniAlertTreatAs._(TfArgLiteral('WARNING'));
  static const critical = CloudwatchomniAlertTreatAs._(
    TfArgLiteral('CRITICAL'),
  );
  static const nodata = CloudwatchomniAlertTreatAs._(TfArgLiteral('NODATA'));

  static const List<CloudwatchomniAlertTreatAs> values = [
    ok,
    warning,
    critical,
    nodata,
  ];
}

/// Typed helper for the `rule.telemetry_rule.query` block of
/// `aws_cloudwatchomni_alert` (derived from provider schema).
@immutable
final class CloudwatchomniAlertQuery {
  const CloudwatchomniAlertQuery({
    required this.expression,
    required this.language,
  });

  final TfArg<String> expression;

  final CloudwatchomniAlertLanguage language;

  @internal
  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// `language` — derived from the provider schema description.
extension type const CloudwatchomniAlertLanguage._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAlertLanguage.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAlertLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAlertLanguage.arg(TfArg<String> arg) : this._(arg);

  static const sql = CloudwatchomniAlertLanguage._(TfArgLiteral('SQL'));
  static const promql = CloudwatchomniAlertLanguage._(TfArgLiteral('PROMQL'));

  static const List<CloudwatchomniAlertLanguage> values = [sql, promql];
}

/// Factory wrapper for `aws_cloudwatchomni_alert`.
final class AwsCloudwatchomniAlert extends Resource {
  static const String tfType = 'aws_cloudwatchomni_alert';

  AwsCloudwatchomniAlert(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? notificationsEnabled,
    required TfArg<String> profileId,
    TfArg<String>? region,
    required TfArg<String> spaceId,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchomniAlertNotificationRule>? notificationRule,
    List<CloudwatchomniAlertRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'notifications_enabled': ?notificationsEnabled,
           'profile_id': profileId,
           'region': ?region,
           'space_id': spaceId,
           'tags': ?tags,
           if (notificationRule != null)
             'notification_rule': TfArg.literal([
               for (final e in notificationRule) e.encode(),
             ]),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniAlertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniAlert>`.
  RefTo<AwsCloudwatchomniAlert> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `alert_id` attribute.
  TfRef<String> get alertId => TfRef.attribute<String>(this, 'alert_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `notifications_enabled` attribute.
  TfRef<bool> get notificationsEnabled =>
      TfRef.attribute<bool>(this, 'notifications_enabled');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

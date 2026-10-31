// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_autoscale_setting`.
const Set<String> _azurermMonitorAutoscaleSettingSensitive = <String>{};

/// Typed helper for the `notification` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingNotification {
  const MonitorAutoscaleSettingNotification({this.email, this.webhook});

  final MonitorAutoscaleSettingEmail? email;

  final List<MonitorAutoscaleSettingWebhook>? webhook;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.encode(),
    if (webhook != null) 'webhook': [for (final e in webhook!) e.encode()],
  };
}

/// Typed helper for the `notification.email` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingEmail {
  const MonitorAutoscaleSettingEmail({
    this.customEmails,
    this.sendToSubscriptionAdministrator,
    this.sendToSubscriptionCoAdministrator,
  });

  final TfArg<List<String>>? customEmails;

  final TfArg<bool>? sendToSubscriptionAdministrator;

  final TfArg<bool>? sendToSubscriptionCoAdministrator;

  @internal
  Map<String, Object?> encode() => {
    'custom_emails': ?customEmails?.toTfJson(),
    'send_to_subscription_administrator': ?sendToSubscriptionAdministrator
        ?.toTfJson(),
    'send_to_subscription_co_administrator': ?sendToSubscriptionCoAdministrator
        ?.toTfJson(),
  };
}

/// Typed helper for the `notification.webhook` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingWebhook {
  const MonitorAutoscaleSettingWebhook({
    this.properties,
    required this.serviceUri,
  });

  final TfArg<Map<String, String>>? properties;

  final TfArg<String> serviceUri;

  @internal
  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'service_uri': serviceUri.toTfJson(),
  };
}

/// Typed helper for the `predictive` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingPredictive {
  const MonitorAutoscaleSettingPredictive({
    this.lookAheadTime,
    required this.scaleMode,
  });

  final TfArg<String>? lookAheadTime;

  final MonitorAutoscaleSettingScaleMode scaleMode;

  @internal
  Map<String, Object?> encode() => {
    'look_ahead_time': ?lookAheadTime?.toTfJson(),
    'scale_mode': scaleMode.toTfJson(),
  };
}

/// `scale_mode` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingScaleMode._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingScaleMode.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingScaleMode.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingScaleMode.arg(TfArg<String> arg) : this._(arg);

  static const enabled = MonitorAutoscaleSettingScaleMode._(
    TfArgLiteral('Enabled'),
  );
  static const forecastonly = MonitorAutoscaleSettingScaleMode._(
    TfArgLiteral('ForecastOnly'),
  );

  static const List<MonitorAutoscaleSettingScaleMode> values = [
    enabled,
    forecastonly,
  ];
}

/// Typed helper for the `profile` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingProfile {
  const MonitorAutoscaleSettingProfile({
    required this.name,
    required this.capacity,
    this.fixedDate,
    this.recurrence,
    this.rule,
  });

  final TfArg<String> name;

  final MonitorAutoscaleSettingCapacity capacity;

  final MonitorAutoscaleSettingFixedDate? fixedDate;

  final MonitorAutoscaleSettingRecurrence? recurrence;

  final List<MonitorAutoscaleSettingRule>? rule;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'capacity': capacity.encode(),
    'fixed_date': ?fixedDate?.encode(),
    'recurrence': ?recurrence?.encode(),
    if (rule != null) 'rule': [for (final e in rule!) e.encode()],
  };
}

/// Typed helper for the `profile.capacity` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingCapacity {
  const MonitorAutoscaleSettingCapacity({
    required this.defaultCase,
    required this.maximum,
    required this.minimum,
  });

  final TfArg<num> defaultCase;

  final TfArg<num> maximum;

  final TfArg<num> minimum;

  @internal
  Map<String, Object?> encode() => {
    'default': defaultCase.toTfJson(),
    'maximum': maximum.toTfJson(),
    'minimum': minimum.toTfJson(),
  };
}

/// Typed helper for the `profile.fixed_date` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingFixedDate {
  const MonitorAutoscaleSettingFixedDate({
    required this.end,
    required this.start,
    this.timezone,
  });

  final TfArg<String> end;

  final TfArg<String> start;

  final TfArg<String>? timezone;

  @internal
  Map<String, Object?> encode() => {
    'end': end.toTfJson(),
    'start': start.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
  };
}

/// Typed helper for the `profile.recurrence` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingRecurrence {
  const MonitorAutoscaleSettingRecurrence({
    required this.days,
    required this.hours,
    required this.minutes,
    this.timezone,
  });

  final EnumList<MonitorAutoscaleSettingDays> days;

  final TfArg<List<num>> hours;

  final TfArg<List<num>> minutes;

  final TfArg<String>? timezone;

  @internal
  Map<String, Object?> encode() => {
    'days': days.toTfJson(),
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
  };
}

/// `days` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingDays._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingDays.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingDays.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingDays.arg(TfArg<String> arg) : this._(arg);

  static const monday = MonitorAutoscaleSettingDays._(TfArgLiteral('Monday'));
  static const tuesday = MonitorAutoscaleSettingDays._(TfArgLiteral('Tuesday'));
  static const wednesday = MonitorAutoscaleSettingDays._(
    TfArgLiteral('Wednesday'),
  );
  static const thursday = MonitorAutoscaleSettingDays._(
    TfArgLiteral('Thursday'),
  );
  static const friday = MonitorAutoscaleSettingDays._(TfArgLiteral('Friday'));
  static const saturday = MonitorAutoscaleSettingDays._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = MonitorAutoscaleSettingDays._(TfArgLiteral('Sunday'));

  static const List<MonitorAutoscaleSettingDays> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// Typed helper for the `profile.rule` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingRule {
  const MonitorAutoscaleSettingRule({
    required this.metricTrigger,
    required this.scaleAction,
  });

  final MonitorAutoscaleSettingMetricTrigger metricTrigger;

  final MonitorAutoscaleSettingScaleAction scaleAction;

  @internal
  Map<String, Object?> encode() => {
    'metric_trigger': metricTrigger.encode(),
    'scale_action': scaleAction.encode(),
  };
}

/// Typed helper for the `profile.rule.metric_trigger` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingMetricTrigger {
  const MonitorAutoscaleSettingMetricTrigger({
    this.divideByInstanceCount,
    required this.metricName,
    this.metricNamespace,
    required this.metricResourceId,
    required this.operator,
    required this.statistic,
    required this.threshold,
    required this.timeAggregation,
    required this.timeGrain,
    required this.timeWindow,
    this.dimensions,
  });

  final TfArg<bool>? divideByInstanceCount;

  final TfArg<String> metricName;

  final TfArg<String>? metricNamespace;

  final TfArg<String> metricResourceId;

  final MonitorAutoscaleSettingOperator operator;

  final MonitorAutoscaleSettingStatistic statistic;

  final TfArg<num> threshold;

  final MonitorAutoscaleSettingTimeAggregation timeAggregation;

  final TfArg<String> timeGrain;

  final TfArg<String> timeWindow;

  final List<MonitorAutoscaleSettingDimensions>? dimensions;

  @internal
  Map<String, Object?> encode() => {
    'divide_by_instance_count': ?divideByInstanceCount?.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'metric_namespace': ?metricNamespace?.toTfJson(),
    'metric_resource_id': metricResourceId.toTfJson(),
    'operator': operator.toTfJson(),
    'statistic': statistic.toTfJson(),
    'threshold': threshold.toTfJson(),
    'time_aggregation': timeAggregation.toTfJson(),
    'time_grain': timeGrain.toTfJson(),
    'time_window': timeWindow.toTfJson(),
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingOperator._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingOperator.arg(TfArg<String> arg) : this._(arg);

  static const equals = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('Equals'),
  );
  static const greaterthan = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('GreaterThanOrEqual'),
  );
  static const lessthan = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const notequals = MonitorAutoscaleSettingOperator._(
    TfArgLiteral('NotEquals'),
  );

  static const List<MonitorAutoscaleSettingOperator> values = [
    equals,
    greaterthan,
    greaterthanorequal,
    lessthan,
    lessthanorequal,
    notequals,
  ];
}

/// `statistic` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingStatistic._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingStatistic.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingStatistic.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingStatistic.arg(TfArg<String> arg) : this._(arg);

  static const average = MonitorAutoscaleSettingStatistic._(
    TfArgLiteral('Average'),
  );
  static const max = MonitorAutoscaleSettingStatistic._(TfArgLiteral('Max'));
  static const min = MonitorAutoscaleSettingStatistic._(TfArgLiteral('Min'));
  static const sum = MonitorAutoscaleSettingStatistic._(TfArgLiteral('Sum'));

  static const List<MonitorAutoscaleSettingStatistic> values = [
    average,
    max,
    min,
    sum,
  ];
}

/// `time_aggregation` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingTimeAggregation._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingTimeAggregation.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingTimeAggregation.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingTimeAggregation.arg(TfArg<String> arg)
    : this._(arg);

  static const average = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Average'),
  );
  static const count = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Count'),
  );
  static const last = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Last'),
  );
  static const maximum = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Maximum'),
  );
  static const minimum = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Minimum'),
  );
  static const total = MonitorAutoscaleSettingTimeAggregation._(
    TfArgLiteral('Total'),
  );

  static const List<MonitorAutoscaleSettingTimeAggregation> values = [
    average,
    count,
    last,
    maximum,
    minimum,
    total,
  ];
}

/// Typed helper for the `profile.rule.metric_trigger.dimensions` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingDimensions {
  const MonitorAutoscaleSettingDimensions({
    required this.name,
    required this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final MonitorAutoscaleSettingDimensionsOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingDimensionsOperator._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorAutoscaleSettingDimensionsOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingDimensionsOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingDimensionsOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = MonitorAutoscaleSettingDimensionsOperator._(
    TfArgLiteral('Equals'),
  );
  static const notequals = MonitorAutoscaleSettingDimensionsOperator._(
    TfArgLiteral('NotEquals'),
  );

  static const List<MonitorAutoscaleSettingDimensionsOperator> values = [
    equals,
    notequals,
  ];
}

/// Typed helper for the `profile.rule.scale_action` block of
/// `azurerm_monitor_autoscale_setting` (derived from provider schema).
@immutable
final class MonitorAutoscaleSettingScaleAction {
  const MonitorAutoscaleSettingScaleAction({
    required this.cooldown,
    required this.direction,
    required this.type,
    required this.value,
  });

  final TfArg<String> cooldown;

  final MonitorAutoscaleSettingDirection direction;

  final MonitorAutoscaleSettingType type;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'cooldown': cooldown.toTfJson(),
    'direction': direction.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingDirection._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingDirection.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingDirection.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingDirection.arg(TfArg<String> arg) : this._(arg);

  static const decrease = MonitorAutoscaleSettingDirection._(
    TfArgLiteral('Decrease'),
  );
  static const increase = MonitorAutoscaleSettingDirection._(
    TfArgLiteral('Increase'),
  );

  static const List<MonitorAutoscaleSettingDirection> values = [
    decrease,
    increase,
  ];
}

/// `type` — derived from the provider schema description.
extension type const MonitorAutoscaleSettingType._(TfArg<String> _)
    implements TfArg<String> {
  MonitorAutoscaleSettingType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorAutoscaleSettingType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorAutoscaleSettingType.arg(TfArg<String> arg) : this._(arg);

  static const changecount = MonitorAutoscaleSettingType._(
    TfArgLiteral('ChangeCount'),
  );
  static const exactcount = MonitorAutoscaleSettingType._(
    TfArgLiteral('ExactCount'),
  );
  static const percentchangecount = MonitorAutoscaleSettingType._(
    TfArgLiteral('PercentChangeCount'),
  );
  static const serviceallowednextvalue = MonitorAutoscaleSettingType._(
    TfArgLiteral('ServiceAllowedNextValue'),
  );

  static const List<MonitorAutoscaleSettingType> values = [
    changecount,
    exactcount,
    percentchangecount,
    serviceallowednextvalue,
  ];
}

/// Factory wrapper for `azurerm_monitor_autoscale_setting`.
final class AzurermMonitorAutoscaleSetting extends Resource {
  static const String tfType = 'azurerm_monitor_autoscale_setting';

  AzurermMonitorAutoscaleSetting(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetResourceId,
    MonitorAutoscaleSettingNotification? notification,
    MonitorAutoscaleSettingPredictive? predictive,
    required List<MonitorAutoscaleSettingProfile> profile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'target_resource_id': targetResourceId,
           if (notification != null)
             'notification': TfArg.literal(notification.encode()),
           if (predictive != null)
             'predictive': TfArg.literal(predictive.encode()),
           'profile': TfArg.literal([for (final e in profile) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorAutoscaleSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorAutoscaleSetting>`.
  RefTo<AzurermMonitorAutoscaleSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}

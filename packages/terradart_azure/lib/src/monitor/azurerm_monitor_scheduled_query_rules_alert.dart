// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_scheduled_query_rules_alert`.
const Set<String> _azurermMonitorScheduledQueryRulesAlertSensitive = <String>{};

/// Monitor Scheduled Query Rules Alert Query enum for `query_type`.
extension type const MonitorScheduledQueryRulesAlertQueryType._(TfArg<String> _)
    implements TfArg<String> {
  MonitorScheduledQueryRulesAlertQueryType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertQueryType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertQueryType.arg(TfArg<String> arg)
    : this._(arg);

  static const resultcount = MonitorScheduledQueryRulesAlertQueryType._(
    TfArgLiteral('ResultCount'),
  );
  static const number = MonitorScheduledQueryRulesAlertQueryType._(
    TfArgLiteral('Number'),
  );

  static const List<MonitorScheduledQueryRulesAlertQueryType> values = [
    resultcount,
    number,
  ];
}

/// At most one of `auto_mitigation_enabled`, `throttling` on `azurerm_monitor_scheduled_query_rules_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.autoMitigationEnabled(...)`.
sealed class MonitorScheduledQueryRulesAlertResolution {
  const MonitorScheduledQueryRulesAlertResolution();

  /// Sets `auto_mitigation_enabled`.
  const factory MonitorScheduledQueryRulesAlertResolution.autoMitigationEnabled(
    TfArg<bool> autoMitigationEnabled,
  ) = MonitorScheduledQueryRulesAlertResolutionAutoMitigationEnabled;

  /// Sets `throttling`.
  const factory MonitorScheduledQueryRulesAlertResolution.throttling(
    TfArg<num> throttling,
  ) = MonitorScheduledQueryRulesAlertResolutionThrottling;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitorScheduledQueryRulesAlertResolution.autoMitigationEnabled] choice: sets `auto_mitigation_enabled`.
final class MonitorScheduledQueryRulesAlertResolutionAutoMitigationEnabled
    extends MonitorScheduledQueryRulesAlertResolution {
  const MonitorScheduledQueryRulesAlertResolutionAutoMitigationEnabled(
    this.autoMitigationEnabled,
  );

  final TfArg<bool> autoMitigationEnabled;

  @internal
  @override
  String get blockKey => 'auto_mitigation_enabled';

  @internal
  @override
  Map<String, Object?> encode() => {
    'auto_mitigation_enabled': autoMitigationEnabled.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'auto_mitigation_enabled': autoMitigationEnabled,
  };
}

/// The [MonitorScheduledQueryRulesAlertResolution.throttling] choice: sets `throttling`.
final class MonitorScheduledQueryRulesAlertResolutionThrottling
    extends MonitorScheduledQueryRulesAlertResolution {
  const MonitorScheduledQueryRulesAlertResolutionThrottling(this.throttling);

  final TfArg<num> throttling;

  @internal
  @override
  String get blockKey => 'throttling';

  @internal
  @override
  Map<String, Object?> encode() => {'throttling': throttling.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'throttling': throttling};
}

/// Typed helper for the `action` block of
/// `azurerm_monitor_scheduled_query_rules_alert` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertAction {
  const MonitorScheduledQueryRulesAlertAction({
    required this.actionGroup,
    this.customWebhookPayload,
    this.emailSubject,
  });

  final TfArg<List<String>> actionGroup;

  final TfArg<String>? customWebhookPayload;

  final TfArg<String>? emailSubject;

  @internal
  Map<String, Object?> encode() => {
    'action_group': actionGroup.toTfJson(),
    'custom_webhook_payload': ?customWebhookPayload?.toTfJson(),
    'email_subject': ?emailSubject?.toTfJson(),
  };
}

/// Typed helper for the `trigger` block of
/// `azurerm_monitor_scheduled_query_rules_alert` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertTrigger {
  const MonitorScheduledQueryRulesAlertTrigger({
    required this.operator,
    required this.threshold,
    this.metricTrigger,
  });

  final MonitorScheduledQueryRulesAlertOperator operator;

  final TfArg<num> threshold;

  final MonitorScheduledQueryRulesAlertMetricTrigger? metricTrigger;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'threshold': threshold.toTfJson(),
    'metric_trigger': ?metricTrigger?.encode(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorScheduledQueryRulesAlertOperator._(TfArg<String> _)
    implements TfArg<String> {
  MonitorScheduledQueryRulesAlertOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const greaterthan = MonitorScheduledQueryRulesAlertOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal = MonitorScheduledQueryRulesAlertOperator._(
    TfArgLiteral('GreaterThanOrEqual'),
  );
  static const lessthan = MonitorScheduledQueryRulesAlertOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal = MonitorScheduledQueryRulesAlertOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const equal = MonitorScheduledQueryRulesAlertOperator._(
    TfArgLiteral('Equal'),
  );

  static const List<MonitorScheduledQueryRulesAlertOperator> values = [
    greaterthan,
    greaterthanorequal,
    lessthan,
    lessthanorequal,
    equal,
  ];
}

/// Typed helper for the `trigger.metric_trigger` block of
/// `azurerm_monitor_scheduled_query_rules_alert` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertMetricTrigger {
  const MonitorScheduledQueryRulesAlertMetricTrigger({
    this.metricColumn,
    required this.metricTriggerType,
    required this.operator,
    required this.threshold,
  });

  final TfArg<String>? metricColumn;

  final MonitorScheduledQueryRulesAlertMetricTriggerType metricTriggerType;

  final MonitorScheduledQueryRulesAlertOperator operator;

  final TfArg<num> threshold;

  @internal
  Map<String, Object?> encode() => {
    'metric_column': ?metricColumn?.toTfJson(),
    'metric_trigger_type': metricTriggerType.toTfJson(),
    'operator': operator.toTfJson(),
    'threshold': threshold.toTfJson(),
  };
}

/// `metric_trigger_type` — derived from the provider schema description.
extension type const MonitorScheduledQueryRulesAlertMetricTriggerType._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertMetricTriggerType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertMetricTriggerType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertMetricTriggerType.arg(TfArg<String> arg)
    : this._(arg);

  static const consecutive = MonitorScheduledQueryRulesAlertMetricTriggerType._(
    TfArgLiteral('Consecutive'),
  );
  static const total = MonitorScheduledQueryRulesAlertMetricTriggerType._(
    TfArgLiteral('Total'),
  );

  static const List<MonitorScheduledQueryRulesAlertMetricTriggerType> values = [
    consecutive,
    total,
  ];
}

/// Factory wrapper for `azurerm_monitor_scheduled_query_rules_alert`.
final class AzurermMonitorScheduledQueryRulesAlert extends Resource {
  static const String tfType = 'azurerm_monitor_scheduled_query_rules_alert';

  AzurermMonitorScheduledQueryRulesAlert(
    super.localName, {
    TfArg<List<String>>? authorizedResourceIds,
    MonitorScheduledQueryRulesAlertResolution? resolution,
    required TfArg<String> dataSourceId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<num> frequency,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> query,
    MonitorScheduledQueryRulesAlertQueryType? queryType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? severity,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> timeWindow,
    required MonitorScheduledQueryRulesAlertAction action,
    required MonitorScheduledQueryRulesAlertTrigger trigger,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorized_resource_ids': ?authorizedResourceIds,
           ...?resolution?.argMap,
           'data_source_id': dataSourceId,
           'description': ?description,
           'enabled': ?enabled,
           'frequency': frequency,
           'location': location,
           'name': name,
           'query': query,
           'query_type': ?queryType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'severity': ?severity,
           'tags': ?tags,
           'time_window': timeWindow,
           'action': TfArg.literal(action.encode()),
           'trigger': TfArg.literal(trigger.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorScheduledQueryRulesAlertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorScheduledQueryRulesAlert>`.
  RefTo<AzurermMonitorScheduledQueryRulesAlert> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorized_resource_ids` attribute.
  TfRef<List<String>> get authorizedResourceIds =>
      TfRef.attribute<List<String>>(this, 'authorized_resource_ids');

  /// Reference to `auto_mitigation_enabled` attribute.
  TfRef<bool> get autoMitigationEnabled =>
      TfRef.attribute<bool>(this, 'auto_mitigation_enabled');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frequency` attribute.
  TfRef<num> get frequency => TfRef.attribute<num>(this, 'frequency');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');

  /// Reference to `query_type` attribute.
  TfRef<String> get queryType => TfRef.attribute<String>(this, 'query_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `severity` attribute.
  TfRef<num> get severity => TfRef.attribute<num>(this, 'severity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throttling` attribute.
  TfRef<num> get throttling => TfRef.attribute<num>(this, 'throttling');

  /// Reference to `time_window` attribute.
  TfRef<num> get timeWindow => TfRef.attribute<num>(this, 'time_window');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_scheduled_query_rules_log`.
const Set<String> _azurermMonitorScheduledQueryRulesLogSensitive = <String>{};

/// Typed helper for the `criteria` block of
/// `azurerm_monitor_scheduled_query_rules_log` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesLogCriteria {
  const MonitorScheduledQueryRulesLogCriteria({
    required this.metricName,
    required this.dimension,
  });

  final TfArg<String> metricName;

  final List<MonitorScheduledQueryRulesLogDimension> dimension;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'dimension': [for (final e in dimension) e.encode()],
  };
}

/// Typed helper for the `criteria.dimension` block of
/// `azurerm_monitor_scheduled_query_rules_log` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesLogDimension {
  const MonitorScheduledQueryRulesLogDimension({
    required this.name,
    this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final MonitorScheduledQueryRulesLogOperator? operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorScheduledQueryRulesLogOperator._(TfArg<String> _)
    implements TfArg<String> {
  MonitorScheduledQueryRulesLogOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesLogOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesLogOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const include = MonitorScheduledQueryRulesLogOperator._(
    TfArgLiteral('Include'),
  );

  static const List<MonitorScheduledQueryRulesLogOperator> values = [include];
}

/// Factory wrapper for `azurerm_monitor_scheduled_query_rules_log`.
final class AzurermMonitorScheduledQueryRulesLog extends Resource {
  static const String tfType = 'azurerm_monitor_scheduled_query_rules_log';

  AzurermMonitorScheduledQueryRulesLog(
    super.localName, {
    TfArg<List<String>>? authorizedResourceIds,
    required TfArg<String> dataSourceId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required MonitorScheduledQueryRulesLogCriteria criteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorized_resource_ids': ?authorizedResourceIds,
           'data_source_id': dataSourceId,
           'description': ?description,
           'enabled': ?enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'criteria': TfArg.literal(criteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorScheduledQueryRulesLogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorScheduledQueryRulesLog>`.
  RefTo<AzurermMonitorScheduledQueryRulesLog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorized_resource_ids` attribute.
  TfRef<List<String>> get authorizedResourceIds =>
      TfRef.attribute<List<String>>(this, 'authorized_resource_ids');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

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
}

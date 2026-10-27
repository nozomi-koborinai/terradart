// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monitor/azurerm_monitor_scheduled_query_rules_alert.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_scheduled_query_rules_alert`.
const Set<String> _azurermMonitorScheduledQueryRulesAlertSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_scheduled_query_rules_alert`.
final class DataAzurermMonitorScheduledQueryRulesAlert extends Data {
  static const String tfType = 'azurerm_monitor_scheduled_query_rules_alert';

  DataAzurermMonitorScheduledQueryRulesAlert(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorScheduledQueryRulesAlertSensitive;

  /// A reference to the `azurerm_monitor_scheduled_query_rules_alert` this data source reads, for
  /// arguments typed `RefTo<AzurermMonitorScheduledQueryRulesAlert>`.
  RefTo<AzurermMonitorScheduledQueryRulesAlert> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<List<Map<String, Object?>>> get action =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'action');

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

  /// Reference to `frequency` attribute.
  TfRef<num> get frequency => TfRef.attribute<num>(this, 'frequency');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');

  /// Reference to `query_type` attribute.
  TfRef<String> get queryType => TfRef.attribute<String>(this, 'query_type');

  /// Reference to `severity` attribute.
  TfRef<num> get severity => TfRef.attribute<num>(this, 'severity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throttling` attribute.
  TfRef<num> get throttling => TfRef.attribute<num>(this, 'throttling');

  /// Reference to `time_window` attribute.
  TfRef<num> get timeWindow => TfRef.attribute<num>(this, 'time_window');

  /// Reference to `trigger` attribute.
  TfRef<List<Map<String, Object?>>> get trigger =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trigger');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

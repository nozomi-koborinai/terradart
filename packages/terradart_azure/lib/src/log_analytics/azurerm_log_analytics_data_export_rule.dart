// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_data_export_rule`.
const Set<String> _azurermLogAnalyticsDataExportRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_log_analytics_data_export_rule`.
final class AzurermLogAnalyticsDataExportRule extends Resource {
  static const String tfType = 'azurerm_log_analytics_data_export_rule';

  AzurermLogAnalyticsDataExportRule(
    super.localName, {
    required TfArg<String> destinationResourceId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> tableNames,
    required TfArg<String> workspaceResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_resource_id': destinationResourceId,
           'enabled': ?enabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'table_names': tableNames,
           'workspace_resource_id': workspaceResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsDataExportRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsDataExportRule>`.
  RefTo<AzurermLogAnalyticsDataExportRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `export_rule_id` attribute.
  TfRef<String> get exportRuleId =>
      TfRef.attribute<String>(this, 'export_rule_id');

  /// Reference to `destination_resource_id` attribute.
  TfRef<String> get destinationResourceId =>
      TfRef.attribute<String>(this, 'destination_resource_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `table_names` attribute.
  TfRef<List<String>> get tableNames =>
      TfRef.attribute<List<String>>(this, 'table_names');

  /// Reference to `workspace_resource_id` attribute.
  TfRef<String> get workspaceResourceId =>
      TfRef.attribute<String>(this, 'workspace_resource_id');
}

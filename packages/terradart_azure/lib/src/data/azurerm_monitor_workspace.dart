// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monitor/azurerm_monitor_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_workspace`.
const Set<String> _azurermMonitorWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_workspace`.
final class DataAzurermMonitorWorkspace extends Data {
  static const String tfType = 'azurerm_monitor_workspace';

  DataAzurermMonitorWorkspace(
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
  Set<String> get sensitiveFields => _azurermMonitorWorkspaceSensitive;

  /// A reference to the `azurerm_monitor_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermMonitorWorkspace>`.
  RefTo<AzurermMonitorWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_data_collection_endpoint_id` attribute.
  TfRef<String> get defaultDataCollectionEndpointId =>
      TfRef.attribute<String>(this, 'default_data_collection_endpoint_id');

  /// Reference to `default_data_collection_rule_id` attribute.
  TfRef<String> get defaultDataCollectionRuleId =>
      TfRef.attribute<String>(this, 'default_data_collection_rule_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `query_endpoint` attribute.
  TfRef<String> get queryEndpoint =>
      TfRef.attribute<String>(this, 'query_endpoint');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

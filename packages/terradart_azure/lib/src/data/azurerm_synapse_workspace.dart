// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../synapse/azurerm_synapse_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_synapse_workspace`.
const Set<String> _azurermSynapseWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_workspace`.
final class DataAzurermSynapseWorkspace extends Data {
  static const String tfType = 'azurerm_synapse_workspace';

  DataAzurermSynapseWorkspace(
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
  Set<String> get sensitiveFields => _azurermSynapseWorkspaceSensitive;

  /// A reference to the `azurerm_synapse_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermSynapseWorkspace>`.
  RefTo<AzurermSynapseWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connectivity_endpoints` attribute.
  TfRef<Map<String, String>> get connectivityEndpoints =>
      TfRef.attribute<Map<String, String>>(this, 'connectivity_endpoints');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

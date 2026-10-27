// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_manager_connectivity_configuration.dart';

/// Sensitive field paths for `azurerm_network_manager_connectivity_configuration`.
const Set<String> _azurermNetworkManagerConnectivityConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_manager_connectivity_configuration`.
final class DataAzurermNetworkManagerConnectivityConfiguration extends Data {
  static const String tfType =
      'azurerm_network_manager_connectivity_configuration';

  DataAzurermNetworkManagerConnectivityConfiguration(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'network_manager_id': networkManagerId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerConnectivityConfigurationSensitive;

  /// A reference to the `azurerm_network_manager_connectivity_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkManagerConnectivityConfiguration>`.
  RefTo<AzurermNetworkManagerConnectivityConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `applies_to_group` attribute.
  TfRef<List<Map<String, Object?>>> get appliesToGroup =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'applies_to_group');

  /// Reference to `connected_group_address_overlap_enabled` attribute.
  TfRef<bool> get connectedGroupAddressOverlapEnabled =>
      TfRef.attribute<bool>(this, 'connected_group_address_overlap_enabled');

  /// Reference to `connected_group_private_endpoints_scale` attribute.
  TfRef<String> get connectedGroupPrivateEndpointsScale =>
      TfRef.attribute<String>(this, 'connected_group_private_endpoints_scale');

  /// Reference to `connectivity_topology` attribute.
  TfRef<String> get connectivityTopology =>
      TfRef.attribute<String>(this, 'connectivity_topology');

  /// Reference to `delete_existing_peering_enabled` attribute.
  TfRef<bool> get deleteExistingPeeringEnabled =>
      TfRef.attribute<bool>(this, 'delete_existing_peering_enabled');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `global_mesh_enabled` attribute.
  TfRef<bool> get globalMeshEnabled =>
      TfRef.attribute<bool>(this, 'global_mesh_enabled');

  /// Reference to `hub` attribute.
  TfRef<List<Map<String, Object?>>> get hub =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hub');

  /// Reference to `peering_enforcement_enabled` attribute.
  TfRef<bool> get peeringEnforcementEnabled =>
      TfRef.attribute<bool>(this, 'peering_enforcement_enabled');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}

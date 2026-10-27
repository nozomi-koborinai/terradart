// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_connectivity_configuration`.
const Set<String> _azurermNetworkManagerConnectivityConfigurationSensitive =
    <String>{};

/// Network Manager Connectivity Configuration Connected Group Private Endpoints enum for `connected_group_private_endpoints_scale`.
extension type const NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const highscale =
      NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale._(
        TfArgLiteral('HighScale'),
      );
  static const standard =
      NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale._(
        TfArgLiteral('Standard'),
      );

  static const List<
    NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale
  >
  values = [highscale, standard];
}

/// Network Manager Connectivity Configuration Connectivity enum for `connectivity_topology`.
extension type const NetworkManagerConnectivityConfigurationConnectivityTopology._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerConnectivityConfigurationConnectivityTopology.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagerConnectivityConfigurationConnectivityTopology.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerConnectivityConfigurationConnectivityTopology.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const hubandspoke =
      NetworkManagerConnectivityConfigurationConnectivityTopology._(
        TfArgLiteral('HubAndSpoke'),
      );
  static const mesh =
      NetworkManagerConnectivityConfigurationConnectivityTopology._(
        TfArgLiteral('Mesh'),
      );

  static const List<NetworkManagerConnectivityConfigurationConnectivityTopology>
  values = [hubandspoke, mesh];
}

/// Typed helper for the `applies_to_group` block of
/// `azurerm_network_manager_connectivity_configuration` (derived from provider schema).
@immutable
final class NetworkManagerConnectivityConfigurationAppliesToGroup {
  const NetworkManagerConnectivityConfigurationAppliesToGroup({
    this.globalMeshEnabled,
    required this.groupConnectivity,
    required this.networkGroupId,
    this.useHubGateway,
  });

  final TfArg<bool>? globalMeshEnabled;

  final NetworkManagerConnectivityConfigurationGroupConnectivity
  groupConnectivity;

  final TfArg<String> networkGroupId;

  final TfArg<bool>? useHubGateway;

  @internal
  Map<String, Object?> encode() => {
    'global_mesh_enabled': ?globalMeshEnabled?.toTfJson(),
    'group_connectivity': groupConnectivity.toTfJson(),
    'network_group_id': networkGroupId.toTfJson(),
    'use_hub_gateway': ?useHubGateway?.toTfJson(),
  };
}

/// `group_connectivity` — derived from the provider schema description.
extension type const NetworkManagerConnectivityConfigurationGroupConnectivity._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerConnectivityConfigurationGroupConnectivity.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerConnectivityConfigurationGroupConnectivity.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerConnectivityConfigurationGroupConnectivity.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const directlyconnected =
      NetworkManagerConnectivityConfigurationGroupConnectivity._(
        TfArgLiteral('DirectlyConnected'),
      );
  static const none =
      NetworkManagerConnectivityConfigurationGroupConnectivity._(
        TfArgLiteral('None'),
      );

  static const List<NetworkManagerConnectivityConfigurationGroupConnectivity>
  values = [directlyconnected, none];
}

/// Typed helper for the `hub` block of
/// `azurerm_network_manager_connectivity_configuration` (derived from provider schema).
@immutable
final class NetworkManagerConnectivityConfigurationHub {
  const NetworkManagerConnectivityConfigurationHub({
    required this.resourceId,
    required this.resourceType,
  });

  final TfArg<String> resourceId;

  final TfArg<String> resourceType;

  @internal
  Map<String, Object?> encode() => {
    'resource_id': resourceId.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_manager_connectivity_configuration`.
final class AzurermNetworkManagerConnectivityConfiguration extends Resource {
  static const String tfType =
      'azurerm_network_manager_connectivity_configuration';

  AzurermNetworkManagerConnectivityConfiguration(
    super.localName, {
    TfArg<bool>? connectedGroupAddressOverlapEnabled,
    NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale?
    connectedGroupPrivateEndpointsScale,
    required NetworkManagerConnectivityConfigurationConnectivityTopology
    connectivityTopology,
    TfArg<bool>? deleteExistingPeeringEnabled,
    TfArg<String>? description,
    TfArg<bool>? globalMeshEnabled,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    TfArg<bool>? peeringEnforcementEnabled,
    required List<NetworkManagerConnectivityConfigurationAppliesToGroup>
    appliesToGroup,
    NetworkManagerConnectivityConfigurationHub? hub,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connected_group_address_overlap_enabled':
               ?connectedGroupAddressOverlapEnabled,
           'connected_group_private_endpoints_scale':
               ?connectedGroupPrivateEndpointsScale,
           'connectivity_topology': connectivityTopology,
           'delete_existing_peering_enabled': ?deleteExistingPeeringEnabled,
           'description': ?description,
           'global_mesh_enabled': ?globalMeshEnabled,
           'name': name,
           'network_manager_id': networkManagerId,
           'peering_enforcement_enabled': ?peeringEnforcementEnabled,
           'applies_to_group': TfArg.literal([
             for (final e in appliesToGroup) e.encode(),
           ]),
           if (hub != null) 'hub': TfArg.literal(hub.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerConnectivityConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerConnectivityConfiguration>`.
  RefTo<AzurermNetworkManagerConnectivityConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `peering_enforcement_enabled` attribute.
  TfRef<bool> get peeringEnforcementEnabled =>
      TfRef.attribute<bool>(this, 'peering_enforcement_enabled');
}

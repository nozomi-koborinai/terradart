// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_profile`.
const Set<String> _azurermNetworkProfileSensitive = <String>{};

/// Typed helper for the `container_network_interface` block of
/// `azurerm_network_profile` (derived from provider schema).
@immutable
final class NetworkProfileContainerNetworkInterface {
  const NetworkProfileContainerNetworkInterface({
    required this.name,
    required this.ipConfiguration,
  });

  final TfArg<String> name;

  final List<NetworkProfileIpConfiguration> ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'ip_configuration': [for (final e in ipConfiguration) e.encode()],
  };
}

/// Typed helper for the `container_network_interface.ip_configuration` block of
/// `azurerm_network_profile` (derived from provider schema).
@immutable
final class NetworkProfileIpConfiguration {
  const NetworkProfileIpConfiguration({
    required this.name,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_profile`.
final class AzurermNetworkProfile extends Resource {
  static const String tfType = 'azurerm_network_profile';

  AzurermNetworkProfile(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required NetworkProfileContainerNetworkInterface containerNetworkInterface,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'container_network_interface': TfArg.literal(
             containerNetworkInterface.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkProfile>`.
  RefTo<AzurermNetworkProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_network_interface_ids` attribute.
  TfRef<List<String>> get containerNetworkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'container_network_interface_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_zone_virtual_network_link.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_zone_virtual_network_link`.
const Set<String> _azurermPrivateDnsZoneVirtualNetworkLinkSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_zone_virtual_network_link`.
final class DataAzurermPrivateDnsZoneVirtualNetworkLink extends Data {
  static const String tfType = 'azurerm_private_dns_zone_virtual_network_link';

  DataAzurermPrivateDnsZoneVirtualNetworkLink(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateDnsZoneName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_dns_zone_name': privateDnsZoneName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsZoneVirtualNetworkLinkSensitive;

  /// A reference to the `azurerm_private_dns_zone_virtual_network_link` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsZoneVirtualNetworkLink>`.
  RefTo<AzurermPrivateDnsZoneVirtualNetworkLink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registration_enabled` attribute.
  TfRef<bool> get registrationEnabled =>
      TfRef.attribute<bool>(this, 'registration_enabled');

  /// Reference to `resolution_policy` attribute.
  TfRef<String> get resolutionPolicy =>
      TfRef.attribute<String>(this, 'resolution_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `private_dns_zone_name` attribute.
  TfRef<String> get privateDnsZoneName =>
      TfRef.attribute<String>(this, 'private_dns_zone_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

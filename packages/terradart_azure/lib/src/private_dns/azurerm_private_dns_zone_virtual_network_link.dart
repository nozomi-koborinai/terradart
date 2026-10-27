// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_private_dns_zone_virtual_network_link`.
const Set<String> _azurermPrivateDnsZoneVirtualNetworkLinkSensitive =
    <String>{};

/// Private Dns Zone Virtual Network Link Resolution enum for `resolution_policy`.
extension type const PrivateDnsZoneVirtualNetworkLinkResolutionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  PrivateDnsZoneVirtualNetworkLinkResolutionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  PrivateDnsZoneVirtualNetworkLinkResolutionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const PrivateDnsZoneVirtualNetworkLinkResolutionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = PrivateDnsZoneVirtualNetworkLinkResolutionPolicy._(
    TfArgLiteral('Default'),
  );
  static const nxdomainredirect =
      PrivateDnsZoneVirtualNetworkLinkResolutionPolicy._(
        TfArgLiteral('NxDomainRedirect'),
      );

  static const List<PrivateDnsZoneVirtualNetworkLinkResolutionPolicy> values = [
    defaultCase,
    nxdomainredirect,
  ];
}

/// Factory wrapper for `azurerm_private_dns_zone_virtual_network_link`.
final class AzurermPrivateDnsZoneVirtualNetworkLink extends Resource {
  static const String tfType = 'azurerm_private_dns_zone_virtual_network_link';

  AzurermPrivateDnsZoneVirtualNetworkLink(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateDnsZoneId,
    TfArg<bool>? registrationEnabled,
    PrivateDnsZoneVirtualNetworkLinkResolutionPolicy? resolutionPolicy,
    TfArg<Map<String, String>>? tags,
    required RefTo<AzurermVirtualNetwork> virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_dns_zone_id': privateDnsZoneId,
           'registration_enabled': ?registrationEnabled,
           'resolution_policy': ?resolutionPolicy,
           'tags': ?tags,
           'virtual_network_id': virtualNetworkId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsZoneVirtualNetworkLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsZoneVirtualNetworkLink>`.
  RefTo<AzurermPrivateDnsZoneVirtualNetworkLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

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
}

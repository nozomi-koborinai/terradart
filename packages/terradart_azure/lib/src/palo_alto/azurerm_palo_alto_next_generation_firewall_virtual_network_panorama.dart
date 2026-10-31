// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama`.
const Set<String>
_azurermPaloAltoNextGenerationFirewallVirtualNetworkPanoramaSensitive =
    <String>{};

/// Typed helper for the `destination_nat` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDestinationNat {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDestinationNat({
    required this.name,
    required this.protocol,
    this.backendConfig,
    this.frontendConfig,
  });

  final TfArg<String> name;

  final PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol protocol;

  final PaloAltoNextGenerationFirewallVirtualNetworkPanoramaBackendConfig?
  backendConfig;

  final PaloAltoNextGenerationFirewallVirtualNetworkPanoramaFrontendConfig?
  frontendConfig;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    'backend_config': ?backendConfig?.encode(),
    'frontend_config': ?frontendConfig?.encode(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol.variable(
    String name,
  ) : this._(TfArg.variable(name));
  PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tcp =
      PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol._(
        TfArgLiteral('UDP'),
      );

  static const List<
    PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol
  >
  values = [tcp, udp];
}

/// Typed helper for the `destination_nat.backend_config` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaBackendConfig {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  final TfArg<num> port;

  final TfArg<String> publicIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'public_ip_address': publicIpAddress.toTfJson(),
  };
}

/// Typed helper for the `destination_nat.frontend_config` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaFrontendConfig {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  final TfArg<num> port;

  final TfArg<String> publicIpAddressId;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'public_ip_address_id': publicIpAddressId.toTfJson(),
  };
}

/// At most one of `dns_servers`, `use_azure_dns` on the `dns_settings` block of `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dnsServers(...)`.
sealed class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings();

  /// Sets `dns_servers`.
  const factory PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings.dnsServers(
    TfArg<List<String>> dnsServers,
  ) = PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsDnsServers;

  /// Sets `use_azure_dns`.
  const factory PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings.useAzureDns(
    TfArg<bool> useAzureDns,
  ) = PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsUseAzureDns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings.dnsServers] choice: sets `dns_servers`.
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsDnsServers
    extends PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsDnsServers(
    this.dnsServers,
  );

  final TfArg<List<String>> dnsServers;

  @internal
  @override
  String get blockKey => 'dns_servers';

  @internal
  @override
  Map<String, Object?> encode() => {'dns_servers': dnsServers.toTfJson()};
}

/// The [PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings.useAzureDns] choice: sets `use_azure_dns`.
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsUseAzureDns
    extends PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsUseAzureDns(
    this.useAzureDns,
  );

  final TfArg<bool> useAzureDns;

  @internal
  @override
  String get blockKey => 'use_azure_dns';

  @internal
  @override
  Map<String, Object?> encode() => {'use_azure_dns': useAzureDns.toTfJson()};
}

/// Typed helper for the `network_profile` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaNetworkProfile {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaNetworkProfile({
    this.egressNatIpAddressIds,
    required this.publicIpAddressIds,
    this.trustedAddressRanges,
    required this.vnetConfiguration,
  });

  final TfArg<List<String>>? egressNatIpAddressIds;

  final TfArg<List<String>> publicIpAddressIds;

  final TfArg<List<String>>? trustedAddressRanges;

  final PaloAltoNextGenerationFirewallVirtualNetworkPanoramaVnetConfiguration
  vnetConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'egress_nat_ip_address_ids': ?egressNatIpAddressIds?.toTfJson(),
    'public_ip_address_ids': publicIpAddressIds.toTfJson(),
    'trusted_address_ranges': ?trustedAddressRanges?.toTfJson(),
    'vnet_configuration': vnetConfiguration.encode(),
  };
}

/// Typed helper for the `network_profile.vnet_configuration` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkPanoramaVnetConfiguration {
  const PaloAltoNextGenerationFirewallVirtualNetworkPanoramaVnetConfiguration({
    this.trustedSubnetId,
    this.untrustedSubnetId,
    required this.virtualNetworkId,
  });

  final TfArg<String>? trustedSubnetId;

  final TfArg<String>? untrustedSubnetId;

  final TfArg<String> virtualNetworkId;

  @internal
  Map<String, Object?> encode() => {
    'trusted_subnet_id': ?trustedSubnetId?.toTfJson(),
    'untrusted_subnet_id': ?untrustedSubnetId?.toTfJson(),
    'virtual_network_id': virtualNetworkId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_palo_alto_next_generation_firewall_virtual_network_panorama`.
final class AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama
    extends Resource {
  static const String tfType =
      'azurerm_palo_alto_next_generation_firewall_virtual_network_panorama';

  AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? marketplaceOfferId,
    required TfArg<String> name,
    required TfArg<String> panoramaBase64Config,
    TfArg<String>? planId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDestinationNat>?
    destinationNat,
    PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings?
    dnsSettings,
    required PaloAltoNextGenerationFirewallVirtualNetworkPanoramaNetworkProfile
    networkProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'marketplace_offer_id': ?marketplaceOfferId,
           'name': name,
           'panorama_base64_config': panoramaBase64Config,
           'plan_id': ?planId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (destinationNat != null)
             'destination_nat': TfArg.literal([
               for (final e in destinationNat) e.encode(),
             ]),
           if (dnsSettings != null)
             'dns_settings': TfArg.literal(dnsSettings.encode()),
           'network_profile': TfArg.literal(networkProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoNextGenerationFirewallVirtualNetworkPanoramaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama>`.
  RefTo<AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `panorama` attribute.
  TfRef<List<Map<String, Object?>>> get panorama =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'panorama');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `marketplace_offer_id` attribute.
  TfRef<String> get marketplaceOfferId =>
      TfRef.attribute<String>(this, 'marketplace_offer_id');

  /// Reference to `panorama_base64_config` attribute.
  TfRef<String> get panoramaBase64Config =>
      TfRef.attribute<String>(this, 'panorama_base64_config');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

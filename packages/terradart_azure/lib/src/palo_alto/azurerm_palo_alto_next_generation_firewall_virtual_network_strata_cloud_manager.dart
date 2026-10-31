// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager`.
const Set<String>
_azurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerSensitive =
    <String>{};

/// Typed helper for the `destination_nat` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat({
    required this.name,
    required this.protocol,
    this.backendConfig,
    this.frontendConfig,
  });

  final TfArg<String> name;

  final PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol
  protocol;

  final PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerBackendConfig?
  backendConfig;

  final PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerFrontendConfig?
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
extension type const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol.variable(
    String name,
  ) : this._(TfArg.variable(name));
  PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tcp =
      PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol._(
        TfArgLiteral('UDP'),
      );

  static const List<
    PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol
  >
  values = [tcp, udp];
}

/// Typed helper for the `destination_nat.backend_config` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerBackendConfig {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerBackendConfig({
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerFrontendConfig {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerFrontendConfig({
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

/// At most one of `dns_servers`, `use_azure_dns` on the `dns_settings` block of `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dnsServers(...)`.
sealed class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings();

  /// Sets `dns_servers`.
  const factory PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.dnsServers(
    TfArg<List<String>> dnsServers,
  ) = PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsDnsServers;

  /// Sets `use_azure_dns`.
  const factory PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.useAzureDns(
    TfArg<bool> useAzureDns,
  ) = PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsUseAzureDns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.dnsServers] choice: sets `dns_servers`.
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsDnsServers
    extends
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsDnsServers(
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

/// The [PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.useAzureDns] choice: sets `use_azure_dns`.
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsUseAzureDns
    extends
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsUseAzureDns(
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

/// Typed helper for the `identity` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile({
    this.egressNatIpAddressIds,
    required this.publicIpAddressIds,
    this.trustedAddressRanges,
    required this.vnetConfiguration,
  });

  final TfArg<List<String>>? egressNatIpAddressIds;

  final TfArg<List<String>> publicIpAddressIds;

  final TfArg<List<String>>? trustedAddressRanges;

  final PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerVnetConfiguration
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerVnetConfiguration {
  const PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerVnetConfiguration({
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

/// Factory wrapper for `azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager`.
final class AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager
    extends Resource {
  static const String tfType =
      'azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager';

  AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? marketplaceOfferId,
    required TfArg<String> name,
    TfArg<String>? planId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> strataCloudManagerTenantName,
    TfArg<Map<String, String>>? tags,
    List<
      PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat
    >?
    destinationNat,
    PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings?
    dnsSettings,
    PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity?
    identity,
    required PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile
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
           'plan_id': ?planId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'strata_cloud_manager_tenant_name': strataCloudManagerTenantName,
           'tags': ?tags,
           if (destinationNat != null)
             'destination_nat': TfArg.literal([
               for (final e in destinationNat) e.encode(),
             ]),
           if (dnsSettings != null)
             'dns_settings': TfArg.literal(dnsSettings.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'network_profile': TfArg.literal(networkProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager>`.
  RefTo<AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `marketplace_offer_id` attribute.
  TfRef<String> get marketplaceOfferId =>
      TfRef.attribute<String>(this, 'marketplace_offer_id');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `strata_cloud_manager_tenant_name` attribute.
  TfRef<String> get strataCloudManagerTenantName =>
      TfRef.attribute<String>(this, 'strata_cloud_manager_tenant_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

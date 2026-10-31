// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager`.
const Set<String>
_azurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerSensitive =
    <String>{};

/// Typed helper for the `destination_nat` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat({
    required this.name,
    required this.protocol,
    this.backendConfig,
    this.frontendConfig,
  });

  final TfArg<String> name;

  final PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol
  protocol;

  final PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerBackendConfig?
  backendConfig;

  final PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerFrontendConfig?
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
extension type const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol.variable(
    String name,
  ) : this._(TfArg.variable(name));
  PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tcp =
      PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol._(
        TfArgLiteral('UDP'),
      );

  static const List<
    PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol
  >
  values = [tcp, udp];
}

/// Typed helper for the `destination_nat.backend_config` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerBackendConfig {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerBackendConfig({
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerFrontendConfig {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerFrontendConfig({
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

/// At most one of `dns_servers`, `use_azure_dns` on the `dns_settings` block of `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dnsServers(...)`.
sealed class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings();

  /// Sets `dns_servers`.
  const factory PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.dnsServers(
    TfArg<List<String>> dnsServers,
  ) = PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsDnsServers;

  /// Sets `use_azure_dns`.
  const factory PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.useAzureDns(
    TfArg<bool> useAzureDns,
  ) = PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsUseAzureDns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.dnsServers] choice: sets `dns_servers`.
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsDnsServers
    extends
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsDnsServers(
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

/// The [PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.useAzureDns] choice: sets `use_azure_dns`.
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsUseAzureDns
    extends
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsUseAzureDns(
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerIdentity {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerIdentity({
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile {
  const PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile({
    this.egressNatIpAddressIds,
    required this.networkVirtualApplianceId,
    required this.publicIpAddressIds,
    this.trustedAddressRanges,
    required this.virtualHubId,
  });

  final TfArg<List<String>>? egressNatIpAddressIds;

  final TfArg<String> networkVirtualApplianceId;

  final TfArg<List<String>> publicIpAddressIds;

  final TfArg<List<String>>? trustedAddressRanges;

  final TfArg<String> virtualHubId;

  @internal
  Map<String, Object?> encode() => {
    'egress_nat_ip_address_ids': ?egressNatIpAddressIds?.toTfJson(),
    'network_virtual_appliance_id': networkVirtualApplianceId.toTfJson(),
    'public_ip_address_ids': publicIpAddressIds.toTfJson(),
    'trusted_address_ranges': ?trustedAddressRanges?.toTfJson(),
    'virtual_hub_id': virtualHubId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager`.
final class AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager
    extends Resource {
  static const String tfType =
      'azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager';

  AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? marketplaceOfferId,
    required TfArg<String> name,
    TfArg<String>? planId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> strataCloudManagerTenantName,
    TfArg<Map<String, String>>? tags,
    List<
      PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat
    >?
    destinationNat,
    PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings?
    dnsSettings,
    PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerIdentity?
    identity,
    required PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile
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
      _azurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager>`.
  RefTo<AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager>
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack`.
const Set<String>
_azurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestackSensitive =
    <String>{};

/// Typed helper for the `destination_nat` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDestinationNat {
  const PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDestinationNat({
    required this.name,
    required this.protocol,
    this.backendConfig,
    this.frontendConfig,
  });

  final TfArg<String> name;

  final TfArg<String> protocol;

  final PaloAltoNextGenerationFirewallVirtualHubLocalRulestackBackendConfig?
  backendConfig;

  final PaloAltoNextGenerationFirewallVirtualHubLocalRulestackFrontendConfig?
  frontendConfig;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    'backend_config': ?backendConfig?.encode(),
    'frontend_config': ?frontendConfig?.encode(),
  };
}

/// Typed helper for the `destination_nat.backend_config` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubLocalRulestackBackendConfig {
  const PaloAltoNextGenerationFirewallVirtualHubLocalRulestackBackendConfig({
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
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubLocalRulestackFrontendConfig {
  const PaloAltoNextGenerationFirewallVirtualHubLocalRulestackFrontendConfig({
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

/// Typed helper for the `dns_settings` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettings {
  const PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettings({
    this.dnsServers,
    this.useAzureDns,
  });

  final TfArg<List<String>>? dnsServers;

  final TfArg<bool>? useAzureDns;

  @internal
  Map<String, Object?> encode() => {
    'dns_servers': ?dnsServers?.toTfJson(),
    'use_azure_dns': ?useAzureDns?.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack` (derived from provider schema).
@immutable
final class PaloAltoNextGenerationFirewallVirtualHubLocalRulestackNetworkProfile {
  const PaloAltoNextGenerationFirewallVirtualHubLocalRulestackNetworkProfile({
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

/// Factory wrapper for `azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack`.
final class AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack
    extends Resource {
  static const String tfType =
      'azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack';

  AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack(
    super.localName, {
    TfArg<String>? marketplaceOfferId,
    required TfArg<String> name,
    TfArg<String>? planId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> rulestackId,
    TfArg<Map<String, String>>? tags,
    List<PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDestinationNat>?
    destinationNat,
    PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettings?
    dnsSettings,
    required PaloAltoNextGenerationFirewallVirtualHubLocalRulestackNetworkProfile
    networkProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'marketplace_offer_id': ?marketplaceOfferId,
           'name': name,
           'plan_id': ?planId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'rulestack_id': rulestackId,
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
      _azurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack>`.
  RefTo<AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `marketplace_offer_id` attribute.
  TfRef<String> get marketplaceOfferId =>
      TfRef.attribute<String>(this, 'marketplace_offer_id');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `rulestack_id` attribute.
  TfRef<String> get rulestackId =>
      TfRef.attribute<String>(this, 'rulestack_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

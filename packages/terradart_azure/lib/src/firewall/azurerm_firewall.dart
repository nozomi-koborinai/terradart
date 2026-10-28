// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall`.
const Set<String> _azurermFirewallSensitive = <String>{};

/// Firewall Sku enum for `sku_name`.
extension type const FirewallSkuName._(TfArg<String> _)
    implements TfArg<String> {
  FirewallSkuName.variable(String name) : this._(TfArg.variable(name));
  FirewallSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallSkuName.arg(TfArg<String> arg) : this._(arg);

  static const azfwHub = FirewallSkuName._(TfArgLiteral('AZFW_Hub'));
  static const azfwVnet = FirewallSkuName._(TfArgLiteral('AZFW_VNet'));

  static const List<FirewallSkuName> values = [azfwHub, azfwVnet];
}

/// Firewall Sku enum for `sku_tier`.
extension type const FirewallSkuTier._(TfArg<String> _)
    implements TfArg<String> {
  FirewallSkuTier.variable(String name) : this._(TfArg.variable(name));
  FirewallSkuTier.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallSkuTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = FirewallSkuTier._(TfArgLiteral('Basic'));
  static const premium = FirewallSkuTier._(TfArgLiteral('Premium'));
  static const standard = FirewallSkuTier._(TfArgLiteral('Standard'));

  static const List<FirewallSkuTier> values = [basic, premium, standard];
}

/// Firewall Threat Intel enum for `threat_intel_mode`.
extension type const FirewallThreatIntelMode._(TfArg<String> _)
    implements TfArg<String> {
  FirewallThreatIntelMode.variable(String name) : this._(TfArg.variable(name));
  FirewallThreatIntelMode.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallThreatIntelMode.arg(TfArg<String> arg) : this._(arg);

  static const alert = FirewallThreatIntelMode._(TfArgLiteral('Alert'));
  static const deny = FirewallThreatIntelMode._(TfArgLiteral('Deny'));
  static const off = FirewallThreatIntelMode._(TfArgLiteral('Off'));

  static const List<FirewallThreatIntelMode> values = [alert, deny, off];
}

/// Typed helper for the `ip_configuration` block of
/// `azurerm_firewall` (derived from provider schema).
@immutable
final class FirewallIpConfiguration {
  const FirewallIpConfiguration({
    required this.name,
    this.publicIpAddressId,
    this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// Typed helper for the `management_ip_configuration` block of
/// `azurerm_firewall` (derived from provider schema).
@immutable
final class FirewallManagementIpConfiguration {
  const FirewallManagementIpConfiguration({
    required this.name,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String> publicIpAddressId;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'public_ip_address_id': publicIpAddressId.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `virtual_hub` block of
/// `azurerm_firewall` (derived from provider schema).
@immutable
final class FirewallVirtualHub {
  const FirewallVirtualHub({this.publicIpCount, required this.virtualHubId});

  final TfArg<num>? publicIpCount;

  final TfArg<String> virtualHubId;

  @internal
  Map<String, Object?> encode() => {
    'public_ip_count': ?publicIpCount?.toTfJson(),
    'virtual_hub_id': virtualHubId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_firewall`.
final class AzurermFirewall extends Resource {
  static const String tfType = 'azurerm_firewall';

  AzurermFirewall(
    super.localName, {
    TfArg<bool>? dnsProxyEnabled,
    TfArg<List<String>>? dnsServers,
    TfArg<String>? firewallPolicyId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<List<String>>? privateIpRanges,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required FirewallSkuName skuName,
    required FirewallSkuTier skuTier,
    TfArg<Map<String, String>>? tags,
    FirewallThreatIntelMode? threatIntelMode,
    TfArg<List<String>>? zones,
    List<FirewallIpConfiguration>? ipConfiguration,
    FirewallManagementIpConfiguration? managementIpConfiguration,
    FirewallVirtualHub? virtualHub,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_proxy_enabled': ?dnsProxyEnabled,
           'dns_servers': ?dnsServers,
           'firewall_policy_id': ?firewallPolicyId,
           'location': location,
           'name': name,
           'private_ip_ranges': ?privateIpRanges,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'sku_tier': skuTier,
           'tags': ?tags,
           'threat_intel_mode': ?threatIntelMode,
           'zones': ?zones,
           if (ipConfiguration != null)
             'ip_configuration': TfArg.literal([
               for (final e in ipConfiguration) e.encode(),
             ]),
           if (managementIpConfiguration != null)
             'management_ip_configuration': TfArg.literal(
               managementIpConfiguration.encode(),
             ),
           if (virtualHub != null)
             'virtual_hub': TfArg.literal(virtualHub.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFirewallSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFirewall>`.
  RefTo<AzurermFirewall> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_proxy_enabled` attribute.
  TfRef<bool> get dnsProxyEnabled =>
      TfRef.attribute<bool>(this, 'dns_proxy_enabled');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_ip_ranges` attribute.
  TfRef<List<String>> get privateIpRanges =>
      TfRef.attribute<List<String>>(this, 'private_ip_ranges');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `threat_intel_mode` attribute.
  TfRef<String> get threatIntelMode =>
      TfRef.attribute<String>(this, 'threat_intel_mode');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}

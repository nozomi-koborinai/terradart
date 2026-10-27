// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../firewall/azurerm_firewall.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall`.
const Set<String> _azurermFirewallSensitive = <String>{};

/// Factory wrapper for `azurerm_firewall`.
final class DataAzurermFirewall extends Data {
  static const String tfType = 'azurerm_firewall';

  DataAzurermFirewall(
    super.localName, {
    TfArg<bool>? dnsProxyEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_proxy_enabled': ?dnsProxyEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFirewallSensitive;

  /// A reference to the `azurerm_firewall` this data source reads, for
  /// arguments typed `RefTo<AzurermFirewall>`.
  RefTo<AzurermFirewall> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get ipConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_configuration');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `management_ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get managementIpConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'management_ip_configuration',
      );

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

  /// Reference to `virtual_hub` attribute.
  TfRef<List<Map<String, Object?>>> get virtualHub =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'virtual_hub');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `dns_proxy_enabled` attribute.
  TfRef<bool> get dnsProxyEnabled =>
      TfRef.attribute<bool>(this, 'dns_proxy_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

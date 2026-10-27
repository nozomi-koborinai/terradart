// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../firewall/azurerm_firewall_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall_policy`.
const Set<String> _azurermFirewallPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_firewall_policy`.
final class DataAzurermFirewallPolicy extends Data {
  static const String tfType = 'azurerm_firewall_policy';

  DataAzurermFirewallPolicy(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFirewallPolicySensitive;

  /// A reference to the `azurerm_firewall_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermFirewallPolicy>`.
  RefTo<AzurermFirewallPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_policy_id` attribute.
  TfRef<String> get basePolicyId =>
      TfRef.attribute<String>(this, 'base_policy_id');

  /// Reference to `child_policies` attribute.
  TfRef<List<String>> get childPolicies =>
      TfRef.attribute<List<String>>(this, 'child_policies');

  /// Reference to `dns` attribute.
  TfRef<List<Map<String, Object?>>> get dns =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns');

  /// Reference to `firewalls` attribute.
  TfRef<List<String>> get firewalls =>
      TfRef.attribute<List<String>>(this, 'firewalls');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `rule_collection_groups` attribute.
  TfRef<List<String>> get ruleCollectionGroups =>
      TfRef.attribute<List<String>>(this, 'rule_collection_groups');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `threat_intelligence_allowlist` attribute.
  TfRef<List<Map<String, Object?>>> get threatIntelligenceAllowlist =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'threat_intelligence_allowlist',
      );

  /// Reference to `threat_intelligence_mode` attribute.
  TfRef<String> get threatIntelligenceMode =>
      TfRef.attribute<String>(this, 'threat_intelligence_mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

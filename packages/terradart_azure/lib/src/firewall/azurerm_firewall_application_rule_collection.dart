// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall_application_rule_collection`.
const Set<String> _azurermFirewallApplicationRuleCollectionSensitive =
    <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_firewall_application_rule_collection` (derived from provider schema).
@immutable
final class FirewallApplicationRuleCollectionRule {
  const FirewallApplicationRuleCollectionRule({
    this.description,
    this.fqdnTags,
    required this.name,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
    this.protocol,
  });

  final TfArg<String>? description;

  final TfArg<List<String>>? fqdnTags;

  final TfArg<String> name;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourceIpGroups;

  final TfArg<List<String>>? targetFqdns;

  final List<FirewallApplicationRuleCollectionProtocol>? protocol;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'fqdn_tags': ?fqdnTags?.toTfJson(),
    'name': name.toTfJson(),
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ip_groups': ?sourceIpGroups?.toTfJson(),
    'target_fqdns': ?targetFqdns?.toTfJson(),
    if (protocol != null) 'protocol': [for (final e in protocol!) e.encode()],
  };
}

/// Typed helper for the `rule.protocol` block of
/// `azurerm_firewall_application_rule_collection` (derived from provider schema).
@immutable
final class FirewallApplicationRuleCollectionProtocol {
  const FirewallApplicationRuleCollectionProtocol({
    required this.port,
    required this.type,
  });

  final TfArg<num> port;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_firewall_application_rule_collection`.
final class AzurermFirewallApplicationRuleCollection extends Resource {
  static const String tfType = 'azurerm_firewall_application_rule_collection';

  AzurermFirewallApplicationRuleCollection(
    super.localName, {
    required TfArg<String> action,
    required TfArg<String> azureFirewallName,
    required TfArg<String> name,
    required TfArg<num> priority,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<FirewallApplicationRuleCollectionRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'azure_firewall_name': azureFirewallName,
           'name': name,
           'priority': priority,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFirewallApplicationRuleCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFirewallApplicationRuleCollection>`.
  RefTo<AzurermFirewallApplicationRuleCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `azure_firewall_name` attribute.
  TfRef<String> get azureFirewallName =>
      TfRef.attribute<String>(this, 'azure_firewall_name');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

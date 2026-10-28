// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall_network_rule_collection`.
const Set<String> _azurermFirewallNetworkRuleCollectionSensitive = <String>{};

/// Firewall Network Rule Collection enum for `action`.
extension type const FirewallNetworkRuleCollectionAction._(TfArg<String> _)
    implements TfArg<String> {
  FirewallNetworkRuleCollectionAction.variable(String name)
    : this._(TfArg.variable(name));
  FirewallNetworkRuleCollectionAction.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallNetworkRuleCollectionAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = FirewallNetworkRuleCollectionAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = FirewallNetworkRuleCollectionAction._(
    TfArgLiteral('Deny'),
  );

  static const List<FirewallNetworkRuleCollectionAction> values = [allow, deny];
}

/// Typed helper for the `rule` block of
/// `azurerm_firewall_network_rule_collection` (derived from provider schema).
@immutable
final class FirewallNetworkRuleCollectionRule {
  const FirewallNetworkRuleCollectionRule({
    this.description,
    this.destinationAddresses,
    this.destinationFqdns,
    this.destinationIpGroups,
    required this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  final TfArg<String>? description;

  final TfArg<List<String>>? destinationAddresses;

  final TfArg<List<String>>? destinationFqdns;

  final TfArg<List<String>>? destinationIpGroups;

  final TfArg<List<String>> destinationPorts;

  final TfArg<String> name;

  final List<FirewallNetworkRuleCollectionProtocols> protocols;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourceIpGroups;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'destination_addresses': ?destinationAddresses?.toTfJson(),
    'destination_fqdns': ?destinationFqdns?.toTfJson(),
    'destination_ip_groups': ?destinationIpGroups?.toTfJson(),
    'destination_ports': destinationPorts.toTfJson(),
    'name': name.toTfJson(),
    'protocols': [for (final e in protocols) e.toTfJson()],
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ip_groups': ?sourceIpGroups?.toTfJson(),
  };
}

/// `protocols` — derived from the provider schema description.
extension type const FirewallNetworkRuleCollectionProtocols._(TfArg<String> _)
    implements TfArg<String> {
  FirewallNetworkRuleCollectionProtocols.variable(String name)
    : this._(TfArg.variable(name));
  FirewallNetworkRuleCollectionProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallNetworkRuleCollectionProtocols.arg(TfArg<String> arg)
    : this._(arg);

  static const any = FirewallNetworkRuleCollectionProtocols._(
    TfArgLiteral('Any'),
  );
  static const icmp = FirewallNetworkRuleCollectionProtocols._(
    TfArgLiteral('ICMP'),
  );
  static const tcp = FirewallNetworkRuleCollectionProtocols._(
    TfArgLiteral('TCP'),
  );
  static const udp = FirewallNetworkRuleCollectionProtocols._(
    TfArgLiteral('UDP'),
  );

  static const List<FirewallNetworkRuleCollectionProtocols> values = [
    any,
    icmp,
    tcp,
    udp,
  ];
}

/// Factory wrapper for `azurerm_firewall_network_rule_collection`.
final class AzurermFirewallNetworkRuleCollection extends Resource {
  static const String tfType = 'azurerm_firewall_network_rule_collection';

  AzurermFirewallNetworkRuleCollection(
    super.localName, {
    required FirewallNetworkRuleCollectionAction action,
    required TfArg<String> azureFirewallName,
    required TfArg<String> name,
    required TfArg<num> priority,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<FirewallNetworkRuleCollectionRule> rule,
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
      _azurermFirewallNetworkRuleCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFirewallNetworkRuleCollection>`.
  RefTo<AzurermFirewallNetworkRuleCollection> get ref => RefTo.of(this);

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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_firewall_policy_rule_collection_group`.
const Set<String> _azurermFirewallPolicyRuleCollectionGroupSensitive =
    <String>{};

/// Typed helper for the `application_rule_collection` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupApplicationRuleCollection {
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollection({
    required this.action,
    required this.name,
    required this.priority,
    required this.rule,
  });

  final FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction action;

  final TfArg<String> name;

  final TfArg<num> priority;

  final List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule>
  rule;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
extension type const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction._(
  TfArg<String> _
) implements TfArg<String> {
  FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow =
      FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction._(
        TfArgLiteral('Allow'),
      );
  static const deny =
      FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction._(
        TfArgLiteral('Deny'),
      );

  static const List<
    FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction
  >
  values = [allow, deny];
}

/// Typed helper for the `application_rule_collection.rule` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule {
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule({
    this.description,
    this.destinationAddresses,
    this.destinationFqdnTags,
    this.destinationFqdns,
    this.destinationUrls,
    required this.name,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.terminateTls,
    this.webCategories,
    this.httpHeaders,
    this.protocols,
  });

  final TfArg<String>? description;

  final TfArg<List<String>>? destinationAddresses;

  final TfArg<List<String>>? destinationFqdnTags;

  final TfArg<List<String>>? destinationFqdns;

  final TfArg<List<String>>? destinationUrls;

  final TfArg<String> name;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourceIpGroups;

  final TfArg<bool>? terminateTls;

  final TfArg<List<String>>? webCategories;

  final List<FirewallPolicyRuleCollectionGroupHttpHeaders>? httpHeaders;

  final List<
    FirewallPolicyRuleCollectionGroupApplicationRuleCollectionProtocols
  >?
  protocols;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'destination_addresses': ?destinationAddresses?.toTfJson(),
    'destination_fqdn_tags': ?destinationFqdnTags?.toTfJson(),
    'destination_fqdns': ?destinationFqdns?.toTfJson(),
    'destination_urls': ?destinationUrls?.toTfJson(),
    'name': name.toTfJson(),
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ip_groups': ?sourceIpGroups?.toTfJson(),
    'terminate_tls': ?terminateTls?.toTfJson(),
    'web_categories': ?webCategories?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
    if (protocols != null)
      'protocols': [for (final e in protocols!) e.encode()],
  };
}

/// Typed helper for the `application_rule_collection.rule.http_headers` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupHttpHeaders {
  const FirewallPolicyRuleCollectionGroupHttpHeaders({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `application_rule_collection.rule.protocols` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionProtocols {
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionProtocols({
    required this.port,
    required this.type,
  });

  final TfArg<num> port;

  final FirewallPolicyRuleCollectionGroupType type;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FirewallPolicyRuleCollectionGroupType._(TfArg<String> _)
    implements TfArg<String> {
  FirewallPolicyRuleCollectionGroupType.variable(String name)
    : this._(TfArg.variable(name));
  FirewallPolicyRuleCollectionGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallPolicyRuleCollectionGroupType.arg(TfArg<String> arg)
    : this._(arg);

  static const http = FirewallPolicyRuleCollectionGroupType._(
    TfArgLiteral('Http'),
  );
  static const https = FirewallPolicyRuleCollectionGroupType._(
    TfArgLiteral('Https'),
  );
  static const mssql = FirewallPolicyRuleCollectionGroupType._(
    TfArgLiteral('Mssql'),
  );

  static const List<FirewallPolicyRuleCollectionGroupType> values = [
    http,
    https,
    mssql,
  ];
}

/// Typed helper for the `nat_rule_collection` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupNatRuleCollection {
  const FirewallPolicyRuleCollectionGroupNatRuleCollection({
    required this.action,
    required this.name,
    required this.priority,
    required this.rule,
  });

  final FirewallPolicyRuleCollectionGroupNatRuleCollectionAction action;

  final TfArg<String> name;

  final TfArg<num> priority;

  final List<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule> rule;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
extension type const FirewallPolicyRuleCollectionGroupNatRuleCollectionAction._(
  TfArg<String> _
) implements TfArg<String> {
  FirewallPolicyRuleCollectionGroupNatRuleCollectionAction.variable(String name)
    : this._(TfArg.variable(name));
  FirewallPolicyRuleCollectionGroupNatRuleCollectionAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FirewallPolicyRuleCollectionGroupNatRuleCollectionAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dnat =
      FirewallPolicyRuleCollectionGroupNatRuleCollectionAction._(
        TfArgLiteral('Dnat'),
      );

  static const List<FirewallPolicyRuleCollectionGroupNatRuleCollectionAction>
  values = [dnat];
}

/// Typed helper for the `nat_rule_collection.rule` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupNatRuleCollectionRule {
  const FirewallPolicyRuleCollectionGroupNatRuleCollectionRule({
    this.description,
    this.destinationAddress,
    this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.translatedAddress,
    this.translatedFqdn,
    required this.translatedPort,
  });

  final TfArg<String>? description;

  final TfArg<String>? destinationAddress;

  final TfArg<List<String>>? destinationPorts;

  final TfArg<String> name;

  final List<FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols>
  protocols;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourceIpGroups;

  final TfArg<String>? translatedAddress;

  final TfArg<String>? translatedFqdn;

  final TfArg<num> translatedPort;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'destination_address': ?destinationAddress?.toTfJson(),
    'destination_ports': ?destinationPorts?.toTfJson(),
    'name': name.toTfJson(),
    'protocols': [for (final e in protocols) e.toTfJson()],
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ip_groups': ?sourceIpGroups?.toTfJson(),
    'translated_address': ?translatedAddress?.toTfJson(),
    'translated_fqdn': ?translatedFqdn?.toTfJson(),
    'translated_port': translatedPort.toTfJson(),
  };
}

/// `protocols` — derived from the provider schema description.
extension type const FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols.variable(
    String name,
  ) : this._(TfArg.variable(name));
  FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tcp =
      FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols._(
        TfArgLiteral('UDP'),
      );

  static const List<FirewallPolicyRuleCollectionGroupNatRuleCollectionProtocols>
  values = [tcp, udp];
}

/// Typed helper for the `network_rule_collection` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupNetworkRuleCollection {
  const FirewallPolicyRuleCollectionGroupNetworkRuleCollection({
    required this.action,
    required this.name,
    required this.priority,
    required this.rule,
  });

  final FirewallPolicyRuleCollectionGroupApplicationRuleCollectionAction action;

  final TfArg<String> name;

  final TfArg<num> priority;

  final List<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule> rule;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `network_rule_collection.rule` block of
/// `azurerm_firewall_policy_rule_collection_group` (derived from provider schema).
@immutable
final class FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule {
  const FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule({
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

  final List<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols>
  protocols;

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
extension type const FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols.variable(
    String name,
  ) : this._(TfArg.variable(name));
  FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const any =
      FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols._(
        TfArgLiteral('Any'),
      );
  static const icmp =
      FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols._(
        TfArgLiteral('ICMP'),
      );
  static const tcp =
      FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols._(
        TfArgLiteral('UDP'),
      );

  static const List<
    FirewallPolicyRuleCollectionGroupNetworkRuleCollectionProtocols
  >
  values = [any, icmp, tcp, udp];
}

/// Factory wrapper for `azurerm_firewall_policy_rule_collection_group`.
final class AzurermFirewallPolicyRuleCollectionGroup extends Resource {
  static const String tfType = 'azurerm_firewall_policy_rule_collection_group';

  AzurermFirewallPolicyRuleCollectionGroup(
    super.localName, {
    required TfArg<String> firewallPolicyId,
    required TfArg<String> name,
    required TfArg<num> priority,
    List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>?
    applicationRuleCollection,
    List<FirewallPolicyRuleCollectionGroupNatRuleCollection>? natRuleCollection,
    List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>?
    networkRuleCollection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_policy_id': firewallPolicyId,
           'name': name,
           'priority': priority,
           if (applicationRuleCollection != null)
             'application_rule_collection': TfArg.literal([
               for (final e in applicationRuleCollection) e.encode(),
             ]),
           if (natRuleCollection != null)
             'nat_rule_collection': TfArg.literal([
               for (final e in natRuleCollection) e.encode(),
             ]),
           if (networkRuleCollection != null)
             'network_rule_collection': TfArg.literal([
               for (final e in networkRuleCollection) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFirewallPolicyRuleCollectionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFirewallPolicyRuleCollectionGroup>`.
  RefTo<AzurermFirewallPolicyRuleCollectionGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');
}

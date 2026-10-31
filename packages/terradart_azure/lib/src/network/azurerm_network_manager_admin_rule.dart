// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_admin_rule`.
const Set<String> _azurermNetworkManagerAdminRuleSensitive = <String>{};

/// Network Manager Admin Rule enum for `action`.
extension type const NetworkManagerAdminRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerAdminRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerAdminRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerAdminRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = NetworkManagerAdminRuleAction._(TfArgLiteral('Allow'));
  static const alwaysallow = NetworkManagerAdminRuleAction._(
    TfArgLiteral('AlwaysAllow'),
  );
  static const deny = NetworkManagerAdminRuleAction._(TfArgLiteral('Deny'));

  static const List<NetworkManagerAdminRuleAction> values = [
    allow,
    alwaysallow,
    deny,
  ];
}

/// Network Manager Admin Rule enum for `direction`.
extension type const NetworkManagerAdminRuleDirection._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerAdminRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerAdminRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerAdminRuleDirection.arg(TfArg<String> arg) : this._(arg);

  static const inbound = NetworkManagerAdminRuleDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = NetworkManagerAdminRuleDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<NetworkManagerAdminRuleDirection> values = [
    inbound,
    outbound,
  ];
}

/// Network Manager Admin Rule enum for `protocol`.
extension type const NetworkManagerAdminRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerAdminRuleProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerAdminRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerAdminRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const ah = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Ah'));
  static const any = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Any'));
  static const esp = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Esp'));
  static const icmp = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Icmp'));
  static const tcp = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Tcp'));
  static const udp = NetworkManagerAdminRuleProtocol._(TfArgLiteral('Udp'));

  static const List<NetworkManagerAdminRuleProtocol> values = [
    ah,
    any,
    esp,
    icmp,
    tcp,
    udp,
  ];
}

/// Typed helper for the `destination` block of
/// `azurerm_network_manager_admin_rule` (derived from provider schema).
@immutable
final class NetworkManagerAdminRuleDestination {
  const NetworkManagerAdminRuleDestination({
    required this.addressPrefix,
    required this.addressPrefixType,
  });

  final TfArg<String> addressPrefix;

  final NetworkManagerAdminRuleAddressPrefixType addressPrefixType;

  @internal
  Map<String, Object?> encode() => {
    'address_prefix': addressPrefix.toTfJson(),
    'address_prefix_type': addressPrefixType.toTfJson(),
  };
}

/// `address_prefix_type` — derived from the provider schema description.
extension type const NetworkManagerAdminRuleAddressPrefixType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerAdminRuleAddressPrefixType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerAdminRuleAddressPrefixType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerAdminRuleAddressPrefixType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipprefix = NetworkManagerAdminRuleAddressPrefixType._(
    TfArgLiteral('IPPrefix'),
  );
  static const servicetag = NetworkManagerAdminRuleAddressPrefixType._(
    TfArgLiteral('ServiceTag'),
  );

  static const List<NetworkManagerAdminRuleAddressPrefixType> values = [
    ipprefix,
    servicetag,
  ];
}

/// Typed helper for the `source` block of
/// `azurerm_network_manager_admin_rule` (derived from provider schema).
@immutable
final class NetworkManagerAdminRuleSource {
  const NetworkManagerAdminRuleSource({
    required this.addressPrefix,
    required this.addressPrefixType,
  });

  final TfArg<String> addressPrefix;

  final NetworkManagerAdminRuleAddressPrefixType addressPrefixType;

  @internal
  Map<String, Object?> encode() => {
    'address_prefix': addressPrefix.toTfJson(),
    'address_prefix_type': addressPrefixType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_manager_admin_rule`.
final class AzurermNetworkManagerAdminRule extends Resource {
  static const String tfType = 'azurerm_network_manager_admin_rule';

  AzurermNetworkManagerAdminRule(
    super.localName, {
    required NetworkManagerAdminRuleAction action,
    required TfArg<String> adminRuleCollectionId,
    TfArg<String>? description,
    TfArg<List<String>>? destinationPortRanges,
    required NetworkManagerAdminRuleDirection direction,
    required TfArg<String> name,
    required TfArg<num> priority,
    required NetworkManagerAdminRuleProtocol protocol,
    TfArg<List<String>>? sourcePortRanges,
    List<NetworkManagerAdminRuleDestination>? destination,
    List<NetworkManagerAdminRuleSource>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'admin_rule_collection_id': adminRuleCollectionId,
           'description': ?description,
           'destination_port_ranges': ?destinationPortRanges,
           'direction': direction,
           'name': name,
           'priority': priority,
           'protocol': protocol,
           'source_port_ranges': ?sourcePortRanges,
           if (destination != null)
             'destination': TfArg.literal([
               for (final e in destination) e.encode(),
             ]),
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkManagerAdminRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerAdminRule>`.
  RefTo<AzurermNetworkManagerAdminRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `admin_rule_collection_id` attribute.
  TfRef<String> get adminRuleCollectionId =>
      TfRef.attribute<String>(this, 'admin_rule_collection_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_port_ranges` attribute.
  TfRef<List<String>> get destinationPortRanges =>
      TfRef.attribute<List<String>>(this, 'destination_port_ranges');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `source_port_ranges` attribute.
  TfRef<List<String>> get sourcePortRanges =>
      TfRef.attribute<List<String>>(this, 'source_port_ranges');
}

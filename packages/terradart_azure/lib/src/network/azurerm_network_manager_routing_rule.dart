// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_routing_rule`.
const Set<String> _azurermNetworkManagerRoutingRuleSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `azurerm_network_manager_routing_rule` (derived from provider schema).
@immutable
final class NetworkManagerRoutingRuleDestination {
  const NetworkManagerRoutingRuleDestination({
    required this.address,
    required this.type,
  });

  final TfArg<String> address;

  final NetworkManagerRoutingRuleDestinationType type;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkManagerRoutingRuleDestinationType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerRoutingRuleDestinationType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerRoutingRuleDestinationType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerRoutingRuleDestinationType.arg(TfArg<String> arg)
    : this._(arg);

  static const addressprefix = NetworkManagerRoutingRuleDestinationType._(
    TfArgLiteral('AddressPrefix'),
  );
  static const servicetag = NetworkManagerRoutingRuleDestinationType._(
    TfArgLiteral('ServiceTag'),
  );

  static const List<NetworkManagerRoutingRuleDestinationType> values = [
    addressprefix,
    servicetag,
  ];
}

/// Typed helper for the `next_hop` block of
/// `azurerm_network_manager_routing_rule` (derived from provider schema).
@immutable
final class NetworkManagerRoutingRuleNextHop {
  const NetworkManagerRoutingRuleNextHop({this.address, required this.type});

  final TfArg<String>? address;

  final NetworkManagerRoutingRuleNextHopType type;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkManagerRoutingRuleNextHopType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerRoutingRuleNextHopType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerRoutingRuleNextHopType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerRoutingRuleNextHopType.arg(TfArg<String> arg)
    : this._(arg);

  static const internet = NetworkManagerRoutingRuleNextHopType._(
    TfArgLiteral('Internet'),
  );
  static const nonexthop = NetworkManagerRoutingRuleNextHopType._(
    TfArgLiteral('NoNextHop'),
  );
  static const virtualappliance = NetworkManagerRoutingRuleNextHopType._(
    TfArgLiteral('VirtualAppliance'),
  );
  static const virtualnetworkgateway = NetworkManagerRoutingRuleNextHopType._(
    TfArgLiteral('VirtualNetworkGateway'),
  );
  static const vnetlocal = NetworkManagerRoutingRuleNextHopType._(
    TfArgLiteral('VnetLocal'),
  );

  static const List<NetworkManagerRoutingRuleNextHopType> values = [
    internet,
    nonexthop,
    virtualappliance,
    virtualnetworkgateway,
    vnetlocal,
  ];
}

/// Factory wrapper for `azurerm_network_manager_routing_rule`.
final class AzurermNetworkManagerRoutingRule extends Resource {
  static const String tfType = 'azurerm_network_manager_routing_rule';

  AzurermNetworkManagerRoutingRule(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> ruleCollectionId,
    required NetworkManagerRoutingRuleDestination destination,
    required NetworkManagerRoutingRuleNextHop nextHop,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'rule_collection_id': ruleCollectionId,
           'destination': TfArg.literal(destination.encode()),
           'next_hop': TfArg.literal(nextHop.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkManagerRoutingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerRoutingRule>`.
  RefTo<AzurermNetworkManagerRoutingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `rule_collection_id` attribute.
  TfRef<String> get ruleCollectionId =>
      TfRef.attribute<String>(this, 'rule_collection_id');
}

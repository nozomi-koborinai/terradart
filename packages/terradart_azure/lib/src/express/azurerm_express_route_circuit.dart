// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_circuit`.
const Set<String> _azurermExpressRouteCircuitSensitive = <String>{
  'authorization_key',
  'service_key',
};

/// Typed helper for the `sku` block of
/// `azurerm_express_route_circuit` (derived from provider schema).
@immutable
final class ExpressRouteCircuitSku {
  const ExpressRouteCircuitSku({required this.family, required this.tier});

  final ExpressRouteCircuitFamily family;

  final ExpressRouteCircuitTier tier;

  @internal
  Map<String, Object?> encode() => {
    'family': family.toTfJson(),
    'tier': tier.toTfJson(),
  };
}

/// `family` — derived from the provider schema description.
extension type const ExpressRouteCircuitFamily._(TfArg<String> _)
    implements TfArg<String> {
  ExpressRouteCircuitFamily.variable(String name)
    : this._(TfArg.variable(name));
  ExpressRouteCircuitFamily.expression(String template)
    : this._(TfArg.expression(template));
  const ExpressRouteCircuitFamily.arg(TfArg<String> arg) : this._(arg);

  static const metereddata = ExpressRouteCircuitFamily._(
    TfArgLiteral('MeteredData'),
  );
  static const unlimiteddata = ExpressRouteCircuitFamily._(
    TfArgLiteral('UnlimitedData'),
  );

  static const List<ExpressRouteCircuitFamily> values = [
    metereddata,
    unlimiteddata,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const ExpressRouteCircuitTier._(TfArg<String> _)
    implements TfArg<String> {
  ExpressRouteCircuitTier.variable(String name) : this._(TfArg.variable(name));
  ExpressRouteCircuitTier.expression(String template)
    : this._(TfArg.expression(template));
  const ExpressRouteCircuitTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = ExpressRouteCircuitTier._(TfArgLiteral('Basic'));
  static const local = ExpressRouteCircuitTier._(TfArgLiteral('Local'));
  static const premium = ExpressRouteCircuitTier._(TfArgLiteral('Premium'));
  static const standard = ExpressRouteCircuitTier._(TfArgLiteral('Standard'));

  static const List<ExpressRouteCircuitTier> values = [
    basic,
    local,
    premium,
    standard,
  ];
}

/// Factory wrapper for `azurerm_express_route_circuit`.
final class AzurermExpressRouteCircuit extends Resource {
  static const String tfType = 'azurerm_express_route_circuit';

  AzurermExpressRouteCircuit(
    super.localName, {
    TfArg<bool>? allowClassicOperations,
    Sensitive<String>? authorizationKey,
    TfArg<num>? bandwidthInGbps,
    TfArg<num>? bandwidthInMbps,
    TfArg<String>? expressRoutePortId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? peeringLocation,
    TfArg<bool>? rateLimitingEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? serviceProviderName,
    TfArg<Map<String, String>>? tags,
    required ExpressRouteCircuitSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_classic_operations': ?allowClassicOperations,
           'authorization_key': ?authorizationKey,
           'bandwidth_in_gbps': ?bandwidthInGbps,
           'bandwidth_in_mbps': ?bandwidthInMbps,
           'express_route_port_id': ?expressRoutePortId,
           'location': location,
           'name': name,
           'peering_location': ?peeringLocation,
           'rate_limiting_enabled': ?rateLimitingEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_provider_name': ?serviceProviderName,
           'tags': ?tags,
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermExpressRouteCircuitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteCircuit>`.
  RefTo<AzurermExpressRouteCircuit> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_key` attribute.
  TfRef<String> get serviceKey => TfRef.attribute<String>(this, 'service_key');

  /// Reference to `service_provider_provisioning_state` attribute.
  TfRef<String> get serviceProviderProvisioningState =>
      TfRef.attribute<String>(this, 'service_provider_provisioning_state');

  /// Reference to `allow_classic_operations` attribute.
  TfRef<bool> get allowClassicOperations =>
      TfRef.attribute<bool>(this, 'allow_classic_operations');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `bandwidth_in_gbps` attribute.
  TfRef<num> get bandwidthInGbps =>
      TfRef.attribute<num>(this, 'bandwidth_in_gbps');

  /// Reference to `bandwidth_in_mbps` attribute.
  TfRef<num> get bandwidthInMbps =>
      TfRef.attribute<num>(this, 'bandwidth_in_mbps');

  /// Reference to `express_route_port_id` attribute.
  TfRef<String> get expressRoutePortId =>
      TfRef.attribute<String>(this, 'express_route_port_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peering_location` attribute.
  TfRef<String> get peeringLocation =>
      TfRef.attribute<String>(this, 'peering_location');

  /// Reference to `rate_limiting_enabled` attribute.
  TfRef<bool> get rateLimitingEnabled =>
      TfRef.attribute<bool>(this, 'rate_limiting_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_provider_name` attribute.
  TfRef<String> get serviceProviderName =>
      TfRef.attribute<String>(this, 'service_provider_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

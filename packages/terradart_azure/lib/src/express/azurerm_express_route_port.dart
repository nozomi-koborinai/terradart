// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_port`.
const Set<String> _azurermExpressRoutePortSensitive = <String>{};

/// Express Route Port Billing enum for `billing_type`.
extension type const ExpressRoutePortBillingType._(TfArg<String> _)
    implements TfArg<String> {
  ExpressRoutePortBillingType.variable(String name)
    : this._(TfArg.variable(name));
  ExpressRoutePortBillingType.expression(String template)
    : this._(TfArg.expression(template));
  const ExpressRoutePortBillingType.arg(TfArg<String> arg) : this._(arg);

  static const metereddata = ExpressRoutePortBillingType._(
    TfArgLiteral('MeteredData'),
  );
  static const unlimiteddata = ExpressRoutePortBillingType._(
    TfArgLiteral('UnlimitedData'),
  );

  static const List<ExpressRoutePortBillingType> values = [
    metereddata,
    unlimiteddata,
  ];
}

/// Express Route Port enum for `encapsulation`.
extension type const ExpressRoutePortEncapsulation._(TfArg<String> _)
    implements TfArg<String> {
  ExpressRoutePortEncapsulation.variable(String name)
    : this._(TfArg.variable(name));
  ExpressRoutePortEncapsulation.expression(String template)
    : this._(TfArg.expression(template));
  const ExpressRoutePortEncapsulation.arg(TfArg<String> arg) : this._(arg);

  static const dot1q = ExpressRoutePortEncapsulation._(TfArgLiteral('Dot1Q'));
  static const qinq = ExpressRoutePortEncapsulation._(TfArgLiteral('QinQ'));

  static const List<ExpressRoutePortEncapsulation> values = [dot1q, qinq];
}

/// Typed helper for the `identity` block of
/// `azurerm_express_route_port` (derived from provider schema).
@immutable
final class ExpressRoutePortIdentity {
  const ExpressRoutePortIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `link1` block of
/// `azurerm_express_route_port` (derived from provider schema).
@immutable
final class ExpressRoutePortLink1 {
  const ExpressRoutePortLink1({
    this.adminEnabled,
    this.macsecCakKeyvaultSecretId,
    this.macsecCipher,
    this.macsecCknKeyvaultSecretId,
    this.macsecSciEnabled,
  });

  final TfArg<bool>? adminEnabled;

  final TfArg<String>? macsecCakKeyvaultSecretId;

  final TfArg<String>? macsecCipher;

  final TfArg<String>? macsecCknKeyvaultSecretId;

  final TfArg<bool>? macsecSciEnabled;

  @internal
  Map<String, Object?> encode() => {
    'admin_enabled': ?adminEnabled?.toTfJson(),
    'macsec_cak_keyvault_secret_id': ?macsecCakKeyvaultSecretId?.toTfJson(),
    'macsec_cipher': ?macsecCipher?.toTfJson(),
    'macsec_ckn_keyvault_secret_id': ?macsecCknKeyvaultSecretId?.toTfJson(),
    'macsec_sci_enabled': ?macsecSciEnabled?.toTfJson(),
  };
}

/// Typed helper for the `link2` block of
/// `azurerm_express_route_port` (derived from provider schema).
@immutable
final class ExpressRoutePortLink2 {
  const ExpressRoutePortLink2({
    this.adminEnabled,
    this.macsecCakKeyvaultSecretId,
    this.macsecCipher,
    this.macsecCknKeyvaultSecretId,
    this.macsecSciEnabled,
  });

  final TfArg<bool>? adminEnabled;

  final TfArg<String>? macsecCakKeyvaultSecretId;

  final TfArg<String>? macsecCipher;

  final TfArg<String>? macsecCknKeyvaultSecretId;

  final TfArg<bool>? macsecSciEnabled;

  @internal
  Map<String, Object?> encode() => {
    'admin_enabled': ?adminEnabled?.toTfJson(),
    'macsec_cak_keyvault_secret_id': ?macsecCakKeyvaultSecretId?.toTfJson(),
    'macsec_cipher': ?macsecCipher?.toTfJson(),
    'macsec_ckn_keyvault_secret_id': ?macsecCknKeyvaultSecretId?.toTfJson(),
    'macsec_sci_enabled': ?macsecSciEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_express_route_port`.
final class AzurermExpressRoutePort extends Resource {
  static const String tfType = 'azurerm_express_route_port';

  AzurermExpressRoutePort(
    super.localName, {
    required TfArg<num> bandwidthInGbps,
    ExpressRoutePortBillingType? billingType,
    required ExpressRoutePortEncapsulation encapsulation,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> peeringLocation,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ExpressRoutePortIdentity? identity,
    ExpressRoutePortLink1? link1,
    ExpressRoutePortLink2? link2,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bandwidth_in_gbps': bandwidthInGbps,
           'billing_type': ?billingType,
           'encapsulation': encapsulation,
           'location': location,
           'name': name,
           'peering_location': peeringLocation,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (link1 != null) 'link1': TfArg.literal(link1.encode()),
           if (link2 != null) 'link2': TfArg.literal(link2.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermExpressRoutePortSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRoutePort>`.
  RefTo<AzurermExpressRoutePort> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ethertype` attribute.
  TfRef<String> get ethertype => TfRef.attribute<String>(this, 'ethertype');

  /// Reference to `guid` attribute.
  TfRef<String> get guid => TfRef.attribute<String>(this, 'guid');

  /// Reference to `mtu` attribute.
  TfRef<String> get mtu => TfRef.attribute<String>(this, 'mtu');

  /// Reference to `bandwidth_in_gbps` attribute.
  TfRef<num> get bandwidthInGbps =>
      TfRef.attribute<num>(this, 'bandwidth_in_gbps');

  /// Reference to `billing_type` attribute.
  TfRef<String> get billingType =>
      TfRef.attribute<String>(this, 'billing_type');

  /// Reference to `encapsulation` attribute.
  TfRef<String> get encapsulation =>
      TfRef.attribute<String>(this, 'encapsulation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peering_location` attribute.
  TfRef<String> get peeringLocation =>
      TfRef.attribute<String>(this, 'peering_location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_lb`.
const Set<String> _azurermLbSensitive = <String>{};

/// Lb enum for `sku`.
extension type const LbSku._(TfArg<String> _) implements TfArg<String> {
  LbSku.variable(String name) : this._(TfArg.variable(name));
  LbSku.expression(String template) : this._(TfArg.expression(template));
  const LbSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = LbSku._(TfArgLiteral('Basic'));
  static const gateway = LbSku._(TfArgLiteral('Gateway'));
  static const standard = LbSku._(TfArgLiteral('Standard'));

  static const List<LbSku> values = [basic, gateway, standard];
}

/// Lb Sku enum for `sku_tier`.
extension type const LbSkuTier._(TfArg<String> _) implements TfArg<String> {
  LbSkuTier.variable(String name) : this._(TfArg.variable(name));
  LbSkuTier.expression(String template) : this._(TfArg.expression(template));
  const LbSkuTier.arg(TfArg<String> arg) : this._(arg);

  static const global = LbSkuTier._(TfArgLiteral('Global'));
  static const regional = LbSkuTier._(TfArgLiteral('Regional'));

  static const List<LbSkuTier> values = [global, regional];
}

/// Typed helper for the `frontend_ip_configuration` block of
/// `azurerm_lb` (derived from provider schema).
@immutable
final class LbFrontendIpConfiguration {
  const LbFrontendIpConfiguration({
    this.gatewayLoadBalancerFrontendIpConfigurationId,
    required this.name,
    this.privateIpAddress,
    this.privateIpAddressAllocation,
    this.privateIpAddressVersion,
    this.publicIpAddressId,
    this.publicIpPrefixId,
    this.subnetId,
    this.zones,
  });

  final TfArg<String>? gatewayLoadBalancerFrontendIpConfigurationId;

  final TfArg<String> name;

  final TfArg<String>? privateIpAddress;

  final LbPrivateIpAddressAllocation? privateIpAddressAllocation;

  final LbPrivateIpAddressVersion? privateIpAddressVersion;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String>? publicIpPrefixId;

  final TfArg<String>? subnetId;

  final TfArg<List<String>>? zones;

  @internal
  Map<String, Object?> encode() => {
    'gateway_load_balancer_frontend_ip_configuration_id':
        ?gatewayLoadBalancerFrontendIpConfigurationId?.toTfJson(),
    'name': name.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_address_allocation': ?privateIpAddressAllocation?.toTfJson(),
    'private_ip_address_version': ?privateIpAddressVersion?.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'public_ip_prefix_id': ?publicIpPrefixId?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'zones': ?zones?.toTfJson(),
  };
}

/// `private_ip_address_allocation` — derived from the provider schema description.
extension type const LbPrivateIpAddressAllocation._(TfArg<String> _)
    implements TfArg<String> {
  LbPrivateIpAddressAllocation.variable(String name)
    : this._(TfArg.variable(name));
  LbPrivateIpAddressAllocation.expression(String template)
    : this._(TfArg.expression(template));
  const LbPrivateIpAddressAllocation.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = LbPrivateIpAddressAllocation._(
    TfArgLiteral('Dynamic'),
  );
  static const static = LbPrivateIpAddressAllocation._(TfArgLiteral('Static'));

  static const List<LbPrivateIpAddressAllocation> values = [dynamic, static];
}

/// `private_ip_address_version` — derived from the provider schema description.
extension type const LbPrivateIpAddressVersion._(TfArg<String> _)
    implements TfArg<String> {
  LbPrivateIpAddressVersion.variable(String name)
    : this._(TfArg.variable(name));
  LbPrivateIpAddressVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LbPrivateIpAddressVersion.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = LbPrivateIpAddressVersion._(TfArgLiteral('IPv4'));
  static const ipv6 = LbPrivateIpAddressVersion._(TfArgLiteral('IPv6'));

  static const List<LbPrivateIpAddressVersion> values = [ipv4, ipv6];
}

/// Factory wrapper for `azurerm_lb`.
final class AzurermLb extends Resource {
  static const String tfType = 'azurerm_lb';

  AzurermLb(
    super.localName, {
    TfArg<String>? edgeZone,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    LbSku? sku,
    LbSkuTier? skuTier,
    TfArg<Map<String, String>>? tags,
    List<LbFrontendIpConfiguration>? frontendIpConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'edge_zone': ?edgeZone,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'sku_tier': ?skuTier,
           'tags': ?tags,
           if (frontendIpConfiguration != null)
             'frontend_ip_configuration': TfArg.literal([
               for (final e in frontendIpConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLb>`.
  RefTo<AzurermLb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

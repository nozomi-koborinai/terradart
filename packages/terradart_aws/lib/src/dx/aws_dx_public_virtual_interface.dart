// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_public_virtual_interface`.
const Set<String> _awsDxPublicVirtualInterfaceSensitive = <String>{};

/// Dx Public Virtual Interface Address enum for `address_family`.
extension type const DxPublicVirtualInterfaceAddressFamily._(TfArg<String> _)
    implements TfArg<String> {
  DxPublicVirtualInterfaceAddressFamily.variable(String name)
    : this._(TfArg.variable(name));
  DxPublicVirtualInterfaceAddressFamily.expression(String template)
    : this._(TfArg.expression(template));
  const DxPublicVirtualInterfaceAddressFamily.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = DxPublicVirtualInterfaceAddressFamily._(
    TfArgLiteral('ipv4'),
  );
  static const ipv6 = DxPublicVirtualInterfaceAddressFamily._(
    TfArgLiteral('ipv6'),
  );

  static const List<DxPublicVirtualInterfaceAddressFamily> values = [
    ipv4,
    ipv6,
  ];
}

/// Factory wrapper for `aws_dx_public_virtual_interface`.
final class AwsDxPublicVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_public_virtual_interface';

  AwsDxPublicVirtualInterface(
    super.localName, {
    required DxPublicVirtualInterfaceAddressFamily addressFamily,
    TfArg<String>? amazonAddress,
    required TfArg<num> bgpAsn,
    TfArg<String>? bgpAuthKey,
    required TfArg<String> connectionId,
    TfArg<String>? customerAddress,
    required TfArg<String> name,
    TfArg<String>? rateLimit,
    TfArg<String>? region,
    required TfArg<List<String>> routeFilterPrefixes,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> vlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           'amazon_address': ?amazonAddress,
           'bgp_asn': bgpAsn,
           'bgp_auth_key': ?bgpAuthKey,
           'connection_id': connectionId,
           'customer_address': ?customerAddress,
           'name': name,
           'rate_limit': ?rateLimit,
           'region': ?region,
           'route_filter_prefixes': routeFilterPrefixes,
           'tags': ?tags,
           'vlan': vlan,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxPublicVirtualInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxPublicVirtualInterface>`.
  RefTo<AwsDxPublicVirtualInterface> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<String> get amazonSideAsn =>
      TfRef.attribute<String>(this, 'amazon_side_asn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `amazon_address` attribute.
  TfRef<String> get amazonAddress =>
      TfRef.attribute<String>(this, 'amazon_address');

  /// Reference to `bgp_asn` attribute.
  TfRef<num> get bgpAsn => TfRef.attribute<num>(this, 'bgp_asn');

  /// Reference to `bgp_auth_key` attribute.
  TfRef<String> get bgpAuthKey => TfRef.attribute<String>(this, 'bgp_auth_key');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `customer_address` attribute.
  TfRef<String> get customerAddress =>
      TfRef.attribute<String>(this, 'customer_address');

  /// Reference to `rate_limit` attribute.
  TfRef<String> get rateLimit => TfRef.attribute<String>(this, 'rate_limit');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_filter_prefixes` attribute.
  TfRef<List<String>> get routeFilterPrefixes =>
      TfRef.attribute<List<String>>(this, 'route_filter_prefixes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vlan` attribute.
  TfRef<num> get vlan => TfRef.attribute<num>(this, 'vlan');
}

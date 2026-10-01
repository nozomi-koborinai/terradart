// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_bgp_peer`.
const Set<String> _awsDxBgpPeerSensitive = <String>{};

/// Dx Bgp Peer Address enum for `address_family`.
extension type const DxBgpPeerAddressFamily._(TfArg<String> _)
    implements TfArg<String> {
  DxBgpPeerAddressFamily.variable(String name) : this._(TfArg.variable(name));
  DxBgpPeerAddressFamily.expression(String template)
    : this._(TfArg.expression(template));
  const DxBgpPeerAddressFamily.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = DxBgpPeerAddressFamily._(TfArgLiteral('ipv4'));
  static const ipv6 = DxBgpPeerAddressFamily._(TfArgLiteral('ipv6'));

  static const List<DxBgpPeerAddressFamily> values = [ipv4, ipv6];
}

/// Factory wrapper for `aws_dx_bgp_peer`.
final class AwsDxBgpPeer extends Resource {
  static const String tfType = 'aws_dx_bgp_peer';

  AwsDxBgpPeer(
    super.localName, {
    required DxBgpPeerAddressFamily addressFamily,
    TfArg<String>? amazonAddress,
    TfArg<num>? bgpAsn,
    TfArg<String>? bgpAsnLong,
    TfArg<String>? bgpAuthKey,
    TfArg<String>? customerAddress,
    TfArg<String>? region,
    required TfArg<String> virtualInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           'amazon_address': ?amazonAddress,
           'bgp_asn': ?bgpAsn,
           'bgp_asn_long': ?bgpAsnLong,
           'bgp_auth_key': ?bgpAuthKey,
           'customer_address': ?customerAddress,
           'region': ?region,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxBgpPeerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxBgpPeer>`.
  RefTo<AwsDxBgpPeer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `bgp_peer_id` attribute.
  TfRef<String> get bgpPeerId => TfRef.attribute<String>(this, 'bgp_peer_id');

  /// Reference to `bgp_status` attribute.
  TfRef<String> get bgpStatus => TfRef.attribute<String>(this, 'bgp_status');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `amazon_address` attribute.
  TfRef<String> get amazonAddress =>
      TfRef.attribute<String>(this, 'amazon_address');

  /// Reference to `bgp_asn` attribute.
  TfRef<num> get bgpAsn => TfRef.attribute<num>(this, 'bgp_asn');

  /// Reference to `bgp_asn_long` attribute.
  TfRef<String> get bgpAsnLong => TfRef.attribute<String>(this, 'bgp_asn_long');

  /// Reference to `bgp_auth_key` attribute.
  TfRef<String> get bgpAuthKey => TfRef.attribute<String>(this, 'bgp_auth_key');

  /// Reference to `customer_address` attribute.
  TfRef<String> get customerAddress =>
      TfRef.attribute<String>(this, 'customer_address');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `virtual_interface_id` attribute.
  TfRef<String> get virtualInterfaceId =>
      TfRef.attribute<String>(this, 'virtual_interface_id');
}

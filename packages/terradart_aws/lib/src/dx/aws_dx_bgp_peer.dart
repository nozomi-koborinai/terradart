// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_bgp_peer`.
const Set<String> _awsDxBgpPeerSensitive = <String>{};

/// Factory wrapper for `aws_dx_bgp_peer`.
final class AwsDxBgpPeer extends Resource {
  static const String tfType = 'aws_dx_bgp_peer';

  AwsDxBgpPeer({
    required super.localName,
    required TfArg<String> addressFamily,
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
           if (amazonAddress != null) 'amazon_address': amazonAddress,
           if (bgpAsn != null) 'bgp_asn': bgpAsn,
           if (bgpAsnLong != null) 'bgp_asn_long': bgpAsnLong,
           if (bgpAuthKey != null) 'bgp_auth_key': bgpAuthKey,
           if (customerAddress != null) 'customer_address': customerAddress,
           if (region != null) 'region': region,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxBgpPeerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `bgp_peer_id` attribute.
  TfRef<String> get bgpPeerId => TfRef.attribute<String>(this, 'bgp_peer_id');

  /// Reference to `bgp_status` attribute.
  TfRef<String> get bgpStatus => TfRef.attribute<String>(this, 'bgp_status');
}

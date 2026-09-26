// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_route_server_peer`.
const Set<String> _awsVpcRouteServerPeerSensitive = <String>{};

/// Typed helper for the `bgp_options` block of
/// `aws_vpc_route_server_peer` (derived from provider schema).
@immutable
final class VpcRouteServerPeerBgpOptions {
  const VpcRouteServerPeerBgpOptions({
    required this.peerAsn,
    this.peerLivenessDetection,
  });

  final TfArg<num> peerAsn;

  final TfArg<String>? peerLivenessDetection;

  Map<String, Object?> encode() => {
    'peer_asn': peerAsn.toTfJson(),
    if (peerLivenessDetection != null)
      'peer_liveness_detection': peerLivenessDetection!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_route_server_peer`.
final class AwsVpcRouteServerPeer extends Resource {
  static const String tfType = 'aws_vpc_route_server_peer';

  AwsVpcRouteServerPeer({
    required super.localName,
    required TfArg<String> peerAddress,
    TfArg<String>? region,
    required TfArg<String> routeServerEndpointId,
    TfArg<Map<String, String>>? tags,
    List<VpcRouteServerPeerBgpOptions>? bgpOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'peer_address': peerAddress,
           if (region != null) 'region': region,
           'route_server_endpoint_id': routeServerEndpointId,
           if (tags != null) 'tags': tags,
           if (bgpOptions != null)
             'bgp_options': TfArg.literal([
               for (final e in bgpOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerPeerSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_eni_address` attribute.
  TfRef<String> get endpointEniAddress =>
      TfRef.attribute<String>(this, 'endpoint_eni_address');

  /// Reference to `endpoint_eni_id` attribute.
  TfRef<String> get endpointEniId =>
      TfRef.attribute<String>(this, 'endpoint_eni_id');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerId =>
      TfRef.attribute<String>(this, 'route_server_id');

  /// Reference to `route_server_peer_id` attribute.
  TfRef<String> get routeServerPeerId =>
      TfRef.attribute<String>(this, 'route_server_peer_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_connect_peer`.
const Set<String> _awsNetworkmanagerConnectPeerSensitive = <String>{};

/// Typed helper for the `bgp_options` block of
/// `aws_networkmanager_connect_peer` (derived from provider schema).
@immutable
final class NetworkmanagerConnectPeerBgpOptions {
  const NetworkmanagerConnectPeerBgpOptions({this.peerAsn});

  final TfArg<String>? peerAsn;

  Map<String, Object?> encode() => {
    if (peerAsn != null) 'peer_asn': peerAsn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_connect_peer`.
final class AwsNetworkmanagerConnectPeer extends Resource {
  static const String tfType = 'aws_networkmanager_connect_peer';

  AwsNetworkmanagerConnectPeer({
    required super.localName,
    required TfArg<String> connectAttachmentId,
    TfArg<String>? coreNetworkAddress,
    TfArg<List<String>>? insideCidrBlocks,
    required TfArg<String> peerAddress,
    TfArg<String>? subnetArn,
    TfArg<Map<String, String>>? tags,
    NetworkmanagerConnectPeerBgpOptions? bgpOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connect_attachment_id': connectAttachmentId,
           if (coreNetworkAddress != null)
             'core_network_address': coreNetworkAddress,
           if (insideCidrBlocks != null) 'inside_cidr_blocks': insideCidrBlocks,
           'peer_address': peerAddress,
           if (subnetArn != null) 'subnet_arn': subnetArn,
           if (tags != null) 'tags': tags,
           if (bgpOptions != null)
             'bgp_options': TfArg.literal(bgpOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerConnectPeerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration` attribute.
  TfRef<List<Map<String, Object?>>> get configuration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configuration');

  /// Reference to `connect_peer_id` attribute.
  TfRef<String> get connectPeerId =>
      TfRef.attribute<String>(this, 'connect_peer_id');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkId =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

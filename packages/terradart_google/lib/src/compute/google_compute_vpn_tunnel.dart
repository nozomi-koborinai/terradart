// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_vpn_tunnel`.
const Set<String> _googleComputeVpnTunnelSensitive = <String>{'shared_secret'};

/// At most one of `peer_external_gateway`, `peer_gcp_gateway` on `google_compute_vpn_tunnel`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.peerExternalGateway(...)`.
sealed class ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeer();

  /// Sets `peer_external_gateway`.
  const factory ComputeVpnTunnelPeer.peerExternalGateway(
    TfArg<String> peerExternalGateway,
  ) = ComputeVpnTunnelPeerPeerExternalGateway;

  /// Sets `peer_gcp_gateway`.
  const factory ComputeVpnTunnelPeer.peerGcpGateway(
    TfArg<String> peerGcpGateway,
  ) = ComputeVpnTunnelPeerPeerGcpGateway;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeVpnTunnelPeer.peerExternalGateway] choice: sets `peer_external_gateway`.
final class ComputeVpnTunnelPeerPeerExternalGateway
    extends ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeerPeerExternalGateway(this.peerExternalGateway);

  final TfArg<String> peerExternalGateway;

  @override
  String get blockKey => 'peer_external_gateway';

  @override
  Map<String, Object?> encode() => {
    'peer_external_gateway': peerExternalGateway.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'peer_external_gateway': peerExternalGateway,
  };
}

/// The [ComputeVpnTunnelPeer.peerGcpGateway] choice: sets `peer_gcp_gateway`.
final class ComputeVpnTunnelPeerPeerGcpGateway extends ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeerPeerGcpGateway(this.peerGcpGateway);

  final TfArg<String> peerGcpGateway;

  @override
  String get blockKey => 'peer_gcp_gateway';

  @override
  Map<String, Object?> encode() => {
    'peer_gcp_gateway': peerGcpGateway.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'peer_gcp_gateway': peerGcpGateway,
  };
}

/// Factory wrapper for `google_compute_vpn_tunnel`.
///
/// VPN tunnel resource.
///
/// IPSec VPN tunnel. Use [targetVpnGateway] for classic VPN, or [vpnGateway]
/// with [peerGcpGateway] / [peerExternalGateway] for HA VPN.
final class GoogleComputeVpnTunnel extends Resource {
  static const String tfType = 'google_compute_vpn_tunnel';

  GoogleComputeVpnTunnel({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? targetVpnGateway,
    TfArg<String>? vpnGateway,
    TfArg<num>? vpnGatewayInterface,
    TfArg<String>? peerIp,
    ComputeVpnTunnelPeer? peer,
    TfArg<num>? peerExternalGatewayInterface,
    TfArg<String>? sharedSecret,
    TfArg<String>? sharedSecretWo,
    TfArg<String>? sharedSecretWoVersion,
    TfArg<String>? router,
    TfArg<String>? description,
    TfArg<num>? ikeVersion,
    TfArg<List<String>>? localTrafficSelector,
    TfArg<List<String>>? remoteTrafficSelector,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'target_vpn_gateway': ?targetVpnGateway,
           'vpn_gateway': ?vpnGateway,
           'vpn_gateway_interface': ?vpnGatewayInterface,
           'peer_ip': ?peerIp,
           ...?peer?.argMap,
           'peer_external_gateway_interface': ?peerExternalGatewayInterface,
           'shared_secret': ?sharedSecret,
           'shared_secret_wo': ?sharedSecretWo,
           'shared_secret_wo_version': ?sharedSecretWoVersion,
           'router': ?router,
           'description': ?description,
           'ike_version': ?ikeVersion,
           'local_traffic_selector': ?localTrafficSelector,
           'remote_traffic_selector': ?remoteTrafficSelector,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeVpnTunnelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeVpnTunnel>`.
  RefTo<GoogleComputeVpnTunnel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `detailed_status` attribute.
  TfRef<String> get detailedStatus =>
      TfRef.attribute<String>(this, 'detailed_status');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `shared_secret_hash` attribute.
  TfRef<String> get sharedSecretHash =>
      TfRef.attribute<String>(this, 'shared_secret_hash');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}

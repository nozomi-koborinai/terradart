// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_external_vpn_gateway.dart'
    show GoogleComputeExternalVpnGateway;
import '../compute/google_compute_ha_vpn_gateway.dart'
    show GoogleComputeHaVpnGateway;
import '../compute/google_compute_router.dart' show GoogleComputeRouter;
import '../compute/google_compute_vpn_gateway.dart'
    show GoogleComputeVpnGateway;

/// Sensitive field paths for `google_compute_vpn_tunnel`.
const Set<String> _googleComputeVpnTunnelSensitive = <String>{'shared_secret'};

/// Exactly one of `shared_secret`, `shared_secret_wo` on `google_compute_vpn_tunnel`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sharedSecret(...)`.
sealed class ComputeVpnTunnelSharedSecret {
  const ComputeVpnTunnelSharedSecret();

  /// Sets `shared_secret`.
  const factory ComputeVpnTunnelSharedSecret.sharedSecret(
    TfArg<String> sharedSecret,
  ) = ComputeVpnTunnelSharedSecretChoice;

  /// Sets `shared_secret_wo`.
  const factory ComputeVpnTunnelSharedSecret.sharedSecretWo(
    TfArg<String> sharedSecretWo,
  ) = ComputeVpnTunnelSharedSecretWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeVpnTunnelSharedSecret.sharedSecret] choice: sets `shared_secret`.
final class ComputeVpnTunnelSharedSecretChoice
    extends ComputeVpnTunnelSharedSecret {
  const ComputeVpnTunnelSharedSecretChoice(this.sharedSecret);

  final TfArg<String> sharedSecret;

  @override
  String get blockKey => 'shared_secret';

  @override
  Map<String, Object?> encode() => {'shared_secret': sharedSecret.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'shared_secret': sharedSecret};
}

/// The [ComputeVpnTunnelSharedSecret.sharedSecretWo] choice: sets `shared_secret_wo`.
final class ComputeVpnTunnelSharedSecretWo
    extends ComputeVpnTunnelSharedSecret {
  const ComputeVpnTunnelSharedSecretWo(this.sharedSecretWo);

  final TfArg<String> sharedSecretWo;

  @override
  String get blockKey => 'shared_secret_wo';

  @override
  Map<String, Object?> encode() => {
    'shared_secret_wo': sharedSecretWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'shared_secret_wo': sharedSecretWo,
  };
}

/// At most one of `peer_external_gateway`, `peer_gcp_gateway` on `google_compute_vpn_tunnel`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.peerExternalGateway(...)`.
sealed class ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeer();

  /// Sets `peer_external_gateway`.
  const factory ComputeVpnTunnelPeer.peerExternalGateway(
    RefTo<GoogleComputeExternalVpnGateway> peerExternalGateway,
  ) = ComputeVpnTunnelPeerExternalGateway;

  /// Sets `peer_gcp_gateway`.
  const factory ComputeVpnTunnelPeer.peerGcpGateway(
    RefTo<GoogleComputeHaVpnGateway> peerGcpGateway,
  ) = ComputeVpnTunnelPeerGcpGateway;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeVpnTunnelPeer.peerExternalGateway] choice: sets `peer_external_gateway`.
final class ComputeVpnTunnelPeerExternalGateway extends ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeerExternalGateway(this.peerExternalGateway);

  final RefTo<GoogleComputeExternalVpnGateway> peerExternalGateway;

  @override
  String get blockKey => 'peer_external_gateway';

  @override
  Map<String, Object?> encode() => {
    'peer_external_gateway': peerExternalGateway
        .encodeAs('self_link')
        .toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'peer_external_gateway': peerExternalGateway.encodeAs('self_link'),
  };
}

/// The [ComputeVpnTunnelPeer.peerGcpGateway] choice: sets `peer_gcp_gateway`.
final class ComputeVpnTunnelPeerGcpGateway extends ComputeVpnTunnelPeer {
  const ComputeVpnTunnelPeerGcpGateway(this.peerGcpGateway);

  final RefTo<GoogleComputeHaVpnGateway> peerGcpGateway;

  @override
  String get blockKey => 'peer_gcp_gateway';

  @override
  Map<String, Object?> encode() => {
    'peer_gcp_gateway': peerGcpGateway.encodeAs('self_link').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'peer_gcp_gateway': peerGcpGateway.encodeAs('self_link'),
  };
}

/// Typed helper for the `cipher_suite` block of
/// `google_compute_vpn_tunnel` (derived from provider schema).
@immutable
final class ComputeVpnTunnelCipherSuite {
  const ComputeVpnTunnelCipherSuite({this.phase1, this.phase2});

  final ComputeVpnTunnelPhase1? phase1;

  final ComputeVpnTunnelPhase2? phase2;

  Map<String, Object?> encode() => {
    'phase1': ?phase1?.encode(),
    'phase2': ?phase2?.encode(),
  };
}

/// Typed helper for the `cipher_suite.phase1` block of
/// `google_compute_vpn_tunnel` (derived from provider schema).
@immutable
final class ComputeVpnTunnelPhase1 {
  const ComputeVpnTunnelPhase1({
    this.dh,
    this.encryption,
    this.integrity,
    this.prf,
  });

  final TfArg<List<String>>? dh;

  final TfArg<List<String>>? encryption;

  final TfArg<List<String>>? integrity;

  final TfArg<List<String>>? prf;

  Map<String, Object?> encode() => {
    'dh': ?dh?.toTfJson(),
    'encryption': ?encryption?.toTfJson(),
    'integrity': ?integrity?.toTfJson(),
    'prf': ?prf?.toTfJson(),
  };
}

/// Typed helper for the `cipher_suite.phase2` block of
/// `google_compute_vpn_tunnel` (derived from provider schema).
@immutable
final class ComputeVpnTunnelPhase2 {
  const ComputeVpnTunnelPhase2({this.encryption, this.integrity, this.pfs});

  final TfArg<List<String>>? encryption;

  final TfArg<List<String>>? integrity;

  final TfArg<List<String>>? pfs;

  Map<String, Object?> encode() => {
    'encryption': ?encryption?.toTfJson(),
    'integrity': ?integrity?.toTfJson(),
    'pfs': ?pfs?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_vpn_tunnel` (derived from provider schema).
@immutable
final class ComputeVpnTunnelParams {
  const ComputeVpnTunnelParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
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

  GoogleComputeVpnTunnel(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<GoogleComputeVpnGateway>? targetVpnGateway,
    RefTo<GoogleComputeHaVpnGateway>? vpnGateway,
    TfArg<num>? vpnGatewayInterface,
    TfArg<String>? peerIp,
    ComputeVpnTunnelPeer? peer,
    TfArg<num>? peerExternalGatewayInterface,
    required ComputeVpnTunnelSharedSecret sharedSecret,
    TfArg<String>? sharedSecretWoVersion,
    RefTo<GoogleComputeRouter>? router,
    TfArg<String>? description,
    TfArg<num>? ikeVersion,
    TfArg<List<String>>? localTrafficSelector,
    TfArg<List<String>>? remoteTrafficSelector,
    TfArg<Map<String, String>>? labels,
    ComputeVpnTunnelCipherSuite? cipherSuite,
    ComputeVpnTunnelParams? params,
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
           'target_vpn_gateway': ?targetVpnGateway?.encodeAs('self_link'),
           'vpn_gateway': ?vpnGateway?.encodeAs('self_link'),
           'vpn_gateway_interface': ?vpnGatewayInterface,
           'peer_ip': ?peerIp,
           ...?peer?.argMap,
           'peer_external_gateway_interface': ?peerExternalGatewayInterface,
           ...sharedSecret.argMap,
           'shared_secret_wo_version': ?sharedSecretWoVersion,
           'router': ?router?.encodeAs('self_link'),
           'description': ?description,
           'ike_version': ?ikeVersion,
           'local_traffic_selector': ?localTrafficSelector,
           'remote_traffic_selector': ?remoteTrafficSelector,
           'labels': ?labels,
           if (cipherSuite != null)
             'cipher_suite': TfArg.literal(cipherSuite.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ike_version` attribute.
  TfRef<num> get ikeVersion => TfRef.attribute<num>(this, 'ike_version');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `local_traffic_selector` attribute.
  TfRef<List<String>> get localTrafficSelector =>
      TfRef.attribute<List<String>>(this, 'local_traffic_selector');

  /// Reference to `peer_external_gateway` attribute.
  TfRef<String> get peerExternalGateway =>
      TfRef.attribute<String>(this, 'peer_external_gateway');

  /// Reference to `peer_external_gateway_interface` attribute.
  TfRef<num> get peerExternalGatewayInterface =>
      TfRef.attribute<num>(this, 'peer_external_gateway_interface');

  /// Reference to `peer_gcp_gateway` attribute.
  TfRef<String> get peerGcpGateway =>
      TfRef.attribute<String>(this, 'peer_gcp_gateway');

  /// Reference to `peer_ip` attribute.
  TfRef<String> get peerIp => TfRef.attribute<String>(this, 'peer_ip');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `remote_traffic_selector` attribute.
  TfRef<List<String>> get remoteTrafficSelector =>
      TfRef.attribute<List<String>>(this, 'remote_traffic_selector');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `shared_secret` attribute.
  TfRef<String> get sharedSecret =>
      TfRef.attribute<String>(this, 'shared_secret');

  /// Reference to `shared_secret_wo_version` attribute.
  TfRef<String> get sharedSecretWoVersion =>
      TfRef.attribute<String>(this, 'shared_secret_wo_version');

  /// Reference to `target_vpn_gateway` attribute.
  TfRef<String> get targetVpnGateway =>
      TfRef.attribute<String>(this, 'target_vpn_gateway');

  /// Reference to `vpn_gateway` attribute.
  TfRef<String> get vpnGateway => TfRef.attribute<String>(this, 'vpn_gateway');

  /// Reference to `vpn_gateway_interface` attribute.
  TfRef<num> get vpnGatewayInterface =>
      TfRef.attribute<num>(this, 'vpn_gateway_interface');
}

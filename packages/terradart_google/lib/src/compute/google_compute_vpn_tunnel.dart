// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_vpn_tunnel`.
const Set<String> _googleComputeVpnTunnelSensitive = <String>{'shared_secret'};

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
    TfArg<String>? peerGcpGateway,
    TfArg<String>? peerExternalGateway,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (targetVpnGateway != null) 'target_vpn_gateway': targetVpnGateway,
           if (vpnGateway != null) 'vpn_gateway': vpnGateway,
           if (vpnGatewayInterface != null)
             'vpn_gateway_interface': vpnGatewayInterface,
           if (peerIp != null) 'peer_ip': peerIp,
           if (peerGcpGateway != null) 'peer_gcp_gateway': peerGcpGateway,
           if (peerExternalGateway != null)
             'peer_external_gateway': peerExternalGateway,
           if (peerExternalGatewayInterface != null)
             'peer_external_gateway_interface': peerExternalGatewayInterface,
           if (sharedSecret != null) 'shared_secret': sharedSecret,
           if (sharedSecretWo != null) 'shared_secret_wo': sharedSecretWo,
           if (sharedSecretWoVersion != null)
             'shared_secret_wo_version': sharedSecretWoVersion,
           if (router != null) 'router': router,
           if (description != null) 'description': description,
           if (ikeVersion != null) 'ike_version': ikeVersion,
           if (localTrafficSelector != null)
             'local_traffic_selector': localTrafficSelector,
           if (remoteTrafficSelector != null)
             'remote_traffic_selector': remoteTrafficSelector,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeVpnTunnelSensitive;

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

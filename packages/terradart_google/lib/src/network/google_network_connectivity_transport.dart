// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_network_connectivity_transport`.
const Set<String> _googleNetworkConnectivityTransportSensitive = <String>{};

/// Network Connectivity Transport enum for `bandwidth`.
extension type const NetworkConnectivityTransportBandwidth._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectivityTransportBandwidth.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectivityTransportBandwidth.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectivityTransportBandwidth.arg(TfArg<String> arg)
    : this._(arg);

  static const bps50m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_50M'),
  );
  static const bps100m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_100M'),
  );
  static const bps200m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_200M'),
  );
  static const bps300m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_300M'),
  );
  static const bps400m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_400M'),
  );
  static const bps500m = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_500M'),
  );
  static const bps1g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_1G'),
  );
  static const bps2g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_2G'),
  );
  static const bps5g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_5G'),
  );
  static const bps10g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_10G'),
  );
  static const bps20g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_20G'),
  );
  static const bps50g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_50G'),
  );
  static const bps100g = NetworkConnectivityTransportBandwidth._(
    TfArgLiteral('BPS_100G'),
  );

  static const List<NetworkConnectivityTransportBandwidth> values = [
    bps50m,
    bps100m,
    bps200m,
    bps300m,
    bps400m,
    bps500m,
    bps1g,
    bps2g,
    bps5g,
    bps10g,
    bps20g,
    bps50g,
    bps100g,
  ];
}

/// Network Connectivity Transport enum for `state`.
extension type const NetworkConnectivityTransportState._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectivityTransportState.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectivityTransportState.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectivityTransportState.arg(TfArg<String> arg) : this._(arg);

  static const creating = NetworkConnectivityTransportState._(
    TfArgLiteral('CREATING'),
  );
  static const pendingConfig = NetworkConnectivityTransportState._(
    TfArgLiteral('PENDING_CONFIG'),
  );
  static const pendingKey = NetworkConnectivityTransportState._(
    TfArgLiteral('PENDING_KEY'),
  );
  static const active = NetworkConnectivityTransportState._(
    TfArgLiteral('ACTIVE'),
  );
  static const deleting = NetworkConnectivityTransportState._(
    TfArgLiteral('DELETING'),
  );
  static const deprovisioned = NetworkConnectivityTransportState._(
    TfArgLiteral('DEPROVISIONED'),
  );

  static const List<NetworkConnectivityTransportState> values = [
    creating,
    pendingConfig,
    pendingKey,
    active,
    deleting,
    deprovisioned,
  ];
}

/// Terraform `deletion_policy` for Network Connectivity transports.
extension type const NetworkConnectivityTransportDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkConnectivityTransportDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectivityTransportDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectivityTransportDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = NetworkConnectivityTransportDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = NetworkConnectivityTransportDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = NetworkConnectivityTransportDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<NetworkConnectivityTransportDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// IP stack for `google_network_connectivity_transport.stack_type`.
extension type const NetworkConnectivityTransportStackType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectivityTransportStackType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectivityTransportStackType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectivityTransportStackType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4Ipv6 = NetworkConnectivityTransportStackType._(
    TfArgLiteral('IPV4_IPV6'),
  );
  static const ipv4Only = NetworkConnectivityTransportStackType._(
    TfArgLiteral('IPV4_ONLY'),
  );

  static const List<NetworkConnectivityTransportStackType> values = [
    ipv4Ipv6,
    ipv4Only,
  ];
}

/// Factory wrapper for `google_network_connectivity_transport`.
///
/// The Transport resource is a top-level resource used by customers to control
/// Partner Cross-Cloud Interconnect (CCI) connections.
///
/// Partner Cross-Cloud Interconnect (CCI) transport for Network Connectivity.
///
/// Enable `networkconnectivity.googleapis.com` via [GoogleProjectService]
/// before apply. [network] must reference an existing VPC; [remoteProfile]
/// is the full URL of a `remoteTransportProfiles` resource in the same region.
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityTransport(
///   'aws_cci',
///   name: TfArg.literal('my-transport'),
///   region: TfArg.literal('us-east4'),
///   network: vpc.ref,
///   remoteProfile: TfArg.literal(
///     'https://networkconnectivity.googleapis.com/v1/projects/my-project/locations/us-east4/remoteTransportProfiles/aws-us-east-1',
///   ),
///   bandwidth: TfArg.literal('BPS_1G'),
/// );
/// ```
final class GoogleNetworkConnectivityTransport extends Resource {
  static const String tfType = 'google_network_connectivity_transport';

  GoogleNetworkConnectivityTransport(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> region,
    RefTo<GoogleComputeNetwork>? network,
    required TfArg<String> remoteProfile,
    TfArg<String>? description,
    NetworkConnectivityTransportBandwidth? bandwidth,
    TfArg<String>? remoteAccountId,
    TfArg<String>? providedActivationKey,
    TfArg<List<String>>? advertisedRoutes,
    NetworkConnectivityTransportStackType? stackType,
    TfArg<num>? mtuLimit,
    TfArg<Map<String, String>>? labels,
    NetworkConnectivityTransportDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           'network': ?network?.encodeAs('id'),
           'remote_profile': remoteProfile,
           'description': ?description,
           'bandwidth': ?bandwidth,
           'remote_account_id': ?remoteAccountId,
           'provided_activation_key': ?providedActivationKey,
           'advertised_routes': ?advertisedRoutes,
           'stack_type': ?stackType,
           'mtu_limit': ?mtuLimit,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityTransportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityTransport>`.
  RefTo<GoogleNetworkConnectivityTransport> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `generated_activation_key` attribute.
  TfRef<String> get generatedActivationKey =>
      TfRef.attribute<String>(this, 'generated_activation_key');

  /// Reference to `peering_network` attribute.
  TfRef<String> get peeringNetwork =>
      TfRef.attribute<String>(this, 'peering_network');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `advertised_routes` attribute.
  TfRef<List<String>> get advertisedRoutes =>
      TfRef.attribute<List<String>>(this, 'advertised_routes');

  /// Reference to `auto_accept` attribute.
  TfRef<bool> get autoAccept => TfRef.attribute<bool>(this, 'auto_accept');

  /// Reference to `bandwidth` attribute.
  TfRef<String> get bandwidth => TfRef.attribute<String>(this, 'bandwidth');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hub` attribute.
  TfRef<String> get hub => TfRef.attribute<String>(this, 'hub');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `mtu_limit` attribute.
  TfRef<num> get mtuLimit => TfRef.attribute<num>(this, 'mtu_limit');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `provided_activation_key` attribute.
  TfRef<String> get providedActivationKey =>
      TfRef.attribute<String>(this, 'provided_activation_key');

  /// Reference to `psc_routing_enabled` attribute.
  TfRef<bool> get pscRoutingEnabled =>
      TfRef.attribute<bool>(this, 'psc_routing_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `remote_account_id` attribute.
  TfRef<String> get remoteAccountId =>
      TfRef.attribute<String>(this, 'remote_account_id');

  /// Reference to `remote_profile` attribute.
  TfRef<String> get remoteProfile =>
      TfRef.attribute<String>(this, 'remote_profile');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_network_peering`.
const Set<String> _googleComputeNetworkPeeringSensitive = <String>{};

/// `stack_type` — IP version stack of the peering. Default (when unset)
/// is [ComputeNetworkPeeringStackType.ipv4Only].
extension type const ComputeNetworkPeeringStackType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeNetworkPeeringStackType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeNetworkPeeringStackType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeNetworkPeeringStackType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4Only = ComputeNetworkPeeringStackType._(
    TfArgLiteral('IPV4_ONLY'),
  );
  static const ipv4Ipv6 = ComputeNetworkPeeringStackType._(
    TfArgLiteral('IPV4_IPV6'),
  );

  static const List<ComputeNetworkPeeringStackType> values = [
    ipv4Only,
    ipv4Ipv6,
  ];
}

/// `update_strategy` — how changes to peering config are reconciled.
/// Default (when unset) is [ComputeNetworkPeeringUpdateStrategy.independent].
extension type const ComputeNetworkPeeringUpdateStrategy._(TfArg<String> _)
    implements TfArg<String> {
  ComputeNetworkPeeringUpdateStrategy.variable(String name)
    : this._(TfArg.variable(name));
  ComputeNetworkPeeringUpdateStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeNetworkPeeringUpdateStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const independent = ComputeNetworkPeeringUpdateStrategy._(
    TfArgLiteral('INDEPENDENT'),
  );
  static const consensus = ComputeNetworkPeeringUpdateStrategy._(
    TfArgLiteral('CONSENSUS'),
  );

  static const List<ComputeNetworkPeeringUpdateStrategy> values = [
    independent,
    consensus,
  ];
}

/// Factory wrapper for `google_compute_network_peering`.
final class GoogleComputeNetworkPeering extends Resource {
  static const String tfType = 'google_compute_network_peering';

  GoogleComputeNetworkPeering(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    required RefTo<GoogleComputeNetwork> peerNetwork,
    TfArg<bool>? exportCustomRoutes,
    TfArg<bool>? importCustomRoutes,
    TfArg<bool>? exportSubnetRoutesWithPublicIp,
    TfArg<bool>? importSubnetRoutesWithPublicIp,
    ComputeNetworkPeeringStackType? stackType,
    ComputeNetworkPeeringUpdateStrategy? updateStrategy,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network.encodeAs('id'),
           'peer_network': peerNetwork.encodeAs('id'),
           'export_custom_routes': ?exportCustomRoutes,
           'import_custom_routes': ?importCustomRoutes,
           'export_subnet_routes_with_public_ip':
               ?exportSubnetRoutesWithPublicIp,
           'import_subnet_routes_with_public_ip':
               ?importSubnetRoutesWithPublicIp,
           'stack_type': ?stackType,
           'update_strategy': ?updateStrategy,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkPeering>`.
  RefTo<GoogleComputeNetworkPeering> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `export_custom_routes` attribute.
  TfRef<bool> get exportCustomRoutes =>
      TfRef.attribute<bool>(this, 'export_custom_routes');

  /// Reference to `export_subnet_routes_with_public_ip` attribute.
  TfRef<bool> get exportSubnetRoutesWithPublicIp =>
      TfRef.attribute<bool>(this, 'export_subnet_routes_with_public_ip');

  /// Reference to `import_custom_routes` attribute.
  TfRef<bool> get importCustomRoutes =>
      TfRef.attribute<bool>(this, 'import_custom_routes');

  /// Reference to `import_subnet_routes_with_public_ip` attribute.
  TfRef<bool> get importSubnetRoutesWithPublicIp =>
      TfRef.attribute<bool>(this, 'import_subnet_routes_with_public_ip');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `peer_network` attribute.
  TfRef<String> get peerNetwork =>
      TfRef.attribute<String>(this, 'peer_network');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `update_strategy` attribute.
  TfRef<String> get updateStrategy =>
      TfRef.attribute<String>(this, 'update_strategy');
}

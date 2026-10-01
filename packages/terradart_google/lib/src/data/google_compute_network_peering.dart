// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_network_peering.dart';
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_network_peering`.
const Set<String> _googleComputeNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `google_compute_network_peering`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeNetworkPeering extends Data {
  static const String tfType = 'google_compute_network_peering';

  DataGoogleComputeNetworkPeering(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'network': network.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkPeeringSensitive;

  /// A reference to the `google_compute_network_peering` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeNetworkPeering>`.
  RefTo<GoogleComputeNetworkPeering> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `peer_network` attribute.
  TfRef<String> get peerNetwork =>
      TfRef.attribute<String>(this, 'peer_network');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `update_strategy` attribute.
  TfRef<String> get updateStrategy =>
      TfRef.attribute<String>(this, 'update_strategy');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_peering`.
const Set<String> _googleComputeNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `google_compute_network_peering`.
final class GoogleComputeNetworkPeering extends Resource {
  static const String tfType = 'google_compute_network_peering';

  GoogleComputeNetworkPeering({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    required TfArg<String> peerNetwork,
    TfArg<bool>? exportCustomRoutes,
    TfArg<bool>? importCustomRoutes,
    TfArg<bool>? exportSubnetRoutesWithPublicIp,
    TfArg<bool>? importSubnetRoutesWithPublicIp,
    TfArg<String>? stackType,
    TfArg<String>? updateStrategy,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           'peer_network': peerNetwork,
           if (exportCustomRoutes != null)
             'export_custom_routes': exportCustomRoutes,
           if (importCustomRoutes != null)
             'import_custom_routes': importCustomRoutes,
           if (exportSubnetRoutesWithPublicIp != null)
             'export_subnet_routes_with_public_ip':
                 exportSubnetRoutesWithPublicIp,
           if (importSubnetRoutesWithPublicIp != null)
             'import_subnet_routes_with_public_ip':
                 importSubnetRoutesWithPublicIp,
           if (stackType != null) 'stack_type': stackType,
           if (updateStrategy != null) 'update_strategy': updateStrategy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkPeeringSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');
}

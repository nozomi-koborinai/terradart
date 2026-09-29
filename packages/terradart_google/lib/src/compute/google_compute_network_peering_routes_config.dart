// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_network_peering_routes_config`.
const Set<String> _googleComputeNetworkPeeringRoutesConfigSensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_peering_routes_config`.
final class GoogleComputeNetworkPeeringRoutesConfig extends Resource {
  static const String tfType = 'google_compute_network_peering_routes_config';

  GoogleComputeNetworkPeeringRoutesConfig({
    required super.localName,
    required RefTo<GoogleComputeNetwork> network,
    required TfArg<String> peering,
    required TfArg<bool> importCustomRoutes,
    required TfArg<bool> exportCustomRoutes,
    TfArg<bool>? importSubnetRoutesWithPublicIp,
    TfArg<bool>? exportSubnetRoutesWithPublicIp,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network': network.encodeAs('name'),
           'peering': peering,
           'import_custom_routes': importCustomRoutes,
           'export_custom_routes': exportCustomRoutes,
           'import_subnet_routes_with_public_ip':
               ?importSubnetRoutesWithPublicIp,
           'export_subnet_routes_with_public_ip':
               ?exportSubnetRoutesWithPublicIp,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkPeeringRoutesConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkPeeringRoutesConfig>`.
  RefTo<GoogleComputeNetworkPeeringRoutesConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_peering_routes_config`.
const Set<String> _googleComputeNetworkPeeringRoutesConfigSensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_peering_routes_config`.
final class GoogleComputeNetworkPeeringRoutesConfig extends Resource {
  static const String tfType = 'google_compute_network_peering_routes_config';

  GoogleComputeNetworkPeeringRoutesConfig({
    required super.localName,
    required TfArg<String> network,
    required TfArg<String> peering,
    required TfArg<bool> importCustomRoutes,
    required TfArg<bool> exportCustomRoutes,
    TfArg<bool>? importSubnetRoutesWithPublicIp,
    TfArg<bool>? exportSubnetRoutesWithPublicIp,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network': network,
           'peering': peering,
           'import_custom_routes': importCustomRoutes,
           'export_custom_routes': exportCustomRoutes,
           if (importSubnetRoutesWithPublicIp != null)
             'import_subnet_routes_with_public_ip':
                 importSubnetRoutesWithPublicIp,
           if (exportSubnetRoutesWithPublicIp != null)
             'export_subnet_routes_with_public_ip':
                 exportSubnetRoutesWithPublicIp,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkPeeringRoutesConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

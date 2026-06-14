// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_network_endpoint`.
const Set<String> _googleComputeGlobalNetworkEndpointSensitive = <String>{};

/// Factory wrapper for `google_compute_global_network_endpoint`.
///
/// A Global Network endpoint represents a IP address and port combination that
/// exists outside of GCP. **NOTE**: Global network endpoints cannot be created
/// outside of a global network endpoint group.
final class GoogleComputeGlobalNetworkEndpoint extends Resource {
  static const String tfType = 'google_compute_global_network_endpoint';

  GoogleComputeGlobalNetworkEndpoint({
    required super.localName,
    TfArg<String>? fqdn,
    required TfArg<String> globalNetworkEndpointGroup,
    TfArg<String>? ipAddress,
    required TfArg<num> port,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (fqdn != null) 'fqdn': fqdn,
           'global_network_endpoint_group': globalNetworkEndpointGroup,
           if (ipAddress != null) 'ip_address': ipAddress,
           'port': port,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeGlobalNetworkEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

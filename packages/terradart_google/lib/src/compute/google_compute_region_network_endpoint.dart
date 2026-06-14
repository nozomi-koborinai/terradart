// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_endpoint`.
const Set<String> _googleComputeRegionNetworkEndpointSensitive = <String>{};

/// Factory wrapper for `google_compute_region_network_endpoint`.
///
/// A Region network endpoint represents a IP address/FQDN and port combination
/// that is part of a specific network endpoint group (NEG).
///
/// ~> **NOTE**: Network endpoints cannot be created outside of a network
/// endpoint group.
final class GoogleComputeRegionNetworkEndpoint extends Resource {
  static const String tfType = 'google_compute_region_network_endpoint';

  GoogleComputeRegionNetworkEndpoint({
    required super.localName,
    TfArg<num>? clientDestinationPort,
    TfArg<String>? fqdn,
    TfArg<String>? instance,
    TfArg<String>? ipAddress,
    required TfArg<num> port,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> regionNetworkEndpointGroup,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientDestinationPort != null)
             'client_destination_port': clientDestinationPort,
           if (fqdn != null) 'fqdn': fqdn,
           if (instance != null) 'instance': instance,
           if (ipAddress != null) 'ip_address': ipAddress,
           'port': port,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'region_network_endpoint_group': regionNetworkEndpointGroup,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_endpoint_id` attribute.
  TfRef<num> get networkEndpointId =>
      TfRef.attribute<num>(this, 'network_endpoint_id');
}

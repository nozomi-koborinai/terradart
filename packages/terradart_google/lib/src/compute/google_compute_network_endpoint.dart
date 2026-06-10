// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_endpoint`.
const Set<String> _googleComputeNetworkEndpointSensitive = <String>{};

/// Factory wrapper for `google_compute_network_endpoint`.
///
/// Registers an IP/port endpoint on a zonal [GoogleComputeNetworkEndpointGroup].
/// Used for hybrid / on-prem backends behind an L7 LB.
///
/// Example:
/// ```dart
/// GoogleComputeNetworkEndpoint(
///   localName: 'onprem_vm',
///   networkEndpointGroup: TfArg.ref(neg.id),
///   ipAddress: TfArg.literal('10.0.0.5'),
///   port: TfArg.literal(8080),
///   zone: TfArg.literal('asia-northeast1-a'),
/// );
/// ```
final class GoogleComputeNetworkEndpoint extends Resource {
  static const String tfType = 'google_compute_network_endpoint';

  GoogleComputeNetworkEndpoint({
    required super.localName,
    required TfArg<String> networkEndpointGroup,
    required TfArg<String> ipAddress,
    TfArg<num>? port,
    TfArg<String>? instance,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_endpoint_group': networkEndpointGroup,
           'ip_address': ipAddress,
           if (port != null) 'port': port,
           if (instance != null) 'instance': instance,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

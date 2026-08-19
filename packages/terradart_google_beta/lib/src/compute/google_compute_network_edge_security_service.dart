// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_edge_security_service`.
const Set<String> _googleComputeNetworkEdgeSecurityServiceSensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_edge_security_service`.
final class GoogleComputeNetworkEdgeSecurityService extends Resource {
  static const String tfType = 'google_compute_network_edge_security_service';

  GoogleComputeNetworkEdgeSecurityService({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? securityPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (securityPolicy != null) 'security_policy': securityPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkEdgeSecurityServiceSensitive;
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_global_network_endpoint_group.dart'
    show GoogleComputeGlobalNetworkEndpointGroup;

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
    required RefTo<GoogleComputeGlobalNetworkEndpointGroup>
    globalNetworkEndpointGroup,
    TfArg<String>? ipAddress,
    required TfArg<num> port,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fqdn': ?fqdn,
           'global_network_endpoint_group': globalNetworkEndpointGroup.encodeAs(
             'name',
           ),
           'ip_address': ?ipAddress,
           'port': port,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeGlobalNetworkEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeGlobalNetworkEndpoint>`.
  RefTo<GoogleComputeGlobalNetworkEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `global_network_endpoint_group` attribute.
  TfRef<String> get globalNetworkEndpointGroup =>
      TfRef.attribute<String>(this, 'global_network_endpoint_group');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

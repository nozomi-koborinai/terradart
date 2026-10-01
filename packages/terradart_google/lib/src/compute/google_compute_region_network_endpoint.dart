// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_region_network_endpoint_group.dart'
    show GoogleComputeRegionNetworkEndpointGroup;

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
    RefTo<GoogleComputeInstance>? instance,
    TfArg<String>? ipAddress,
    required TfArg<num> port,
    TfArg<String>? project,
    TfArg<String>? region,
    required RefTo<GoogleComputeRegionNetworkEndpointGroup>
    regionNetworkEndpointGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_destination_port': ?clientDestinationPort,
           'fqdn': ?fqdn,
           'instance': ?instance?.encodeAs('name'),
           'ip_address': ?ipAddress,
           'port': port,
           'project': ?project,
           'region': ?region,
           'region_network_endpoint_group': regionNetworkEndpointGroup.encodeAs(
             'name',
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkEndpoint>`.
  RefTo<GoogleComputeRegionNetworkEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_endpoint_id` attribute.
  TfRef<num> get networkEndpointId =>
      TfRef.attribute<num>(this, 'network_endpoint_id');

  /// Reference to `client_destination_port` attribute.
  TfRef<num> get clientDestinationPortRef =>
      TfRef.attribute<num>(this, 'client_destination_port');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdnRef => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `region_network_endpoint_group` attribute.
  TfRef<String> get regionNetworkEndpointGroupRef =>
      TfRef.attribute<String>(this, 'region_network_endpoint_group');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_network_endpoint_group.dart'
    show GoogleComputeNetworkEndpointGroup;

/// Sensitive field paths for `google_compute_network_endpoints`.
const Set<String> _googleComputeNetworkEndpointsSensitive = <String>{};

/// Typed helper for the `network_endpoints` block of
/// `google_compute_network_endpoints` (derived from provider schema).
@immutable
final class ComputeNetworkEndpoints {
  const ComputeNetworkEndpoints({this.instance, this.ipAddress, this.port});

  final RefTo<GoogleComputeInstance>? instance;

  final TfArg<String>? ipAddress;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'instance': ?instance?.encodeAs('name').toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_network_endpoints`.
///
/// A set of network endpoints belonging to a network endpoint group (NEG). A
/// single network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group (NEG). NEGs are zonal collections
/// of these endpoints for GCP resources within a single subnet. **NOTE**:
/// Network endpoints cannot be created outside of a network endpoint group.
///
/// This resource is authoritative for a single NEG. Any endpoints not specified
/// by this resource will be deleted when the resource configuration is applied.
///
/// -> **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this
/// resource with the lifecycle `replace_triggered_by` method, with the passed
/// Instance's ID.
///
/// Replaces the full set of endpoints on a
/// [GoogleComputeNetworkEndpointGroup] in one call (create/update/
/// destroy syncs the NEG membership list). Prefer this over many
/// single-endpoint resources when the set is small and owned by one stack.
final class GoogleComputeNetworkEndpoints extends Resource {
  static const String tfType = 'google_compute_network_endpoints';

  GoogleComputeNetworkEndpoints(
    super.localName, {
    required RefTo<GoogleComputeNetworkEndpointGroup> networkEndpointGroup,
    List<ComputeNetworkEndpoints>? networkEndpoints,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_endpoint_group': networkEndpointGroup.encodeAs('name'),
           if (networkEndpoints != null)
             'network_endpoints': TfArg.literal([
               for (final e in networkEndpoints) e.encode(),
             ]),
           'zone': ?zone,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkEndpointsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkEndpoints>`.
  RefTo<GoogleComputeNetworkEndpoints> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `network_endpoint_group` attribute.
  TfRef<String> get networkEndpointGroup =>
      TfRef.attribute<String>(this, 'network_endpoint_group');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

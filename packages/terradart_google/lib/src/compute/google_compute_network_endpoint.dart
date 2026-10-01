// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_network_endpoint_group.dart'
    show GoogleComputeNetworkEndpointGroup;

/// Sensitive field paths for `google_compute_network_endpoint`.
const Set<String> _googleComputeNetworkEndpointSensitive = <String>{};

/// Factory wrapper for `google_compute_network_endpoint`.
///
/// A Network endpoint represents a IP address and port combination that is part
/// of a specific network endpoint group (NEG). NEGs are zonal collections of
/// these endpoints for GCP resources within a single subnet. **NOTE**: Network
/// endpoints cannot be created outside of a network endpoint group.
///
/// -> **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this
/// resource with the lifecycle `replace_triggered_by` method, with the passed
/// Instance's ID.
///
/// Registers an IP/port endpoint on a zonal [GoogleComputeNetworkEndpointGroup].
/// Used for hybrid / on-prem backends behind an L7 LB.
///
/// Example:
/// ```dart
/// GoogleComputeNetworkEndpoint(
///   localName: 'onprem_vm',
///   networkEndpointGroup: neg.ref,
///   ipAddress: TfArg.literal('10.0.0.5'),
///   port: TfArg.literal(8080),
///   zone: TfArg.literal('asia-northeast1-a'),
/// );
/// ```
final class GoogleComputeNetworkEndpoint extends Resource {
  static const String tfType = 'google_compute_network_endpoint';

  GoogleComputeNetworkEndpoint({
    required super.localName,
    required RefTo<GoogleComputeNetworkEndpointGroup> networkEndpointGroup,
    required TfArg<String> ipAddress,
    TfArg<num>? port,
    RefTo<GoogleComputeInstance>? instance,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_endpoint_group': networkEndpointGroup.encodeAs('name'),
           'ip_address': ipAddress,
           'port': ?port,
           'instance': ?instance?.encodeAs('name'),
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkEndpoint>`.
  RefTo<GoogleComputeNetworkEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `network_endpoint_group` attribute.
  TfRef<String> get networkEndpointGroupRef =>
      TfRef.attribute<String>(this, 'network_endpoint_group');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}

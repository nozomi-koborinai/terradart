// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_cross_site_network.dart'
    show GoogleComputeCrossSiteNetwork;

/// Sensitive field paths for `google_compute_wire_group`.
const Set<String> _googleComputeWireGroupSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `google_compute_wire_group` (derived from provider schema).
@immutable
final class ComputeWireGroupEndpoints {
  const ComputeWireGroupEndpoints({required this.endpoint, this.interconnects});

  final TfArg<String> endpoint;

  final List<ComputeWireGroupInterconnects>? interconnects;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (interconnects != null)
      'interconnects': [for (final e in interconnects!) e.encode()],
  };
}

/// Typed helper for the `endpoints.interconnects` block of
/// `google_compute_wire_group` (derived from provider schema).
@immutable
final class ComputeWireGroupInterconnects {
  const ComputeWireGroupInterconnects({
    this.interconnect,
    required this.interconnectName,
    this.vlanTags,
  });

  final TfArg<String>? interconnect;

  final TfArg<String> interconnectName;

  final TfArg<List<num>>? vlanTags;

  Map<String, Object?> encode() => {
    'interconnect': ?interconnect?.toTfJson(),
    'interconnect_name': interconnectName.toTfJson(),
    'vlan_tags': ?vlanTags?.toTfJson(),
  };
}

/// Typed helper for the `wire_properties` block of
/// `google_compute_wire_group` (derived from provider schema).
@immutable
final class ComputeWireGroupWireProperties {
  const ComputeWireGroupWireProperties({
    required this.bandwidthAllocation,
    this.bandwidthUnmetered,
    this.faultResponse,
  });

  final TfArg<String> bandwidthAllocation;

  final TfArg<num>? bandwidthUnmetered;

  final TfArg<String>? faultResponse;

  Map<String, Object?> encode() => {
    'bandwidth_allocation': bandwidthAllocation.toTfJson(),
    'bandwidth_unmetered': ?bandwidthUnmetered?.toTfJson(),
    'fault_response': ?faultResponse?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_wire_group`.
///
/// The WireGroup resource represents a group of redundant wires between
/// interconnects in two different metros. Each WireGroup belongs to a
/// CrossSiteNetwork. A wire group defines endpoints and the wires which exist
/// between them.
///
/// Compute Engine **wire group** — Cross-Site / Partner Cross-Cloud
/// Interconnect wire group under a [GoogleComputeCrossSiteNetwork].
///
/// **Cost / apply:** gcp-cost: Network Connectivity Center `7BEB-7A51-4223`
/// Partner Cross Cloud Interconnect Managed Transport 10Gbps us-east4 SKU
/// `AAE5-BD60-3575` **$17.30/h** (100Gbps us-west1 `0ED2-0975-EF6E`
/// **$26.40/h**). billing-behavior: Cross-Site / wire-group / multicloud
/// data-transfer configs are the control plane for Partner Cross-Cloud
/// Interconnect managed transport; working stacks imply those circuit-hour
/// charges. **Never** wire into apply-smoke.
final class GoogleComputeWireGroup extends Resource {
  static const String tfType = 'google_compute_wire_group';

  GoogleComputeWireGroup({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleComputeCrossSiteNetwork> crossSiteNetwork,
    TfArg<String>? description,
    TfArg<bool>? adminEnabled,
    List<ComputeWireGroupEndpoints>? endpoints,
    ComputeWireGroupWireProperties? wireProperties,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'cross_site_network': crossSiteNetwork.encodeAs('name'),
           'description': ?description,
           'admin_enabled': ?adminEnabled,
           if (endpoints != null)
             'endpoints': TfArg.literal([
               for (final e in endpoints) e.encode(),
             ]),
           if (wireProperties != null)
             'wire_properties': TfArg.literal(wireProperties.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeWireGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeWireGroup>`.
  RefTo<GoogleComputeWireGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `topology` attribute.
  TfRef<List<Map<String, Object?>>> get topology =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'topology');

  /// Reference to `wires` attribute.
  TfRef<List<Map<String, Object?>>> get wires =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'wires');

  /// Reference to `admin_enabled` attribute.
  TfRef<bool> get adminEnabled => TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `cross_site_network` attribute.
  TfRef<String> get crossSiteNetwork =>
      TfRef.attribute<String>(this, 'cross_site_network');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

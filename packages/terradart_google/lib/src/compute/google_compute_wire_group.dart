// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_wire_group`.
const Set<String> _googleComputeWireGroupSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `google_compute_wire_group` (derived from provider schema).
@immutable
final class ComputeWireGroupEndpoints {
  const ComputeWireGroupEndpoints({required this.endpoint, this.interconnects});

  final TfArg<String> endpoint;

  final List<ComputeWireGroupEndpointsInterconnects>? interconnects;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (interconnects != null)
      'interconnects': [for (final e in interconnects!) e.encode()],
  };
}

/// Typed helper for the `endpoints.interconnects` block of
/// `google_compute_wire_group` (derived from provider schema).
@immutable
final class ComputeWireGroupEndpointsInterconnects {
  const ComputeWireGroupEndpointsInterconnects({
    this.interconnect,
    required this.interconnectName,
    this.vlanTags,
  });

  final TfArg<String>? interconnect;

  final TfArg<String> interconnectName;

  final TfArg<List<Object?>>? vlanTags;

  Map<String, Object?> encode() => {
    if (interconnect != null) 'interconnect': interconnect!.toTfJson(),
    'interconnect_name': interconnectName.toTfJson(),
    if (vlanTags != null) 'vlan_tags': vlanTags!.toTfJson(),
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
    if (bandwidthUnmetered != null)
      'bandwidth_unmetered': bandwidthUnmetered!.toTfJson(),
    if (faultResponse != null) 'fault_response': faultResponse!.toTfJson(),
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
    required TfArg<String> crossSiteNetwork,
    TfArg<String>? description,
    TfArg<bool>? adminEnabled,
    List<ComputeWireGroupEndpoints>? endpoints,
    ComputeWireGroupWireProperties? wireProperties,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'cross_site_network': crossSiteNetwork,
           if (description != null) 'description': description,
           if (adminEnabled != null) 'admin_enabled': adminEnabled,
           if (endpoints != null)
             'endpoints': TfArg.literal([
               for (final e in endpoints) e.encode(),
             ]),
           if (wireProperties != null)
             'wire_properties': TfArg.literal(wireProperties.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeWireGroupSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

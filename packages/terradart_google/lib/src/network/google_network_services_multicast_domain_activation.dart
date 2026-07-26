// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_domain_activation`.
const Set<String> _googleNetworkServicesMulticastDomainActivationSensitive =
    <String>{};

/// Typed helper for the `traffic_spec` block of
/// `google_network_services_multicast_domain_activation` (derived from provider schema).
@immutable
final class NetworkServicesMulticastDomainActivationTrafficSpec {
  const NetworkServicesMulticastDomainActivationTrafficSpec({
    this.aggrEgressPps,
    this.aggrIngressPps,
    this.avgPacketSize,
    this.maxPerGroupIngressPps,
    this.maxPerGroupSubscribers,
  });

  final TfArg<String>? aggrEgressPps;

  final TfArg<String>? aggrIngressPps;

  final TfArg<num>? avgPacketSize;

  final TfArg<String>? maxPerGroupIngressPps;

  final TfArg<String>? maxPerGroupSubscribers;

  Map<String, Object?> encode() => {
    if (aggrEgressPps != null) 'aggr_egress_pps': aggrEgressPps!.toTfJson(),
    if (aggrIngressPps != null) 'aggr_ingress_pps': aggrIngressPps!.toTfJson(),
    if (avgPacketSize != null) 'avg_packet_size': avgPacketSize!.toTfJson(),
    if (maxPerGroupIngressPps != null)
      'max_per_group_ingress_pps': maxPerGroupIngressPps!.toTfJson(),
    if (maxPerGroupSubscribers != null)
      'max_per_group_subscribers': maxPerGroupSubscribers!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_multicast_domain_activation`.
///
/// Create a multicast domain activation in the specified location of the
/// current project.
///
/// Network Services **multicast domain activation** — activates a domain in a region (starts infra billing).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU (Networking
/// `E505-1604-58F8` list_skus keyword multicast / "Cloud Multicast" → 0; no
/// dedicated Multicast service). Docs
/// (https://cloud.google.com/vpc/docs/multicast): multicast infrastructure
/// is billed to admin projects with **domain activations** — billing starts
/// when a domain activation is created; plus multicast data processing on
/// consumer projects (and NCC Advanced Data Networking for producer→infra
/// traffic). Allowlisted GA product. billing-behavior: existence / usage
/// billed from activation. **Never** wire into apply-smoke.
final class GoogleNetworkServicesMulticastDomainActivation extends Resource {
  static const String tfType =
      'google_network_services_multicast_domain_activation';

  GoogleNetworkServicesMulticastDomainActivation({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> multicastDomainActivationId,
    required TfArg<String> multicastDomain,
    NetworkServicesMulticastDomainActivationTrafficSpec? trafficSpec,
    TfArg<bool>? disablePlacementPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'multicast_domain_activation_id': multicastDomainActivationId,
           'multicast_domain': multicastDomain,
           if (trafficSpec != null)
             'traffic_spec': TfArg.literal(trafficSpec.encode()),
           if (disablePlacementPolicy != null)
             'disable_placement_policy': disablePlacementPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastDomainActivationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_network` attribute.
  TfRef<String> get adminNetwork =>
      TfRef.attribute<String>(this, 'admin_network');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

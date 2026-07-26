// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_cross_site_network`.
const Set<String> _googleComputeCrossSiteNetworkSensitive = <String>{};

/// Factory wrapper for `google_compute_cross_site_network`.
///
/// Represents a cross-site-network resource. A CrossSiteNetwork is used to
/// establish L2 connectivity between groups of Interconnects.
///
/// Compute Engine **cross-site network** — global Cross-Site Interconnect /
/// Partner Cross-Cloud Interconnect topology container.
///
/// **Cost / apply:** gcp-cost: Network Connectivity Center `7BEB-7A51-4223`
/// Partner Cross Cloud Interconnect Managed Transport 10Gbps us-east4 SKU
/// `AAE5-BD60-3575` **$17.30/h** (100Gbps us-west1 `0ED2-0975-EF6E`
/// **$26.40/h**). billing-behavior: Cross-Site / wire-group / multicloud
/// data-transfer configs are the control plane for Partner Cross-Cloud
/// Interconnect managed transport; working stacks imply those circuit-hour
/// charges. **Never** wire into apply-smoke.
final class GoogleComputeCrossSiteNetwork extends Resource {
  static const String tfType = 'google_compute_cross_site_network';

  GoogleComputeCrossSiteNetwork({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeCrossSiteNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

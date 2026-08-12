// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_composite_health_check`.
const Set<String> _googleComputeRegionCompositeHealthCheckSensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_composite_health_check`.
///
/// A composite health check resource specifies the health source resources and
/// the health destination resource to which the aggregated health result from
/// the health source resources is delivered.
///
/// Regional composite health check that AND's one or more
/// [GoogleComputeRegionHealthSource] results against a regional INTERNAL /
/// INTERNAL_MANAGED forwarding-rule destination ([healthDestination]).
final class GoogleComputeRegionCompositeHealthCheck extends Resource {
  static const String tfType = 'google_compute_region_composite_health_check';

  GoogleComputeRegionCompositeHealthCheck({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    required TfArg<String> healthDestination,
    TfArg<List<String>>? healthSources,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           'health_destination': healthDestination,
           if (healthSources != null) 'health_sources': healthSources,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionCompositeHealthCheckSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}

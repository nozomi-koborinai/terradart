// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_forwarding_rule.dart'
    show GoogleComputeForwardingRule;

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
    required RefTo<GoogleComputeForwardingRule> healthDestination,
    TfArg<List<String>>? healthSources,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           'health_destination': healthDestination.encodeAs('self_link'),
           'health_sources': ?healthSources,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionCompositeHealthCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionCompositeHealthCheck>`.
  RefTo<GoogleComputeRegionCompositeHealthCheck> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `health_destination` attribute.
  TfRef<String> get healthDestination =>
      TfRef.attribute<String>(this, 'health_destination');

  /// Reference to `health_sources` attribute.
  TfRef<List<String>> get healthSources =>
      TfRef.attribute<List<String>>(this, 'health_sources');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}

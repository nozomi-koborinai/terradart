// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_health_source`.
const Set<String> _googleComputeRegionHealthSourceSensitive = <String>{};

/// Compute Region Health Source Source enum for `source_type`.
enum ComputeRegionHealthSourceSourceType implements TerraformEnum {
  backendService('BACKEND_SERVICE');

  const ComputeRegionHealthSourceSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_health_source`.
///
/// A health source resource specifies the source resources and the health
/// aggregation policy applied to the source resources to determine the
/// aggregated health status.
///
/// Regional health source that aggregates backend-service health via a
/// [GoogleComputeRegionHealthAggregationPolicy]. [sourceType] must be
/// `BACKEND_SERVICE`; [sources] is a single INTERNAL / INTERNAL_MANAGED
/// backend service URL.
final class GoogleComputeRegionHealthSource extends Resource {
  static const String tfType = 'google_compute_region_health_source';

  GoogleComputeRegionHealthSource({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    required TfArg<ComputeRegionHealthSourceSourceType> sourceType,
    TfArg<String>? healthAggregationPolicy,
    TfArg<List<String>>? sources,
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
           'source_type': sourceType,
           if (healthAggregationPolicy != null)
             'health_aggregation_policy': healthAggregationPolicy,
           if (sources != null) 'sources': sources,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionHealthSourceSensitive;

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

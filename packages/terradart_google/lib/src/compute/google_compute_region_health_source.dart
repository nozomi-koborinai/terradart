// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_health_source`.
const Set<String> _googleComputeRegionHealthSourceSensitive = <String>{};

/// Compute Region Health Source enum for `source_type`.
enum ComputeRegionHealthSourceType implements TerraformEnum {
  backendService('BACKEND_SERVICE');

  const ComputeRegionHealthSourceType(this.terraformValue);
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
    required TfArg<ComputeRegionHealthSourceType> sourceType,
    TfArg<String>? healthAggregationPolicy,
    TfArg<List<String>>? sources,
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
           'source_type': sourceType,
           'health_aggregation_policy': ?healthAggregationPolicy,
           'sources': ?sources,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionHealthSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionHealthSource>`.
  RefTo<GoogleComputeRegionHealthSource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `health_aggregation_policy` attribute.
  TfRef<String> get healthAggregationPolicyRef =>
      TfRef.attribute<String>(this, 'health_aggregation_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceTypeRef =>
      TfRef.attribute<String>(this, 'source_type');

  /// Reference to `sources` attribute.
  TfRef<List<String>> get sourcesRef =>
      TfRef.attribute<List<String>>(this, 'sources');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}

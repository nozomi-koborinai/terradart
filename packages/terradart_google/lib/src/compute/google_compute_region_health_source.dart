// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_backend_service.dart'
    show GoogleComputeRegionBackendService;

/// Sensitive field paths for `google_compute_region_health_source`.
const Set<String> _googleComputeRegionHealthSourceSensitive = <String>{};

/// Compute Region Health Source enum for `source_type`.
extension type const ComputeRegionHealthSourceType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRegionHealthSourceType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionHealthSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionHealthSourceType.arg(TfArg<String> arg) : this._(arg);

  static const backendService = ComputeRegionHealthSourceType._(
    TfArgLiteral('BACKEND_SERVICE'),
  );

  static const List<ComputeRegionHealthSourceType> values = [backendService];
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

  GoogleComputeRegionHealthSource(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> region,
    required ComputeRegionHealthSourceType sourceType,
    TfArg<String>? healthAggregationPolicy,
    TfArg<List<RefTo<GoogleComputeRegionBackendService>>>? sources,
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
           'sources': ?sources?.encodeAs('self_link'),
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

  /// Reference to `health_aggregation_policy` attribute.
  TfRef<String> get healthAggregationPolicy =>
      TfRef.attribute<String>(this, 'health_aggregation_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `sources` attribute.
  TfRef<List<String>> get sources =>
      TfRef.attribute<List<String>>(this, 'sources');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}

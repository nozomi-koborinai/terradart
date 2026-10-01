// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_health_aggregation_policy`.
const Set<String> _googleComputeRegionHealthAggregationPolicySensitive =
    <String>{};

/// Compute Region Health Aggregation Policy enum for `policy_type`.
enum ComputeRegionHealthAggregationPolicyType implements TerraformEnum {
  dnsPublicIpPolicy('DNS_PUBLIC_IP_POLICY'),
  backendServicePolicy('BACKEND_SERVICE_POLICY');

  const ComputeRegionHealthAggregationPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_health_aggregation_policy`.
///
/// The Health Aggregation Policy specifies how to aggregate the service's
/// constituent source health status to determine an aggregated health status
/// result for the service. For example, you can specify a criteria such as
/// “Consider the Health Source as `Healthy` if there are at least 5 healthy
/// backend endpoints”. Or, you can specify a criteria like “Consider the Health
/// Source as `Healthy` if minimum 60% of endpoints in the Backend are healthy”.
/// The Health Aggregation Policy is applied to each Health Source (e.g. Backend
/// Service) individually.
///
/// Regional health aggregation policy used by
/// [GoogleComputeRegionHealthSource] / composite health checks. For regional
/// resources set [policyType] to `BACKEND_SERVICE_POLICY`.
final class GoogleComputeRegionHealthAggregationPolicy extends Resource {
  static const String tfType =
      'google_compute_region_health_aggregation_policy';

  GoogleComputeRegionHealthAggregationPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    TfArg<ComputeRegionHealthAggregationPolicyType>? policyType,
    TfArg<num>? healthyPercentThreshold,
    TfArg<num>? minHealthyThreshold,
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
           'policy_type': ?policyType,
           'healthy_percent_threshold': ?healthyPercentThreshold,
           'min_healthy_threshold': ?minHealthyThreshold,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionHealthAggregationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionHealthAggregationPolicy>`.
  RefTo<GoogleComputeRegionHealthAggregationPolicy> get ref => RefTo.of(this);

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

  /// Reference to `healthy_percent_threshold` attribute.
  TfRef<num> get healthyPercentThresholdRef =>
      TfRef.attribute<num>(this, 'healthy_percent_threshold');

  /// Reference to `min_healthy_threshold` attribute.
  TfRef<num> get minHealthyThresholdRef =>
      TfRef.attribute<num>(this, 'min_healthy_threshold');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyTypeRef =>
      TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}

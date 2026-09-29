// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleStorageBucket;

/// Sensitive field paths for `google_compute_region_backend_bucket`.
const Set<String> _googleComputeRegionBackendBucketSensitive = <String>{};

/// Compute Region Backend Bucket Load Balancing enum for `load_balancing_scheme`.
enum ComputeRegionBackendBucketLoadBalancingScheme implements TerraformEnum {
  internalManaged('INTERNAL_MANAGED'),
  externalManaged('EXTERNAL_MANAGED');

  const ComputeRegionBackendBucketLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_backend_bucket`.
///
/// Regional backend buckets allow you to use Google Cloud Storage buckets with
/// regional HTTP(S) load balancing.
///
/// A regional HTTP(S) load balancer can direct traffic to specified URLs to a
/// backend bucket rather than a backend service. It can send requests for
/// static content to a Cloud Storage bucket and requests for dynamic content to
/// a virtual machine instance.
///
/// Regional backend buckets are used with: - Regional internal Application Load
/// Balancers - Regional external Application Load Balancers
///
/// ~> **Note:** Regional backend buckets have important limitations: - Cloud
/// CDN cannot be enabled - Only public buckets are supported (private bucket
/// access is not available) - Only GET requests are supported - The bucket must
/// be in the same region as the load balancer - Single-region buckets only
/// (multi-region and dual-region buckets are not supported)
final class GoogleComputeRegionBackendBucket extends Resource {
  static const String tfType = 'google_compute_region_backend_bucket';

  GoogleComputeRegionBackendBucket({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucketName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<ComputeRegionBackendBucketLoadBalancingScheme>? loadBalancingScheme,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'bucket_name': bucketName.encodeAs('name'),
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'load_balancing_scheme': ?loadBalancingScheme,
           'name': name,
           'project': ?project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionBackendBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendBucket>`.
  RefTo<GoogleComputeRegionBackendBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}

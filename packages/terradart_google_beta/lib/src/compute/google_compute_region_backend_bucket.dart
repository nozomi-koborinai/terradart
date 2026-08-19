// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_backend_bucket`.
const Set<String> _googleComputeRegionBackendBucketSensitive = <String>{};

/// Factory wrapper for `google_compute_region_backend_bucket`.
final class GoogleComputeRegionBackendBucket extends Resource {
  static const String tfType = 'google_compute_region_backend_bucket';

  GoogleComputeRegionBackendBucket({
    required super.localName,
    required TfArg<String> bucketName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? loadBalancingScheme,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'bucket_name': bucketName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (loadBalancingScheme != null)
             'load_balancing_scheme': loadBalancingScheme,
           'name': name,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionBackendBucketSensitive;
}

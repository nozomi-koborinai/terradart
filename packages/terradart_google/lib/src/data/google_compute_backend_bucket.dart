// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_bucket`.
const Set<String> _googleComputeBackendBucketSensitive = <String>{};

/// Factory wrapper for `google_compute_backend_bucket`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeBackendBucket extends Data {
  static const String tfType = 'google_compute_backend_bucket';

  DataGoogleComputeBackendBucket({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeBackendBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `cdn_policy` attribute.
  TfRef<List<Map<String, Object?>>> get cdnPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cdn_policy');

  /// Reference to `compression_mode` attribute.
  TfRef<String> get compressionMode =>
      TfRef.attribute<String>(this, 'compression_mode');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `custom_response_headers` attribute.
  TfRef<List<String>> get customResponseHeaders =>
      TfRef.attribute<List<String>>(this, 'custom_response_headers');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edge_security_policy` attribute.
  TfRef<String> get edgeSecurityPolicy =>
      TfRef.attribute<String>(this, 'edge_security_policy');

  /// Reference to `enable_cdn` attribute.
  TfRef<bool> get enableCdn => TfRef.attribute<bool>(this, 'enable_cdn');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}

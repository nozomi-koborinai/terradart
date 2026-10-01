// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_backend_bucket.dart'
    show GoogleComputeBackendBucket;

/// Sensitive field paths for `google_compute_backend_bucket_signed_url_key`.
const Set<String> _googleComputeBackendBucketSignedUrlKeySensitive = <String>{
  'key_value',
};

/// Factory wrapper for `google_compute_backend_bucket_signed_url_key`.
///
/// A key for signing Cloud CDN signed URLs for BackendBuckets.
///
/// Cloud CDN signed-URL key on a [GoogleComputeBackendBucket].
/// [keyValue] is a 128-bit RFC 4648 §5 base64url secret — pass it via
/// [TfArg.variable], not a literal (synth rejects sensitive literals).
final class GoogleComputeBackendBucketSignedUrlKey extends Resource {
  static const String tfType = 'google_compute_backend_bucket_signed_url_key';

  GoogleComputeBackendBucketSignedUrlKey(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeBackendBucket> backendBucket,
    required Sensitive<String> keyValue,
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
           'backend_bucket': backendBucket.encodeAs('name'),
           'key_value': keyValue,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketSignedUrlKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendBucketSignedUrlKey>`.
  RefTo<GoogleComputeBackendBucketSignedUrlKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_bucket` attribute.
  TfRef<String> get backendBucket =>
      TfRef.attribute<String>(this, 'backend_bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `key_value` attribute.
  TfRef<String> get keyValue => TfRef.attribute<String>(this, 'key_value');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

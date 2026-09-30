// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service_signed_url_key`.
const Set<String> _googleComputeBackendServiceSignedUrlKeySensitive = <String>{
  'key_value',
};

/// Factory wrapper for `google_compute_backend_service_signed_url_key`.
///
/// A key for signing Cloud CDN signed URLs for Backend Services.
///
/// Cloud CDN signed-URL key on a [GoogleComputeBackendService].
/// [keyValue] is a 128-bit RFC 4648 §5 base64url secret — pass it via
/// [TfArg.variable], not a literal (synth rejects sensitive literals).
final class GoogleComputeBackendServiceSignedUrlKey extends Resource {
  static const String tfType = 'google_compute_backend_service_signed_url_key';

  GoogleComputeBackendServiceSignedUrlKey({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> backendService,
    required TfArg<String> keyValue,
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
           'backend_service': backendService,
           'key_value': keyValue,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceSignedUrlKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendServiceSignedUrlKey>`.
  RefTo<GoogleComputeBackendServiceSignedUrlKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_service` attribute.
  TfRef<String> get backendServiceRef =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `key_value` attribute.
  TfRef<String> get keyValueRef => TfRef.attribute<String>(this, 'key_value');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

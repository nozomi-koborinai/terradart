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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'backend_service': backendService,
           'key_value': keyValue,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceSignedUrlKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

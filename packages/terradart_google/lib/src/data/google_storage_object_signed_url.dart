// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_object_signed_url`.
const Set<String> _googleStorageObjectSignedUrlSensitive = <String>{
  'credentials',
};

/// Factory wrapper for `google_storage_object_signed_url`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageObjectSignedUrl extends Data {
  static const String tfType = 'google_storage_object_signed_url';

  DataGoogleStorageObjectSignedUrl(
    super.localName, {
    required RefTo<GoogleStorageBucket> bucket,
    TfArg<String>? contentMd5,
    TfArg<String>? contentType,
    TfArg<String>? credentials,
    TfArg<String>? duration,
    TfArg<Map<String, String>>? extensionHeaders,
    TfArg<String>? httpMethod,
    required TfArg<String> path,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'content_md5': ?contentMd5,
           'content_type': ?contentType,
           'credentials': ?credentials,
           'duration': ?duration,
           'extension_headers': ?extensionHeaders,
           'http_method': ?httpMethod,
           'path': path,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageObjectSignedUrlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `signed_url` attribute.
  TfRef<String> get signedUrl => TfRef.attribute<String>(this, 'signed_url');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `content_md5` attribute.
  TfRef<String> get contentMd5 => TfRef.attribute<String>(this, 'content_md5');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `credentials` attribute.
  TfRef<String> get credentials => TfRef.attribute<String>(this, 'credentials');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `extension_headers` attribute.
  TfRef<Map<String, String>> get extensionHeaders =>
      TfRef.attribute<Map<String, String>>(this, 'extension_headers');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');
}

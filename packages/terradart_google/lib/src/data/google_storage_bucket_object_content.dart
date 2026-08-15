// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_object_content`.
const Set<String> _googleStorageBucketObjectContentSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_object_content`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageBucketObjectContent extends Data {
  static const String tfType = 'google_storage_bucket_object_content';

  DataGoogleStorageBucketObjectContent({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? content,
    required TfArg<String> name,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (content != null) 'content': content,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketObjectContentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `content_base64` attribute.
  TfRef<String> get contentBase64 =>
      TfRef.attribute<String>(this, 'content_base64');

  /// Reference to `content_base64sha512` attribute.
  TfRef<String> get contentBase64sha512 =>
      TfRef.attribute<String>(this, 'content_base64sha512');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_hexsha512` attribute.
  TfRef<String> get contentHexsha512 =>
      TfRef.attribute<String>(this, 'content_hexsha512');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguage =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `contexts` attribute.
  TfRef<List<Map<String, Object?>>> get contexts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'contexts');

  /// Reference to `crc32c` attribute.
  TfRef<String> get crc32c => TfRef.attribute<String>(this, 'crc32c');

  /// Reference to `customer_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get customerEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'customer_encryption');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `detect_md5hash` attribute.
  TfRef<String> get detectMd5hash =>
      TfRef.attribute<String>(this, 'detect_md5hash');

  /// Reference to `event_based_hold` attribute.
  TfRef<bool> get eventBasedHold =>
      TfRef.attribute<bool>(this, 'event_based_hold');

  /// Reference to `force_empty_content_type` attribute.
  TfRef<bool> get forceEmptyContentType =>
      TfRef.attribute<bool>(this, 'force_empty_content_type');

  /// Reference to `generation` attribute.
  TfRef<num> get generation => TfRef.attribute<num>(this, 'generation');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `md5hash` attribute.
  TfRef<String> get md5hash => TfRef.attribute<String>(this, 'md5hash');

  /// Reference to `md5hexhash` attribute.
  TfRef<String> get md5hexhash => TfRef.attribute<String>(this, 'md5hexhash');

  /// Reference to `media_link` attribute.
  TfRef<String> get mediaLink => TfRef.attribute<String>(this, 'media_link');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `output_name` attribute.
  TfRef<String> get outputName => TfRef.attribute<String>(this, 'output_name');

  /// Reference to `retention` attribute.
  TfRef<List<Map<String, Object?>>> get retention =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retention');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_md5hash` attribute.
  TfRef<String> get sourceMd5hash =>
      TfRef.attribute<String>(this, 'source_md5hash');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `temporary_hold` attribute.
  TfRef<bool> get temporaryHold =>
      TfRef.attribute<bool>(this, 'temporary_hold');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket_object.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_object`.
const Set<String> _awsS3BucketObjectSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_object`.
final class DataAwsS3BucketObject extends Data {
  static const String tfType = 'aws_s3_bucket_object';

  DataAwsS3BucketObject({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    required TfArg<String> key,
    TfArg<String>? range,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? versionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'key': key,
           'range': ?range,
           'region': ?region,
           'tags': ?tags,
           'version_id': ?versionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketObjectSensitive;

  /// A reference to the `aws_s3_bucket_object` this data source reads, for
  /// arguments typed `RefTo<AwsS3BucketObject>`.
  RefTo<AwsS3BucketObject> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `bucket_key_enabled` attribute.
  TfRef<bool> get bucketKeyEnabled =>
      TfRef.attribute<bool>(this, 'bucket_key_enabled');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguage =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_length` attribute.
  TfRef<num> get contentLength => TfRef.attribute<num>(this, 'content_length');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `expires` attribute.
  TfRef<String> get expires => TfRef.attribute<String>(this, 'expires');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `object_lock_legal_hold_status` attribute.
  TfRef<String> get objectLockLegalHoldStatus =>
      TfRef.attribute<String>(this, 'object_lock_legal_hold_status');

  /// Reference to `object_lock_mode` attribute.
  TfRef<String> get objectLockMode =>
      TfRef.attribute<String>(this, 'object_lock_mode');

  /// Reference to `object_lock_retain_until_date` attribute.
  TfRef<String> get objectLockRetainUntilDate =>
      TfRef.attribute<String>(this, 'object_lock_retain_until_date');

  /// Reference to `server_side_encryption` attribute.
  TfRef<String> get serverSideEncryption =>
      TfRef.attribute<String>(this, 'server_side_encryption');

  /// Reference to `sse_kms_key_id` attribute.
  TfRef<String> get sseKmsKeyId =>
      TfRef.attribute<String>(this, 'sse_kms_key_id');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `website_redirect_location` attribute.
  TfRef<String> get websiteRedirectLocation =>
      TfRef.attribute<String>(this, 'website_redirect_location');
}

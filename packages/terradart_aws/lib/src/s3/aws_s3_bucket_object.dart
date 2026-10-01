// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_object`.
const Set<String> _awsS3BucketObjectSensitive = <String>{};

/// S3 Bucket Object enum for `acl`.
enum S3BucketObjectAcl implements TerraformEnum {
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  awsExecRead('aws-exec-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control');

  const S3BucketObjectAcl(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
enum S3BucketObjectLockLegalHoldStatus implements TerraformEnum {
  on('ON'),
  off('OFF');

  const S3BucketObjectLockLegalHoldStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Object Lock enum for `object_lock_mode`.
enum S3BucketObjectLockMode implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3BucketObjectLockMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Object Server Side enum for `server_side_encryption`.
enum S3BucketObjectServerSideEncryption implements TerraformEnum {
  aes256('AES256'),
  awsFsx('aws:fsx'),
  awsBackup('aws:backup'),
  awsKms('aws:kms'),
  awsKmsDsse('aws:kms:dsse');

  const S3BucketObjectServerSideEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Object Storage enum for `storage_class`.
enum S3BucketObjectStorageClass implements TerraformEnum {
  standard('STANDARD'),
  reducedRedundancy('REDUCED_REDUNDANCY'),
  glacier('GLACIER'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  deepArchive('DEEP_ARCHIVE'),
  outposts('OUTPOSTS'),
  glacierIr('GLACIER_IR'),
  snow('SNOW'),
  expressOnezone('EXPRESS_ONEZONE'),
  fsxOpenzfs('FSX_OPENZFS'),
  fsxOntap('FSX_ONTAP'),
  awsBackupWarm('AWS_BACKUP_WARM'),
  awsBackupLowCostWarm('AWS_BACKUP_LOW_COST_WARM');

  const S3BucketObjectStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `content`, `content_base64`, `source` on `aws_s3_bucket_object`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class S3BucketObjectBody {
  const S3BucketObjectBody();

  /// Sets `content`.
  const factory S3BucketObjectBody.content(TfArg<String> content) =
      S3BucketObjectBodyContent;

  /// Sets `content_base64`.
  const factory S3BucketObjectBody.contentBase64(TfArg<String> contentBase64) =
      S3BucketObjectBodyContentBase64;

  /// Sets `source`.
  const factory S3BucketObjectBody.source(TfArg<String> source) =
      S3BucketObjectBodySource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectBody.content] choice: sets `content`.
final class S3BucketObjectBodyContent extends S3BucketObjectBody {
  const S3BucketObjectBodyContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [S3BucketObjectBody.contentBase64] choice: sets `content_base64`.
final class S3BucketObjectBodyContentBase64 extends S3BucketObjectBody {
  const S3BucketObjectBodyContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content_base64': contentBase64};
}

/// The [S3BucketObjectBody.source] choice: sets `source`.
final class S3BucketObjectBodySource extends S3BucketObjectBody {
  const S3BucketObjectBodySource(this.source);

  final TfArg<String> source;

  @override
  String get blockKey => 'source';

  @override
  Map<String, Object?> encode() => {'source': source.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source': source};
}

/// At most one of `etag`, `kms_key_id` on `aws_s3_bucket_object`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.etag(...)`.
sealed class S3BucketObjectIntegrity {
  const S3BucketObjectIntegrity();

  /// Sets `etag`.
  const factory S3BucketObjectIntegrity.etag(TfArg<String> etag) =
      S3BucketObjectIntegrityEtag;

  /// Sets `kms_key_id`.
  const factory S3BucketObjectIntegrity.kmsKeyId(RefTo<AwsKmsKey> kmsKeyId) =
      S3BucketObjectIntegrityKmsKeyId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectIntegrity.etag] choice: sets `etag`.
final class S3BucketObjectIntegrityEtag extends S3BucketObjectIntegrity {
  const S3BucketObjectIntegrityEtag(this.etag);

  final TfArg<String> etag;

  @override
  String get blockKey => 'etag';

  @override
  Map<String, Object?> encode() => {'etag': etag.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'etag': etag};
}

/// The [S3BucketObjectIntegrity.kmsKeyId] choice: sets `kms_key_id`.
final class S3BucketObjectIntegrityKmsKeyId extends S3BucketObjectIntegrity {
  const S3BucketObjectIntegrityKmsKeyId(this.kmsKeyId);

  final RefTo<AwsKmsKey> kmsKeyId;

  @override
  String get blockKey => 'kms_key_id';

  @override
  Map<String, Object?> encode() => {
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kms_key_id': kmsKeyId.encodeAs('arn'),
  };
}

/// Factory wrapper for `aws_s3_bucket_object`.
final class AwsS3BucketObject extends Resource {
  static const String tfType = 'aws_s3_bucket_object';

  AwsS3BucketObject(
    super.localName, {
    TfArg<S3BucketObjectAcl>? acl,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    S3BucketObjectBody? body,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    S3BucketObjectIntegrity? integrity,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3BucketObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3BucketObjectLockMode>? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    TfArg<S3BucketObjectServerSideEncryption>? serverSideEncryption,
    TfArg<String>? sourceHash,
    TfArg<S3BucketObjectStorageClass>? storageClass,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? websiteRedirect,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl': ?acl,
           'bucket': bucket.encodeAs('id'),
           'bucket_key_enabled': ?bucketKeyEnabled,
           'cache_control': ?cacheControl,
           ...?body?.argMap,
           'content_disposition': ?contentDisposition,
           'content_encoding': ?contentEncoding,
           'content_language': ?contentLanguage,
           'content_type': ?contentType,
           ...?integrity?.argMap,
           'force_destroy': ?forceDestroy,
           'key': key,
           'metadata': ?metadata,
           'object_lock_legal_hold_status': ?objectLockLegalHoldStatus,
           'object_lock_mode': ?objectLockMode,
           'object_lock_retain_until_date': ?objectLockRetainUntilDate,
           'region': ?region,
           'server_side_encryption': ?serverSideEncryption,
           'source_hash': ?sourceHash,
           'storage_class': ?storageClass,
           'tags': ?tags,
           'website_redirect': ?websiteRedirect,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketObjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketObject>`.
  RefTo<AwsS3BucketObject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `acl` attribute.
  TfRef<String> get acl => TfRef.attribute<String>(this, 'acl');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `bucket_key_enabled` attribute.
  TfRef<bool> get bucketKeyEnabled =>
      TfRef.attribute<bool>(this, 'bucket_key_enabled');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_base64` attribute.
  TfRef<String> get contentBase64 =>
      TfRef.attribute<String>(this, 'content_base64');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguage =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_side_encryption` attribute.
  TfRef<String> get serverSideEncryption =>
      TfRef.attribute<String>(this, 'server_side_encryption');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_hash` attribute.
  TfRef<String> get sourceHash => TfRef.attribute<String>(this, 'source_hash');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `website_redirect` attribute.
  TfRef<String> get websiteRedirect =>
      TfRef.attribute<String>(this, 'website_redirect');
}

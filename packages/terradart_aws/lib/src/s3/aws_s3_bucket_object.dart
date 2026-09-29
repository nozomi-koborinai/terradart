// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

/// S3 Bucket Object Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
enum S3BucketObjectObjectLockLegalHoldStatus implements TerraformEnum {
  on('ON'),
  off('OFF');

  const S3BucketObjectObjectLockLegalHoldStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Bucket Object Object Lock enum for `object_lock_mode`.
enum S3BucketObjectObjectLockMode implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3BucketObjectObjectLockMode(this.terraformValue);
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
sealed class S3BucketObjectContentOrContentBase64OrSource {
  const S3BucketObjectContentOrContentBase64OrSource();

  /// Sets `content`.
  const factory S3BucketObjectContentOrContentBase64OrSource.content(
    TfArg<String> content,
  ) = S3BucketObjectContentOrContentBase64OrSourceContent;

  /// Sets `content_base64`.
  const factory S3BucketObjectContentOrContentBase64OrSource.contentBase64(
    TfArg<String> contentBase64,
  ) = S3BucketObjectContentOrContentBase64OrSourceContentBase64;

  /// Sets `source`.
  const factory S3BucketObjectContentOrContentBase64OrSource.source(
    TfArg<String> source,
  ) = S3BucketObjectContentOrContentBase64OrSourceSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectContentOrContentBase64OrSource.content] choice: sets `content`.
final class S3BucketObjectContentOrContentBase64OrSourceContent
    extends S3BucketObjectContentOrContentBase64OrSource {
  const S3BucketObjectContentOrContentBase64OrSourceContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [S3BucketObjectContentOrContentBase64OrSource.contentBase64] choice: sets `content_base64`.
final class S3BucketObjectContentOrContentBase64OrSourceContentBase64
    extends S3BucketObjectContentOrContentBase64OrSource {
  const S3BucketObjectContentOrContentBase64OrSourceContentBase64(
    this.contentBase64,
  );

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content_base64': contentBase64};
}

/// The [S3BucketObjectContentOrContentBase64OrSource.source] choice: sets `source`.
final class S3BucketObjectContentOrContentBase64OrSourceSource
    extends S3BucketObjectContentOrContentBase64OrSource {
  const S3BucketObjectContentOrContentBase64OrSourceSource(this.source);

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
sealed class S3BucketObjectEtagOrKmsKeyId {
  const S3BucketObjectEtagOrKmsKeyId();

  /// Sets `etag`.
  const factory S3BucketObjectEtagOrKmsKeyId.etag(TfArg<String> etag) =
      S3BucketObjectEtagOrKmsKeyIdEtag;

  /// Sets `kms_key_id`.
  const factory S3BucketObjectEtagOrKmsKeyId.kmsKeyId(TfArg<String> kmsKeyId) =
      S3BucketObjectEtagOrKmsKeyIdKmsKeyId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectEtagOrKmsKeyId.etag] choice: sets `etag`.
final class S3BucketObjectEtagOrKmsKeyIdEtag
    extends S3BucketObjectEtagOrKmsKeyId {
  const S3BucketObjectEtagOrKmsKeyIdEtag(this.etag);

  final TfArg<String> etag;

  @override
  String get blockKey => 'etag';

  @override
  Map<String, Object?> encode() => {'etag': etag.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'etag': etag};
}

/// The [S3BucketObjectEtagOrKmsKeyId.kmsKeyId] choice: sets `kms_key_id`.
final class S3BucketObjectEtagOrKmsKeyIdKmsKeyId
    extends S3BucketObjectEtagOrKmsKeyId {
  const S3BucketObjectEtagOrKmsKeyIdKmsKeyId(this.kmsKeyId);

  final TfArg<String> kmsKeyId;

  @override
  String get blockKey => 'kms_key_id';

  @override
  Map<String, Object?> encode() => {'kms_key_id': kmsKeyId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'kms_key_id': kmsKeyId};
}

/// Factory wrapper for `aws_s3_bucket_object`.
final class AwsS3BucketObject extends Resource {
  static const String tfType = 'aws_s3_bucket_object';

  AwsS3BucketObject({
    required super.localName,
    TfArg<S3BucketObjectAcl>? acl,
    required TfArg<String> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    S3BucketObjectContentOrContentBase64OrSource?
    contentOrContentBase64OrSource,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    S3BucketObjectEtagOrKmsKeyId? etagOrKmsKeyId,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3BucketObjectObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3BucketObjectObjectLockMode>? objectLockMode,
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
           if (acl != null) 'acl': acl,
           'bucket': bucket,
           if (bucketKeyEnabled != null) 'bucket_key_enabled': bucketKeyEnabled,
           if (cacheControl != null) 'cache_control': cacheControl,
           ...?contentOrContentBase64OrSource?.argMap,
           if (contentDisposition != null)
             'content_disposition': contentDisposition,
           if (contentEncoding != null) 'content_encoding': contentEncoding,
           if (contentLanguage != null) 'content_language': contentLanguage,
           if (contentType != null) 'content_type': contentType,
           ...?etagOrKmsKeyId?.argMap,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'key': key,
           if (metadata != null) 'metadata': metadata,
           if (objectLockLegalHoldStatus != null)
             'object_lock_legal_hold_status': objectLockLegalHoldStatus,
           if (objectLockMode != null) 'object_lock_mode': objectLockMode,
           if (objectLockRetainUntilDate != null)
             'object_lock_retain_until_date': objectLockRetainUntilDate,
           if (region != null) 'region': region,
           if (serverSideEncryption != null)
             'server_side_encryption': serverSideEncryption,
           if (sourceHash != null) 'source_hash': sourceHash,
           if (storageClass != null) 'storage_class': storageClass,
           if (tags != null) 'tags': tags,
           if (websiteRedirect != null) 'website_redirect': websiteRedirect,
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
}

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

/// Factory wrapper for `aws_s3_bucket_object`.
final class AwsS3BucketObject extends Resource {
  static const String tfType = 'aws_s3_bucket_object';

  AwsS3BucketObject({
    required super.localName,
    TfArg<S3BucketObjectAcl>? acl,
    required TfArg<String> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    TfArg<String>? content,
    TfArg<String>? contentBase64,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    TfArg<String>? etag,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<String>? kmsKeyId,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3BucketObjectObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3BucketObjectObjectLockMode>? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    TfArg<S3BucketObjectServerSideEncryption>? serverSideEncryption,
    TfArg<String>? source,
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
           if (content != null) 'content': content,
           if (contentBase64 != null) 'content_base64': contentBase64,
           if (contentDisposition != null)
             'content_disposition': contentDisposition,
           if (contentEncoding != null) 'content_encoding': contentEncoding,
           if (contentLanguage != null) 'content_language': contentLanguage,
           if (contentType != null) 'content_type': contentType,
           if (etag != null) 'etag': etag,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'key': key,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (metadata != null) 'metadata': metadata,
           if (objectLockLegalHoldStatus != null)
             'object_lock_legal_hold_status': objectLockLegalHoldStatus,
           if (objectLockMode != null) 'object_lock_mode': objectLockMode,
           if (objectLockRetainUntilDate != null)
             'object_lock_retain_until_date': objectLockRetainUntilDate,
           if (region != null) 'region': region,
           if (serverSideEncryption != null)
             'server_side_encryption': serverSideEncryption,
           if (source != null) 'source': source,
           if (sourceHash != null) 'source_hash': sourceHash,
           if (storageClass != null) 'storage_class': storageClass,
           if (tags != null) 'tags': tags,
           if (websiteRedirect != null) 'website_redirect': websiteRedirect,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketObjectSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}

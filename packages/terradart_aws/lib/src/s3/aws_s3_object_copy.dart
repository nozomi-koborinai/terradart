// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_object_copy`.
const Set<String> _awsS3ObjectCopySensitive = <String>{
  'customer_key',
  'kms_encryption_context',
  'kms_key_id',
  'source_customer_key',
};

/// S3 Object Copy enum for `acl`.
enum S3ObjectCopyAcl implements TerraformEnum {
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  awsExecRead('aws-exec-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control');

  const S3ObjectCopyAcl(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Checksum enum for `checksum_algorithm`.
enum S3ObjectCopyChecksumAlgorithm implements TerraformEnum {
  crc32('CRC32'),
  crc32c('CRC32C'),
  sha1('SHA1'),
  sha256('SHA256'),
  crc64nvme('CRC64NVME'),
  sha512('SHA512'),
  md5('MD5'),
  xxhash64('XXHASH64'),
  xxhash3('XXHASH3'),
  xxhash128('XXHASH128');

  const S3ObjectCopyChecksumAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Metadata enum for `metadata_directive`.
enum S3ObjectCopyMetadataDirective implements TerraformEnum {
  copy('COPY'),
  replace('REPLACE');

  const S3ObjectCopyMetadataDirective(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
enum S3ObjectCopyObjectLockLegalHoldStatus implements TerraformEnum {
  on('ON'),
  off('OFF');

  const S3ObjectCopyObjectLockLegalHoldStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Object Lock enum for `object_lock_mode`.
enum S3ObjectCopyObjectLockMode implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3ObjectCopyObjectLockMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Request enum for `request_payer`.
enum S3ObjectCopyRequestPayer implements TerraformEnum {
  requester('requester');

  const S3ObjectCopyRequestPayer(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Server Side enum for `server_side_encryption`.
enum S3ObjectCopyServerSideEncryption implements TerraformEnum {
  aes256('AES256'),
  awsFsx('aws:fsx'),
  awsBackup('aws:backup'),
  awsKms('aws:kms'),
  awsKmsDsse('aws:kms:dsse');

  const S3ObjectCopyServerSideEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Storage enum for `storage_class`.
enum S3ObjectCopyStorageClass implements TerraformEnum {
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

  const S3ObjectCopyStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Copy Tagging enum for `tagging_directive`.
enum S3ObjectCopyTaggingDirective implements TerraformEnum {
  copy('COPY'),
  replace('REPLACE');

  const S3ObjectCopyTaggingDirective(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `acl`, `grant` on `aws_s3_object_copy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.acl(...)`.
sealed class S3ObjectCopyAccess {
  const S3ObjectCopyAccess();

  /// Sets `acl`.
  const factory S3ObjectCopyAccess.acl(TfArg<S3ObjectCopyAcl> acl) =
      S3ObjectCopyAccessAcl;

  /// Sets `grant`.
  const factory S3ObjectCopyAccess.grant(List<S3ObjectCopyGrant> grant) =
      S3ObjectCopyAccessGrant;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectCopyAccess.acl] choice: sets `acl`.
final class S3ObjectCopyAccessAcl extends S3ObjectCopyAccess {
  const S3ObjectCopyAccessAcl(this.acl);

  final TfArg<S3ObjectCopyAcl> acl;

  @override
  String get blockKey => 'acl';

  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// The [S3ObjectCopyAccess.grant] choice: sets `grant`.
final class S3ObjectCopyAccessGrant extends S3ObjectCopyAccess {
  const S3ObjectCopyAccessGrant(this.grant);

  final List<S3ObjectCopyGrant> grant;

  @override
  String get blockKey => 'grant';

  @override
  Map<String, Object?> encode() => {
    'grant': [for (final e in grant) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'grant': TfArg.literal([for (final e in grant) e.encode()]),
  };
}

/// Typed helper for the `grant` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyGrant {
  const S3ObjectCopyGrant({
    this.email,
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  final TfArg<String>? email;

  final TfArg<String>? id;

  final List<TfArg<S3ObjectCopyPermissions>> permissions;

  final TfArg<S3ObjectCopyType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'id': ?id?.toTfJson(),
    'permissions': [for (final e in permissions) e.toTfJson()],
    'type': type.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum S3ObjectCopyPermissions implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  read('READ'),
  readAcp('READ_ACP'),
  writeAcp('WRITE_ACP');

  const S3ObjectCopyPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum S3ObjectCopyType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  amazoncustomerbyemail('AmazonCustomerByEmail'),
  group('Group');

  const S3ObjectCopyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `override_provider` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyOverrideProvider {
  const S3ObjectCopyOverrideProvider({this.defaultTags});

  final S3ObjectCopyDefaultTags? defaultTags;

  Map<String, Object?> encode() => {'default_tags': ?defaultTags?.encode()};
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyDefaultTags {
  const S3ObjectCopyDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
}

/// Factory wrapper for `aws_s3_object_copy`.
final class AwsS3ObjectCopy extends Resource {
  static const String tfType = 'aws_s3_object_copy';

  AwsS3ObjectCopy({
    required super.localName,
    S3ObjectCopyAccess? access,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    TfArg<S3ObjectCopyChecksumAlgorithm>? checksumAlgorithm,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    TfArg<String>? copyIfMatch,
    TfArg<String>? copyIfModifiedSince,
    TfArg<String>? copyIfNoneMatch,
    TfArg<String>? copyIfUnmodifiedSince,
    TfArg<String>? customerAlgorithm,
    TfArg<String>? customerKey,
    TfArg<String>? customerKeyMd5,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? expectedSourceBucketOwner,
    TfArg<String>? expires,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<String>? kmsEncryptionContext,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3ObjectCopyMetadataDirective>? metadataDirective,
    TfArg<S3ObjectCopyObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3ObjectCopyObjectLockMode>? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    TfArg<S3ObjectCopyRequestPayer>? requestPayer,
    TfArg<S3ObjectCopyServerSideEncryption>? serverSideEncryption,
    required TfArg<String> source,
    TfArg<String>? sourceCustomerAlgorithm,
    TfArg<String>? sourceCustomerKey,
    TfArg<String>? sourceCustomerKeyMd5,
    TfArg<S3ObjectCopyStorageClass>? storageClass,
    TfArg<S3ObjectCopyTaggingDirective>? taggingDirective,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? websiteRedirect,
    S3ObjectCopyOverrideProvider? overrideProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?access?.argMap,
           'bucket': bucket.encodeAs('id'),
           'bucket_key_enabled': ?bucketKeyEnabled,
           'cache_control': ?cacheControl,
           'checksum_algorithm': ?checksumAlgorithm,
           'content_disposition': ?contentDisposition,
           'content_encoding': ?contentEncoding,
           'content_language': ?contentLanguage,
           'content_type': ?contentType,
           'copy_if_match': ?copyIfMatch,
           'copy_if_modified_since': ?copyIfModifiedSince,
           'copy_if_none_match': ?copyIfNoneMatch,
           'copy_if_unmodified_since': ?copyIfUnmodifiedSince,
           'customer_algorithm': ?customerAlgorithm,
           'customer_key': ?customerKey,
           'customer_key_md5': ?customerKeyMd5,
           'expected_bucket_owner': ?expectedBucketOwner,
           'expected_source_bucket_owner': ?expectedSourceBucketOwner,
           'expires': ?expires,
           'force_destroy': ?forceDestroy,
           'key': key,
           'kms_encryption_context': ?kmsEncryptionContext,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'metadata': ?metadata,
           'metadata_directive': ?metadataDirective,
           'object_lock_legal_hold_status': ?objectLockLegalHoldStatus,
           'object_lock_mode': ?objectLockMode,
           'object_lock_retain_until_date': ?objectLockRetainUntilDate,
           'region': ?region,
           'request_payer': ?requestPayer,
           'server_side_encryption': ?serverSideEncryption,
           'source': source,
           'source_customer_algorithm': ?sourceCustomerAlgorithm,
           'source_customer_key': ?sourceCustomerKey,
           'source_customer_key_md5': ?sourceCustomerKeyMd5,
           'storage_class': ?storageClass,
           'tagging_directive': ?taggingDirective,
           'tags': ?tags,
           'website_redirect': ?websiteRedirect,
           if (overrideProvider != null)
             'override_provider': TfArg.literal(overrideProvider.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3ObjectCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3ObjectCopy>`.
  RefTo<AwsS3ObjectCopy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `checksum_crc32` attribute.
  TfRef<String> get checksumCrc32 =>
      TfRef.attribute<String>(this, 'checksum_crc32');

  /// Reference to `checksum_crc32c` attribute.
  TfRef<String> get checksumCrc32c =>
      TfRef.attribute<String>(this, 'checksum_crc32c');

  /// Reference to `checksum_crc64nvme` attribute.
  TfRef<String> get checksumCrc64nvme =>
      TfRef.attribute<String>(this, 'checksum_crc64nvme');

  /// Reference to `checksum_sha1` attribute.
  TfRef<String> get checksumSha1 =>
      TfRef.attribute<String>(this, 'checksum_sha1');

  /// Reference to `checksum_sha256` attribute.
  TfRef<String> get checksumSha256 =>
      TfRef.attribute<String>(this, 'checksum_sha256');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `request_charged` attribute.
  TfRef<bool> get requestCharged =>
      TfRef.attribute<bool>(this, 'request_charged');

  /// Reference to `source_version_id` attribute.
  TfRef<String> get sourceVersionId =>
      TfRef.attribute<String>(this, 'source_version_id');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `acl` attribute.
  TfRef<String> get aclRef => TfRef.attribute<String>(this, 'acl');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `bucket_key_enabled` attribute.
  TfRef<bool> get bucketKeyEnabledRef =>
      TfRef.attribute<bool>(this, 'bucket_key_enabled');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControlRef =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `checksum_algorithm` attribute.
  TfRef<String> get checksumAlgorithmRef =>
      TfRef.attribute<String>(this, 'checksum_algorithm');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDispositionRef =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncodingRef =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguageRef =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentTypeRef =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `copy_if_match` attribute.
  TfRef<String> get copyIfMatchRef =>
      TfRef.attribute<String>(this, 'copy_if_match');

  /// Reference to `copy_if_modified_since` attribute.
  TfRef<String> get copyIfModifiedSinceRef =>
      TfRef.attribute<String>(this, 'copy_if_modified_since');

  /// Reference to `copy_if_none_match` attribute.
  TfRef<String> get copyIfNoneMatchRef =>
      TfRef.attribute<String>(this, 'copy_if_none_match');

  /// Reference to `copy_if_unmodified_since` attribute.
  TfRef<String> get copyIfUnmodifiedSinceRef =>
      TfRef.attribute<String>(this, 'copy_if_unmodified_since');

  /// Reference to `customer_algorithm` attribute.
  TfRef<String> get customerAlgorithmRef =>
      TfRef.attribute<String>(this, 'customer_algorithm');

  /// Reference to `customer_key` attribute.
  TfRef<String> get customerKeyRef =>
      TfRef.attribute<String>(this, 'customer_key');

  /// Reference to `customer_key_md5` attribute.
  TfRef<String> get customerKeyMd5Ref =>
      TfRef.attribute<String>(this, 'customer_key_md5');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `expected_source_bucket_owner` attribute.
  TfRef<String> get expectedSourceBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_source_bucket_owner');

  /// Reference to `expires` attribute.
  TfRef<String> get expiresRef => TfRef.attribute<String>(this, 'expires');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `key` attribute.
  TfRef<String> get keyRef => TfRef.attribute<String>(this, 'key');

  /// Reference to `kms_encryption_context` attribute.
  TfRef<String> get kmsEncryptionContextRef =>
      TfRef.attribute<String>(this, 'kms_encryption_context');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadataRef =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `metadata_directive` attribute.
  TfRef<String> get metadataDirectiveRef =>
      TfRef.attribute<String>(this, 'metadata_directive');

  /// Reference to `object_lock_legal_hold_status` attribute.
  TfRef<String> get objectLockLegalHoldStatusRef =>
      TfRef.attribute<String>(this, 'object_lock_legal_hold_status');

  /// Reference to `object_lock_mode` attribute.
  TfRef<String> get objectLockModeRef =>
      TfRef.attribute<String>(this, 'object_lock_mode');

  /// Reference to `object_lock_retain_until_date` attribute.
  TfRef<String> get objectLockRetainUntilDateRef =>
      TfRef.attribute<String>(this, 'object_lock_retain_until_date');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_payer` attribute.
  TfRef<String> get requestPayerRef =>
      TfRef.attribute<String>(this, 'request_payer');

  /// Reference to `server_side_encryption` attribute.
  TfRef<String> get serverSideEncryptionRef =>
      TfRef.attribute<String>(this, 'server_side_encryption');

  /// Reference to `source` attribute.
  TfRef<String> get sourceRef => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_customer_algorithm` attribute.
  TfRef<String> get sourceCustomerAlgorithmRef =>
      TfRef.attribute<String>(this, 'source_customer_algorithm');

  /// Reference to `source_customer_key` attribute.
  TfRef<String> get sourceCustomerKeyRef =>
      TfRef.attribute<String>(this, 'source_customer_key');

  /// Reference to `source_customer_key_md5` attribute.
  TfRef<String> get sourceCustomerKeyMd5Ref =>
      TfRef.attribute<String>(this, 'source_customer_key_md5');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClassRef =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `tagging_directive` attribute.
  TfRef<String> get taggingDirectiveRef =>
      TfRef.attribute<String>(this, 'tagging_directive');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `website_redirect` attribute.
  TfRef<String> get websiteRedirectRef =>
      TfRef.attribute<String>(this, 'website_redirect');
}

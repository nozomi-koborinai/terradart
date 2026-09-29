// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
sealed class S3ObjectCopyAclOrGrant {
  const S3ObjectCopyAclOrGrant();

  /// Sets `acl`.
  const factory S3ObjectCopyAclOrGrant.acl(TfArg<S3ObjectCopyAcl> acl) =
      S3ObjectCopyAclOrGrantAcl;

  /// Sets `grant`.
  const factory S3ObjectCopyAclOrGrant.grant(List<S3ObjectCopyGrant> grant) =
      S3ObjectCopyAclOrGrantGrant;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectCopyAclOrGrant.acl] choice: sets `acl`.
final class S3ObjectCopyAclOrGrantAcl extends S3ObjectCopyAclOrGrant {
  const S3ObjectCopyAclOrGrantAcl(this.acl);

  final TfArg<S3ObjectCopyAcl> acl;

  @override
  String get blockKey => 'acl';

  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// The [S3ObjectCopyAclOrGrant.grant] choice: sets `grant`.
final class S3ObjectCopyAclOrGrantGrant extends S3ObjectCopyAclOrGrant {
  const S3ObjectCopyAclOrGrantGrant(this.grant);

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

  final List<TfArg<S3ObjectCopyGrantPermissions>> permissions;

  final TfArg<S3ObjectCopyGrantType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (email != null) 'email': email!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'permissions': [for (final e in permissions) e.toTfJson()],
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum S3ObjectCopyGrantPermissions implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  read('READ'),
  readAcp('READ_ACP'),
  writeAcp('WRITE_ACP');

  const S3ObjectCopyGrantPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum S3ObjectCopyGrantType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  amazoncustomerbyemail('AmazonCustomerByEmail'),
  group('Group');

  const S3ObjectCopyGrantType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `override_provider` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyOverrideProvider {
  const S3ObjectCopyOverrideProvider({this.defaultTags});

  final S3ObjectCopyOverrideProviderDefaultTags? defaultTags;

  Map<String, Object?> encode() => {
    if (defaultTags != null) 'default_tags': defaultTags!.encode(),
  };
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyOverrideProviderDefaultTags {
  const S3ObjectCopyOverrideProviderDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {if (tags != null) 'tags': tags!.toTfJson()};
}

/// Factory wrapper for `aws_s3_object_copy`.
final class AwsS3ObjectCopy extends Resource {
  static const String tfType = 'aws_s3_object_copy';

  AwsS3ObjectCopy({
    required super.localName,
    S3ObjectCopyAclOrGrant? aclOrGrant,
    required TfArg<String> bucket,
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
    TfArg<String>? kmsKeyId,
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
           ...?aclOrGrant?.argMap,
           'bucket': bucket,
           if (bucketKeyEnabled != null) 'bucket_key_enabled': bucketKeyEnabled,
           if (cacheControl != null) 'cache_control': cacheControl,
           if (checksumAlgorithm != null)
             'checksum_algorithm': checksumAlgorithm,
           if (contentDisposition != null)
             'content_disposition': contentDisposition,
           if (contentEncoding != null) 'content_encoding': contentEncoding,
           if (contentLanguage != null) 'content_language': contentLanguage,
           if (contentType != null) 'content_type': contentType,
           if (copyIfMatch != null) 'copy_if_match': copyIfMatch,
           if (copyIfModifiedSince != null)
             'copy_if_modified_since': copyIfModifiedSince,
           if (copyIfNoneMatch != null) 'copy_if_none_match': copyIfNoneMatch,
           if (copyIfUnmodifiedSince != null)
             'copy_if_unmodified_since': copyIfUnmodifiedSince,
           if (customerAlgorithm != null)
             'customer_algorithm': customerAlgorithm,
           if (customerKey != null) 'customer_key': customerKey,
           if (customerKeyMd5 != null) 'customer_key_md5': customerKeyMd5,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (expectedSourceBucketOwner != null)
             'expected_source_bucket_owner': expectedSourceBucketOwner,
           if (expires != null) 'expires': expires,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'key': key,
           if (kmsEncryptionContext != null)
             'kms_encryption_context': kmsEncryptionContext,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (metadata != null) 'metadata': metadata,
           if (metadataDirective != null)
             'metadata_directive': metadataDirective,
           if (objectLockLegalHoldStatus != null)
             'object_lock_legal_hold_status': objectLockLegalHoldStatus,
           if (objectLockMode != null) 'object_lock_mode': objectLockMode,
           if (objectLockRetainUntilDate != null)
             'object_lock_retain_until_date': objectLockRetainUntilDate,
           if (region != null) 'region': region,
           if (requestPayer != null) 'request_payer': requestPayer,
           if (serverSideEncryption != null)
             'server_side_encryption': serverSideEncryption,
           'source': source,
           if (sourceCustomerAlgorithm != null)
             'source_customer_algorithm': sourceCustomerAlgorithm,
           if (sourceCustomerKey != null)
             'source_customer_key': sourceCustomerKey,
           if (sourceCustomerKeyMd5 != null)
             'source_customer_key_md5': sourceCustomerKeyMd5,
           if (storageClass != null) 'storage_class': storageClass,
           if (taggingDirective != null) 'tagging_directive': taggingDirective,
           if (tags != null) 'tags': tags,
           if (websiteRedirect != null) 'website_redirect': websiteRedirect,
           if (overrideProvider != null)
             'override_provider': TfArg.literal(overrideProvider.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3ObjectCopySensitive;

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
}

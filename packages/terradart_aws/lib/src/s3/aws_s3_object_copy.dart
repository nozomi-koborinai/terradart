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
extension type const S3ObjectCopyAcl._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyAcl.variable(String name) : this._(TfArg.variable(name));
  S3ObjectCopyAcl.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyAcl.arg(TfArg<String> arg) : this._(arg);

  static const private = S3ObjectCopyAcl._(TfArgLiteral('private'));
  static const publicRead = S3ObjectCopyAcl._(TfArgLiteral('public-read'));
  static const publicReadWrite = S3ObjectCopyAcl._(
    TfArgLiteral('public-read-write'),
  );
  static const authenticatedRead = S3ObjectCopyAcl._(
    TfArgLiteral('authenticated-read'),
  );
  static const awsExecRead = S3ObjectCopyAcl._(TfArgLiteral('aws-exec-read'));
  static const bucketOwnerRead = S3ObjectCopyAcl._(
    TfArgLiteral('bucket-owner-read'),
  );
  static const bucketOwnerFullControl = S3ObjectCopyAcl._(
    TfArgLiteral('bucket-owner-full-control'),
  );

  static const List<S3ObjectCopyAcl> values = [
    private,
    publicRead,
    publicReadWrite,
    authenticatedRead,
    awsExecRead,
    bucketOwnerRead,
    bucketOwnerFullControl,
  ];
}

/// S3 Object Copy Checksum enum for `checksum_algorithm`.
extension type const S3ObjectCopyChecksumAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyChecksumAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyChecksumAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyChecksumAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const crc32 = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('CRC32'));
  static const crc32c = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('CRC32C'));
  static const sha1 = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('SHA1'));
  static const sha256 = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('SHA256'));
  static const crc64nvme = S3ObjectCopyChecksumAlgorithm._(
    TfArgLiteral('CRC64NVME'),
  );
  static const sha512 = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('SHA512'));
  static const md5 = S3ObjectCopyChecksumAlgorithm._(TfArgLiteral('MD5'));
  static const xxhash64 = S3ObjectCopyChecksumAlgorithm._(
    TfArgLiteral('XXHASH64'),
  );
  static const xxhash3 = S3ObjectCopyChecksumAlgorithm._(
    TfArgLiteral('XXHASH3'),
  );
  static const xxhash128 = S3ObjectCopyChecksumAlgorithm._(
    TfArgLiteral('XXHASH128'),
  );

  static const List<S3ObjectCopyChecksumAlgorithm> values = [
    crc32,
    crc32c,
    sha1,
    sha256,
    crc64nvme,
    sha512,
    md5,
    xxhash64,
    xxhash3,
    xxhash128,
  ];
}

/// S3 Object Copy Metadata enum for `metadata_directive`.
extension type const S3ObjectCopyMetadataDirective._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyMetadataDirective.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyMetadataDirective.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyMetadataDirective.arg(TfArg<String> arg) : this._(arg);

  static const copy = S3ObjectCopyMetadataDirective._(TfArgLiteral('COPY'));
  static const replace = S3ObjectCopyMetadataDirective._(
    TfArgLiteral('REPLACE'),
  );

  static const List<S3ObjectCopyMetadataDirective> values = [copy, replace];
}

/// S3 Object Copy Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
extension type const S3ObjectCopyObjectLockLegalHoldStatus._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyObjectLockLegalHoldStatus.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyObjectLockLegalHoldStatus.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyObjectLockLegalHoldStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const on = S3ObjectCopyObjectLockLegalHoldStatus._(TfArgLiteral('ON'));
  static const off = S3ObjectCopyObjectLockLegalHoldStatus._(
    TfArgLiteral('OFF'),
  );

  static const List<S3ObjectCopyObjectLockLegalHoldStatus> values = [on, off];
}

/// S3 Object Copy Object Lock enum for `object_lock_mode`.
extension type const S3ObjectCopyObjectLockMode._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyObjectLockMode.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyObjectLockMode.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyObjectLockMode.arg(TfArg<String> arg) : this._(arg);

  static const governance = S3ObjectCopyObjectLockMode._(
    TfArgLiteral('GOVERNANCE'),
  );
  static const compliance = S3ObjectCopyObjectLockMode._(
    TfArgLiteral('COMPLIANCE'),
  );

  static const List<S3ObjectCopyObjectLockMode> values = [
    governance,
    compliance,
  ];
}

/// S3 Object Copy Request enum for `request_payer`.
extension type const S3ObjectCopyRequestPayer._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyRequestPayer.variable(String name) : this._(TfArg.variable(name));
  S3ObjectCopyRequestPayer.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyRequestPayer.arg(TfArg<String> arg) : this._(arg);

  static const requester = S3ObjectCopyRequestPayer._(
    TfArgLiteral('requester'),
  );

  static const List<S3ObjectCopyRequestPayer> values = [requester];
}

/// S3 Object Copy Server Side enum for `server_side_encryption`.
extension type const S3ObjectCopyServerSideEncryption._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyServerSideEncryption.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyServerSideEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyServerSideEncryption.arg(TfArg<String> arg) : this._(arg);

  static const aes256 = S3ObjectCopyServerSideEncryption._(
    TfArgLiteral('AES256'),
  );
  static const awsFsx = S3ObjectCopyServerSideEncryption._(
    TfArgLiteral('aws:fsx'),
  );
  static const awsBackup = S3ObjectCopyServerSideEncryption._(
    TfArgLiteral('aws:backup'),
  );
  static const awsKms = S3ObjectCopyServerSideEncryption._(
    TfArgLiteral('aws:kms'),
  );
  static const awsKmsDsse = S3ObjectCopyServerSideEncryption._(
    TfArgLiteral('aws:kms:dsse'),
  );

  static const List<S3ObjectCopyServerSideEncryption> values = [
    aes256,
    awsFsx,
    awsBackup,
    awsKms,
    awsKmsDsse,
  ];
}

/// S3 Object Copy Storage enum for `storage_class`.
extension type const S3ObjectCopyStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyStorageClass.variable(String name) : this._(TfArg.variable(name));
  S3ObjectCopyStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = S3ObjectCopyStorageClass._(TfArgLiteral('STANDARD'));
  static const reducedRedundancy = S3ObjectCopyStorageClass._(
    TfArgLiteral('REDUCED_REDUNDANCY'),
  );
  static const glacier = S3ObjectCopyStorageClass._(TfArgLiteral('GLACIER'));
  static const standardIa = S3ObjectCopyStorageClass._(
    TfArgLiteral('STANDARD_IA'),
  );
  static const onezoneIa = S3ObjectCopyStorageClass._(
    TfArgLiteral('ONEZONE_IA'),
  );
  static const intelligentTiering = S3ObjectCopyStorageClass._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );
  static const deepArchive = S3ObjectCopyStorageClass._(
    TfArgLiteral('DEEP_ARCHIVE'),
  );
  static const outposts = S3ObjectCopyStorageClass._(TfArgLiteral('OUTPOSTS'));
  static const glacierIr = S3ObjectCopyStorageClass._(
    TfArgLiteral('GLACIER_IR'),
  );
  static const snow = S3ObjectCopyStorageClass._(TfArgLiteral('SNOW'));
  static const expressOnezone = S3ObjectCopyStorageClass._(
    TfArgLiteral('EXPRESS_ONEZONE'),
  );
  static const fsxOpenzfs = S3ObjectCopyStorageClass._(
    TfArgLiteral('FSX_OPENZFS'),
  );
  static const fsxOntap = S3ObjectCopyStorageClass._(TfArgLiteral('FSX_ONTAP'));
  static const awsBackupWarm = S3ObjectCopyStorageClass._(
    TfArgLiteral('AWS_BACKUP_WARM'),
  );
  static const awsBackupLowCostWarm = S3ObjectCopyStorageClass._(
    TfArgLiteral('AWS_BACKUP_LOW_COST_WARM'),
  );

  static const List<S3ObjectCopyStorageClass> values = [
    standard,
    reducedRedundancy,
    glacier,
    standardIa,
    onezoneIa,
    intelligentTiering,
    deepArchive,
    outposts,
    glacierIr,
    snow,
    expressOnezone,
    fsxOpenzfs,
    fsxOntap,
    awsBackupWarm,
    awsBackupLowCostWarm,
  ];
}

/// S3 Object Copy Tagging enum for `tagging_directive`.
extension type const S3ObjectCopyTaggingDirective._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyTaggingDirective.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectCopyTaggingDirective.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyTaggingDirective.arg(TfArg<String> arg) : this._(arg);

  static const copy = S3ObjectCopyTaggingDirective._(TfArgLiteral('COPY'));
  static const replace = S3ObjectCopyTaggingDirective._(
    TfArgLiteral('REPLACE'),
  );

  static const List<S3ObjectCopyTaggingDirective> values = [copy, replace];
}

/// At most one of `acl`, `grant` on `aws_s3_object_copy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.acl(...)`.
sealed class S3ObjectCopyAccess {
  const S3ObjectCopyAccess();

  /// Sets `acl`.
  const factory S3ObjectCopyAccess.acl(S3ObjectCopyAcl acl) =
      S3ObjectCopyAccessAcl;

  /// Sets `grant`.
  const factory S3ObjectCopyAccess.grant(List<S3ObjectCopyGrant> grant) =
      S3ObjectCopyAccessGrant;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectCopyAccess.acl] choice: sets `acl`.
final class S3ObjectCopyAccessAcl extends S3ObjectCopyAccess {
  const S3ObjectCopyAccessAcl(this.acl);

  final S3ObjectCopyAcl acl;

  @internal
  @override
  String get blockKey => 'acl';

  @internal
  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// The [S3ObjectCopyAccess.grant] choice: sets `grant`.
final class S3ObjectCopyAccessGrant extends S3ObjectCopyAccess {
  const S3ObjectCopyAccessGrant(this.grant);

  final List<S3ObjectCopyGrant> grant;

  @internal
  @override
  String get blockKey => 'grant';

  @internal
  @override
  Map<String, Object?> encode() => {
    'grant': [for (final e in grant) e.encode()],
  };

  @internal
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

  final List<S3ObjectCopyPermissions> permissions;

  final S3ObjectCopyType type;

  final TfArg<String>? uri;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'id': ?id?.toTfJson(),
    'permissions': [for (final e in permissions) e.toTfJson()],
    'type': type.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
extension type const S3ObjectCopyPermissions._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyPermissions.variable(String name) : this._(TfArg.variable(name));
  S3ObjectCopyPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyPermissions.arg(TfArg<String> arg) : this._(arg);

  static const fullControl = S3ObjectCopyPermissions._(
    TfArgLiteral('FULL_CONTROL'),
  );
  static const read = S3ObjectCopyPermissions._(TfArgLiteral('READ'));
  static const readAcp = S3ObjectCopyPermissions._(TfArgLiteral('READ_ACP'));
  static const writeAcp = S3ObjectCopyPermissions._(TfArgLiteral('WRITE_ACP'));

  static const List<S3ObjectCopyPermissions> values = [
    fullControl,
    read,
    readAcp,
    writeAcp,
  ];
}

/// `type` — derived from the provider schema description.
extension type const S3ObjectCopyType._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectCopyType.variable(String name) : this._(TfArg.variable(name));
  S3ObjectCopyType.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectCopyType.arg(TfArg<String> arg) : this._(arg);

  static const canonicaluser = S3ObjectCopyType._(
    TfArgLiteral('CanonicalUser'),
  );
  static const amazoncustomerbyemail = S3ObjectCopyType._(
    TfArgLiteral('AmazonCustomerByEmail'),
  );
  static const group = S3ObjectCopyType._(TfArgLiteral('Group'));

  static const List<S3ObjectCopyType> values = [
    canonicaluser,
    amazoncustomerbyemail,
    group,
  ];
}

/// Typed helper for the `override_provider` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyOverrideProvider {
  const S3ObjectCopyOverrideProvider({this.defaultTags});

  final S3ObjectCopyDefaultTags? defaultTags;

  @internal
  Map<String, Object?> encode() => {'default_tags': ?defaultTags?.encode()};
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object_copy` (derived from provider schema).
@immutable
final class S3ObjectCopyDefaultTags {
  const S3ObjectCopyDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  @internal
  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
}

/// Factory wrapper for `aws_s3_object_copy`.
final class AwsS3ObjectCopy extends Resource {
  static const String tfType = 'aws_s3_object_copy';

  AwsS3ObjectCopy(
    super.localName, {
    S3ObjectCopyAccess? access,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    S3ObjectCopyChecksumAlgorithm? checksumAlgorithm,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    TfArg<String>? copyIfMatch,
    TfArg<String>? copyIfModifiedSince,
    TfArg<String>? copyIfNoneMatch,
    TfArg<String>? copyIfUnmodifiedSince,
    TfArg<String>? customerAlgorithm,
    Sensitive<String>? customerKey,
    TfArg<String>? customerKeyMd5,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? expectedSourceBucketOwner,
    TfArg<String>? expires,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    Sensitive<String>? kmsEncryptionContext,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<Map<String, String>>? metadata,
    S3ObjectCopyMetadataDirective? metadataDirective,
    S3ObjectCopyObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    S3ObjectCopyObjectLockMode? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    S3ObjectCopyRequestPayer? requestPayer,
    S3ObjectCopyServerSideEncryption? serverSideEncryption,
    required TfArg<String> source,
    TfArg<String>? sourceCustomerAlgorithm,
    Sensitive<String>? sourceCustomerKey,
    TfArg<String>? sourceCustomerKeyMd5,
    S3ObjectCopyStorageClass? storageClass,
    S3ObjectCopyTaggingDirective? taggingDirective,
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
  TfRef<String> get acl => TfRef.attribute<String>(this, 'acl');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `bucket_key_enabled` attribute.
  TfRef<bool> get bucketKeyEnabled =>
      TfRef.attribute<bool>(this, 'bucket_key_enabled');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `checksum_algorithm` attribute.
  TfRef<String> get checksumAlgorithm =>
      TfRef.attribute<String>(this, 'checksum_algorithm');

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

  /// Reference to `copy_if_match` attribute.
  TfRef<String> get copyIfMatch =>
      TfRef.attribute<String>(this, 'copy_if_match');

  /// Reference to `copy_if_modified_since` attribute.
  TfRef<String> get copyIfModifiedSince =>
      TfRef.attribute<String>(this, 'copy_if_modified_since');

  /// Reference to `copy_if_none_match` attribute.
  TfRef<String> get copyIfNoneMatch =>
      TfRef.attribute<String>(this, 'copy_if_none_match');

  /// Reference to `copy_if_unmodified_since` attribute.
  TfRef<String> get copyIfUnmodifiedSince =>
      TfRef.attribute<String>(this, 'copy_if_unmodified_since');

  /// Reference to `customer_algorithm` attribute.
  TfRef<String> get customerAlgorithm =>
      TfRef.attribute<String>(this, 'customer_algorithm');

  /// Reference to `customer_key` attribute.
  TfRef<String> get customerKey =>
      TfRef.attribute<String>(this, 'customer_key');

  /// Reference to `customer_key_md5` attribute.
  TfRef<String> get customerKeyMd5 =>
      TfRef.attribute<String>(this, 'customer_key_md5');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `expected_source_bucket_owner` attribute.
  TfRef<String> get expectedSourceBucketOwner =>
      TfRef.attribute<String>(this, 'expected_source_bucket_owner');

  /// Reference to `expires` attribute.
  TfRef<String> get expires => TfRef.attribute<String>(this, 'expires');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `kms_encryption_context` attribute.
  TfRef<String> get kmsEncryptionContext =>
      TfRef.attribute<String>(this, 'kms_encryption_context');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `metadata_directive` attribute.
  TfRef<String> get metadataDirective =>
      TfRef.attribute<String>(this, 'metadata_directive');

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

  /// Reference to `request_payer` attribute.
  TfRef<String> get requestPayer =>
      TfRef.attribute<String>(this, 'request_payer');

  /// Reference to `server_side_encryption` attribute.
  TfRef<String> get serverSideEncryption =>
      TfRef.attribute<String>(this, 'server_side_encryption');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_customer_algorithm` attribute.
  TfRef<String> get sourceCustomerAlgorithm =>
      TfRef.attribute<String>(this, 'source_customer_algorithm');

  /// Reference to `source_customer_key` attribute.
  TfRef<String> get sourceCustomerKey =>
      TfRef.attribute<String>(this, 'source_customer_key');

  /// Reference to `source_customer_key_md5` attribute.
  TfRef<String> get sourceCustomerKeyMd5 =>
      TfRef.attribute<String>(this, 'source_customer_key_md5');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `tagging_directive` attribute.
  TfRef<String> get taggingDirective =>
      TfRef.attribute<String>(this, 'tagging_directive');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `website_redirect` attribute.
  TfRef<String> get websiteRedirect =>
      TfRef.attribute<String>(this, 'website_redirect');
}

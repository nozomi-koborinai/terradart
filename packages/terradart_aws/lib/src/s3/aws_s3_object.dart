// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_object`.
const Set<String> _awsS3ObjectSensitive = <String>{};

/// S3 Object enum for `acl`.
enum S3ObjectAcl implements TerraformEnum {
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  awsExecRead('aws-exec-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control');

  const S3ObjectAcl(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Checksum enum for `checksum_algorithm`.
enum S3ObjectChecksumAlgorithm implements TerraformEnum {
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

  const S3ObjectChecksumAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
enum S3ObjectLockLegalHoldStatus implements TerraformEnum {
  on('ON'),
  off('OFF');

  const S3ObjectLockLegalHoldStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Lock enum for `object_lock_mode`.
enum S3ObjectLockMode implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3ObjectLockMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Server Side enum for `server_side_encryption`.
enum S3ObjectServerSideEncryption implements TerraformEnum {
  aes256('AES256'),
  awsFsx('aws:fsx'),
  awsBackup('aws:backup'),
  awsKms('aws:kms'),
  awsKmsDsse('aws:kms:dsse');

  const S3ObjectServerSideEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Storage enum for `storage_class`.
enum S3ObjectStorageClass implements TerraformEnum {
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

  const S3ObjectStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `content`, `content_base64`, `source` on `aws_s3_object`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class S3ObjectBody {
  const S3ObjectBody();

  /// Sets `content`.
  const factory S3ObjectBody.content(TfArg<String> content) =
      S3ObjectBodyContent;

  /// Sets `content_base64`.
  const factory S3ObjectBody.contentBase64(TfArg<String> contentBase64) =
      S3ObjectBodyContentBase64;

  /// Sets `source`.
  const factory S3ObjectBody.source(TfArg<String> source) = S3ObjectBodySource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectBody.content] choice: sets `content`.
final class S3ObjectBodyContent extends S3ObjectBody {
  const S3ObjectBodyContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [S3ObjectBody.contentBase64] choice: sets `content_base64`.
final class S3ObjectBodyContentBase64 extends S3ObjectBody {
  const S3ObjectBodyContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content_base64': contentBase64};
}

/// The [S3ObjectBody.source] choice: sets `source`.
final class S3ObjectBodySource extends S3ObjectBody {
  const S3ObjectBodySource(this.source);

  final TfArg<String> source;

  @override
  String get blockKey => 'source';

  @override
  Map<String, Object?> encode() => {'source': source.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'source': source};
}

/// At most one of `etag`, `kms_key_id` on `aws_s3_object`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.etag(...)`.
sealed class S3ObjectIntegrity {
  const S3ObjectIntegrity();

  /// Sets `etag`.
  const factory S3ObjectIntegrity.etag(TfArg<String> etag) =
      S3ObjectIntegrityEtag;

  /// Sets `kms_key_id`.
  const factory S3ObjectIntegrity.kmsKeyId(RefTo<AwsKmsKey> kmsKeyId) =
      S3ObjectIntegrityKmsKeyId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectIntegrity.etag] choice: sets `etag`.
final class S3ObjectIntegrityEtag extends S3ObjectIntegrity {
  const S3ObjectIntegrityEtag(this.etag);

  final TfArg<String> etag;

  @override
  String get blockKey => 'etag';

  @override
  Map<String, Object?> encode() => {'etag': etag.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'etag': etag};
}

/// The [S3ObjectIntegrity.kmsKeyId] choice: sets `kms_key_id`.
final class S3ObjectIntegrityKmsKeyId extends S3ObjectIntegrity {
  const S3ObjectIntegrityKmsKeyId(this.kmsKeyId);

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

/// Typed helper for the `override_provider` block of
/// `aws_s3_object` (derived from provider schema).
@immutable
final class S3ObjectOverrideProvider {
  const S3ObjectOverrideProvider({this.defaultTags});

  final S3ObjectDefaultTags? defaultTags;

  Map<String, Object?> encode() => {'default_tags': ?defaultTags?.encode()};
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object` (derived from provider schema).
@immutable
final class S3ObjectDefaultTags {
  const S3ObjectDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
}

/// Factory wrapper for `aws_s3_object`.
final class AwsS3Object extends Resource {
  static const String tfType = 'aws_s3_object';

  AwsS3Object({
    required super.localName,
    TfArg<S3ObjectAcl>? acl,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    TfArg<S3ObjectChecksumAlgorithm>? checksumAlgorithm,
    S3ObjectBody? body,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    S3ObjectIntegrity? integrity,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3ObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3ObjectLockMode>? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    TfArg<S3ObjectServerSideEncryption>? serverSideEncryption,
    TfArg<String>? sourceHash,
    TfArg<S3ObjectStorageClass>? storageClass,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? websiteRedirect,
    S3ObjectOverrideProvider? overrideProvider,
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
           'checksum_algorithm': ?checksumAlgorithm,
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
           if (overrideProvider != null)
             'override_provider': TfArg.literal(overrideProvider.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3ObjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3Object>`.
  RefTo<AwsS3Object> get ref => RefTo.of(this);

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

  /// Reference to `content` attribute.
  TfRef<String> get contentRef => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_base64` attribute.
  TfRef<String> get contentBase64Ref =>
      TfRef.attribute<String>(this, 'content_base64');

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

  /// Reference to `etag` attribute.
  TfRef<String> get etagRef => TfRef.attribute<String>(this, 'etag');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `key` attribute.
  TfRef<String> get keyRef => TfRef.attribute<String>(this, 'key');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadataRef =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

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

  /// Reference to `server_side_encryption` attribute.
  TfRef<String> get serverSideEncryptionRef =>
      TfRef.attribute<String>(this, 'server_side_encryption');

  /// Reference to `source` attribute.
  TfRef<String> get sourceRef => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_hash` attribute.
  TfRef<String> get sourceHashRef =>
      TfRef.attribute<String>(this, 'source_hash');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClassRef =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `website_redirect` attribute.
  TfRef<String> get websiteRedirectRef =>
      TfRef.attribute<String>(this, 'website_redirect');
}

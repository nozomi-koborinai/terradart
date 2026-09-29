// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// S3 Object Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
enum S3ObjectObjectLockLegalHoldStatus implements TerraformEnum {
  on('ON'),
  off('OFF');

  const S3ObjectObjectLockLegalHoldStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3 Object Object Lock enum for `object_lock_mode`.
enum S3ObjectObjectLockMode implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3ObjectObjectLockMode(this.terraformValue);
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
sealed class S3ObjectContentOrContentBase64OrSource {
  const S3ObjectContentOrContentBase64OrSource();

  /// Sets `content`.
  const factory S3ObjectContentOrContentBase64OrSource.content(
    TfArg<String> content,
  ) = S3ObjectContentOrContentBase64OrSourceContent;

  /// Sets `content_base64`.
  const factory S3ObjectContentOrContentBase64OrSource.contentBase64(
    TfArg<String> contentBase64,
  ) = S3ObjectContentOrContentBase64OrSourceContentBase64;

  /// Sets `source`.
  const factory S3ObjectContentOrContentBase64OrSource.source(
    TfArg<String> source,
  ) = S3ObjectContentOrContentBase64OrSourceSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectContentOrContentBase64OrSource.content] choice: sets `content`.
final class S3ObjectContentOrContentBase64OrSourceContent
    extends S3ObjectContentOrContentBase64OrSource {
  const S3ObjectContentOrContentBase64OrSourceContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [S3ObjectContentOrContentBase64OrSource.contentBase64] choice: sets `content_base64`.
final class S3ObjectContentOrContentBase64OrSourceContentBase64
    extends S3ObjectContentOrContentBase64OrSource {
  const S3ObjectContentOrContentBase64OrSourceContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content_base64': contentBase64};
}

/// The [S3ObjectContentOrContentBase64OrSource.source] choice: sets `source`.
final class S3ObjectContentOrContentBase64OrSourceSource
    extends S3ObjectContentOrContentBase64OrSource {
  const S3ObjectContentOrContentBase64OrSourceSource(this.source);

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
sealed class S3ObjectEtagOrKmsKeyId {
  const S3ObjectEtagOrKmsKeyId();

  /// Sets `etag`.
  const factory S3ObjectEtagOrKmsKeyId.etag(TfArg<String> etag) =
      S3ObjectEtagOrKmsKeyIdEtag;

  /// Sets `kms_key_id`.
  const factory S3ObjectEtagOrKmsKeyId.kmsKeyId(TfArg<String> kmsKeyId) =
      S3ObjectEtagOrKmsKeyIdKmsKeyId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectEtagOrKmsKeyId.etag] choice: sets `etag`.
final class S3ObjectEtagOrKmsKeyIdEtag extends S3ObjectEtagOrKmsKeyId {
  const S3ObjectEtagOrKmsKeyIdEtag(this.etag);

  final TfArg<String> etag;

  @override
  String get blockKey => 'etag';

  @override
  Map<String, Object?> encode() => {'etag': etag.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'etag': etag};
}

/// The [S3ObjectEtagOrKmsKeyId.kmsKeyId] choice: sets `kms_key_id`.
final class S3ObjectEtagOrKmsKeyIdKmsKeyId extends S3ObjectEtagOrKmsKeyId {
  const S3ObjectEtagOrKmsKeyIdKmsKeyId(this.kmsKeyId);

  final TfArg<String> kmsKeyId;

  @override
  String get blockKey => 'kms_key_id';

  @override
  Map<String, Object?> encode() => {'kms_key_id': kmsKeyId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'kms_key_id': kmsKeyId};
}

/// Typed helper for the `override_provider` block of
/// `aws_s3_object` (derived from provider schema).
@immutable
final class S3ObjectOverrideProvider {
  const S3ObjectOverrideProvider({this.defaultTags});

  final S3ObjectOverrideProviderDefaultTags? defaultTags;

  Map<String, Object?> encode() => {
    if (defaultTags != null) 'default_tags': defaultTags!.encode(),
  };
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object` (derived from provider schema).
@immutable
final class S3ObjectOverrideProviderDefaultTags {
  const S3ObjectOverrideProviderDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {if (tags != null) 'tags': tags!.toTfJson()};
}

/// Factory wrapper for `aws_s3_object`.
final class AwsS3Object extends Resource {
  static const String tfType = 'aws_s3_object';

  AwsS3Object({
    required super.localName,
    TfArg<S3ObjectAcl>? acl,
    required TfArg<String> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    TfArg<S3ObjectChecksumAlgorithm>? checksumAlgorithm,
    S3ObjectContentOrContentBase64OrSource? contentOrContentBase64OrSource,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    S3ObjectEtagOrKmsKeyId? etagOrKmsKeyId,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<Map<String, String>>? metadata,
    TfArg<S3ObjectObjectLockLegalHoldStatus>? objectLockLegalHoldStatus,
    TfArg<S3ObjectObjectLockMode>? objectLockMode,
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
           if (acl != null) 'acl': acl,
           'bucket': bucket,
           if (bucketKeyEnabled != null) 'bucket_key_enabled': bucketKeyEnabled,
           if (cacheControl != null) 'cache_control': cacheControl,
           if (checksumAlgorithm != null)
             'checksum_algorithm': checksumAlgorithm,
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
}

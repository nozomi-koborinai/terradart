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
extension type const S3ObjectAcl._(TfArg<String> _) implements TfArg<String> {
  S3ObjectAcl.variable(String name) : this._(TfArg.variable(name));
  S3ObjectAcl.expression(String template) : this._(TfArg.expression(template));
  const S3ObjectAcl.arg(TfArg<String> arg) : this._(arg);

  static const private = S3ObjectAcl._(TfArgLiteral('private'));
  static const publicRead = S3ObjectAcl._(TfArgLiteral('public-read'));
  static const publicReadWrite = S3ObjectAcl._(
    TfArgLiteral('public-read-write'),
  );
  static const authenticatedRead = S3ObjectAcl._(
    TfArgLiteral('authenticated-read'),
  );
  static const awsExecRead = S3ObjectAcl._(TfArgLiteral('aws-exec-read'));
  static const bucketOwnerRead = S3ObjectAcl._(
    TfArgLiteral('bucket-owner-read'),
  );
  static const bucketOwnerFullControl = S3ObjectAcl._(
    TfArgLiteral('bucket-owner-full-control'),
  );

  static const List<S3ObjectAcl> values = [
    private,
    publicRead,
    publicReadWrite,
    authenticatedRead,
    awsExecRead,
    bucketOwnerRead,
    bucketOwnerFullControl,
  ];
}

/// S3 Object Checksum enum for `checksum_algorithm`.
extension type const S3ObjectChecksumAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectChecksumAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectChecksumAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectChecksumAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const crc32 = S3ObjectChecksumAlgorithm._(TfArgLiteral('CRC32'));
  static const crc32c = S3ObjectChecksumAlgorithm._(TfArgLiteral('CRC32C'));
  static const sha1 = S3ObjectChecksumAlgorithm._(TfArgLiteral('SHA1'));
  static const sha256 = S3ObjectChecksumAlgorithm._(TfArgLiteral('SHA256'));
  static const crc64nvme = S3ObjectChecksumAlgorithm._(
    TfArgLiteral('CRC64NVME'),
  );
  static const sha512 = S3ObjectChecksumAlgorithm._(TfArgLiteral('SHA512'));
  static const md5 = S3ObjectChecksumAlgorithm._(TfArgLiteral('MD5'));
  static const xxhash64 = S3ObjectChecksumAlgorithm._(TfArgLiteral('XXHASH64'));
  static const xxhash3 = S3ObjectChecksumAlgorithm._(TfArgLiteral('XXHASH3'));
  static const xxhash128 = S3ObjectChecksumAlgorithm._(
    TfArgLiteral('XXHASH128'),
  );

  static const List<S3ObjectChecksumAlgorithm> values = [
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

/// S3 Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
extension type const S3ObjectLockLegalHoldStatus._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectLockLegalHoldStatus.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectLockLegalHoldStatus.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectLockLegalHoldStatus.arg(TfArg<String> arg) : this._(arg);

  static const on = S3ObjectLockLegalHoldStatus._(TfArgLiteral('ON'));
  static const off = S3ObjectLockLegalHoldStatus._(TfArgLiteral('OFF'));

  static const List<S3ObjectLockLegalHoldStatus> values = [on, off];
}

/// S3 Object Lock enum for `object_lock_mode`.
extension type const S3ObjectLockMode._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectLockMode.variable(String name) : this._(TfArg.variable(name));
  S3ObjectLockMode.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectLockMode.arg(TfArg<String> arg) : this._(arg);

  static const governance = S3ObjectLockMode._(TfArgLiteral('GOVERNANCE'));
  static const compliance = S3ObjectLockMode._(TfArgLiteral('COMPLIANCE'));

  static const List<S3ObjectLockMode> values = [governance, compliance];
}

/// S3 Object Server Side enum for `server_side_encryption`.
extension type const S3ObjectServerSideEncryption._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectServerSideEncryption.variable(String name)
    : this._(TfArg.variable(name));
  S3ObjectServerSideEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectServerSideEncryption.arg(TfArg<String> arg) : this._(arg);

  static const aes256 = S3ObjectServerSideEncryption._(TfArgLiteral('AES256'));
  static const awsFsx = S3ObjectServerSideEncryption._(TfArgLiteral('aws:fsx'));
  static const awsBackup = S3ObjectServerSideEncryption._(
    TfArgLiteral('aws:backup'),
  );
  static const awsKms = S3ObjectServerSideEncryption._(TfArgLiteral('aws:kms'));
  static const awsKmsDsse = S3ObjectServerSideEncryption._(
    TfArgLiteral('aws:kms:dsse'),
  );

  static const List<S3ObjectServerSideEncryption> values = [
    aes256,
    awsFsx,
    awsBackup,
    awsKms,
    awsKmsDsse,
  ];
}

/// S3 Object Storage enum for `storage_class`.
extension type const S3ObjectStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  S3ObjectStorageClass.variable(String name) : this._(TfArg.variable(name));
  S3ObjectStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const S3ObjectStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = S3ObjectStorageClass._(TfArgLiteral('STANDARD'));
  static const reducedRedundancy = S3ObjectStorageClass._(
    TfArgLiteral('REDUCED_REDUNDANCY'),
  );
  static const glacier = S3ObjectStorageClass._(TfArgLiteral('GLACIER'));
  static const standardIa = S3ObjectStorageClass._(TfArgLiteral('STANDARD_IA'));
  static const onezoneIa = S3ObjectStorageClass._(TfArgLiteral('ONEZONE_IA'));
  static const intelligentTiering = S3ObjectStorageClass._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );
  static const deepArchive = S3ObjectStorageClass._(
    TfArgLiteral('DEEP_ARCHIVE'),
  );
  static const outposts = S3ObjectStorageClass._(TfArgLiteral('OUTPOSTS'));
  static const glacierIr = S3ObjectStorageClass._(TfArgLiteral('GLACIER_IR'));
  static const snow = S3ObjectStorageClass._(TfArgLiteral('SNOW'));
  static const expressOnezone = S3ObjectStorageClass._(
    TfArgLiteral('EXPRESS_ONEZONE'),
  );
  static const fsxOpenzfs = S3ObjectStorageClass._(TfArgLiteral('FSX_OPENZFS'));
  static const fsxOntap = S3ObjectStorageClass._(TfArgLiteral('FSX_ONTAP'));
  static const awsBackupWarm = S3ObjectStorageClass._(
    TfArgLiteral('AWS_BACKUP_WARM'),
  );
  static const awsBackupLowCostWarm = S3ObjectStorageClass._(
    TfArgLiteral('AWS_BACKUP_LOW_COST_WARM'),
  );

  static const List<S3ObjectStorageClass> values = [
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectBody.content] choice: sets `content`.
final class S3ObjectBodyContent extends S3ObjectBody {
  const S3ObjectBodyContent(this.content);

  final TfArg<String> content;

  @internal
  @override
  String get blockKey => 'content';

  @internal
  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [S3ObjectBody.contentBase64] choice: sets `content_base64`.
final class S3ObjectBodyContentBase64 extends S3ObjectBody {
  const S3ObjectBodyContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @internal
  @override
  String get blockKey => 'content_base64';

  @internal
  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'content_base64': contentBase64};
}

/// The [S3ObjectBody.source] choice: sets `source`.
final class S3ObjectBodySource extends S3ObjectBody {
  const S3ObjectBodySource(this.source);

  final TfArg<String> source;

  @internal
  @override
  String get blockKey => 'source';

  @internal
  @override
  Map<String, Object?> encode() => {'source': source.toTfJson()};

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3ObjectIntegrity.etag] choice: sets `etag`.
final class S3ObjectIntegrityEtag extends S3ObjectIntegrity {
  const S3ObjectIntegrityEtag(this.etag);

  final TfArg<String> etag;

  @internal
  @override
  String get blockKey => 'etag';

  @internal
  @override
  Map<String, Object?> encode() => {'etag': etag.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'etag': etag};
}

/// The [S3ObjectIntegrity.kmsKeyId] choice: sets `kms_key_id`.
final class S3ObjectIntegrityKmsKeyId extends S3ObjectIntegrity {
  const S3ObjectIntegrityKmsKeyId(this.kmsKeyId);

  final RefTo<AwsKmsKey> kmsKeyId;

  @internal
  @override
  String get blockKey => 'kms_key_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };

  @internal
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

  @internal
  Map<String, Object?> encode() => {'default_tags': ?defaultTags?.encode()};
}

/// Typed helper for the `override_provider.default_tags` block of
/// `aws_s3_object` (derived from provider schema).
@immutable
final class S3ObjectDefaultTags {
  const S3ObjectDefaultTags({this.tags});

  final TfArg<Map<String, String>>? tags;

  @internal
  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
}

/// Factory wrapper for `aws_s3_object`.
final class AwsS3Object extends Resource {
  static const String tfType = 'aws_s3_object';

  AwsS3Object(
    super.localName, {
    S3ObjectAcl? acl,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? bucketKeyEnabled,
    TfArg<String>? cacheControl,
    S3ObjectChecksumAlgorithm? checksumAlgorithm,
    S3ObjectBody? body,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    S3ObjectIntegrity? integrity,
    TfArg<bool>? forceDestroy,
    required TfArg<String> key,
    TfArg<Map<String, String>>? metadata,
    S3ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    S3ObjectLockMode? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    S3ObjectServerSideEncryption? serverSideEncryption,
    TfArg<String>? sourceHash,
    S3ObjectStorageClass? storageClass,
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

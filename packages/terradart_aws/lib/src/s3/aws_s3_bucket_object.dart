// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_object`.
const Set<String> _awsS3BucketObjectSensitive = <String>{};

/// S3 Bucket Object enum for `acl`.
extension type const S3BucketObjectAcl._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectAcl.variable(String name) : this._(TfArg.variable(name));
  S3BucketObjectAcl.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectAcl.arg(TfArg<String> arg) : this._(arg);

  static const private = S3BucketObjectAcl._(TfArgLiteral('private'));
  static const publicRead = S3BucketObjectAcl._(TfArgLiteral('public-read'));
  static const publicReadWrite = S3BucketObjectAcl._(
    TfArgLiteral('public-read-write'),
  );
  static const authenticatedRead = S3BucketObjectAcl._(
    TfArgLiteral('authenticated-read'),
  );
  static const awsExecRead = S3BucketObjectAcl._(TfArgLiteral('aws-exec-read'));
  static const bucketOwnerRead = S3BucketObjectAcl._(
    TfArgLiteral('bucket-owner-read'),
  );
  static const bucketOwnerFullControl = S3BucketObjectAcl._(
    TfArgLiteral('bucket-owner-full-control'),
  );

  static const List<S3BucketObjectAcl> values = [
    private,
    publicRead,
    publicReadWrite,
    authenticatedRead,
    awsExecRead,
    bucketOwnerRead,
    bucketOwnerFullControl,
  ];
}

/// S3 Bucket Object Lock Legal Hold enum for `object_lock_legal_hold_status`.
extension type const S3BucketObjectLockLegalHoldStatus._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectLockLegalHoldStatus.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketObjectLockLegalHoldStatus.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectLockLegalHoldStatus.arg(TfArg<String> arg) : this._(arg);

  static const on = S3BucketObjectLockLegalHoldStatus._(TfArgLiteral('ON'));
  static const off = S3BucketObjectLockLegalHoldStatus._(TfArgLiteral('OFF'));

  static const List<S3BucketObjectLockLegalHoldStatus> values = [on, off];
}

/// S3 Bucket Object Lock enum for `object_lock_mode`.
extension type const S3BucketObjectLockMode._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectLockMode.variable(String name) : this._(TfArg.variable(name));
  S3BucketObjectLockMode.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectLockMode.arg(TfArg<String> arg) : this._(arg);

  static const governance = S3BucketObjectLockMode._(
    TfArgLiteral('GOVERNANCE'),
  );
  static const compliance = S3BucketObjectLockMode._(
    TfArgLiteral('COMPLIANCE'),
  );

  static const List<S3BucketObjectLockMode> values = [governance, compliance];
}

/// S3 Bucket Object Server Side enum for `server_side_encryption`.
extension type const S3BucketObjectServerSideEncryption._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectServerSideEncryption.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketObjectServerSideEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectServerSideEncryption.arg(TfArg<String> arg) : this._(arg);

  static const aes256 = S3BucketObjectServerSideEncryption._(
    TfArgLiteral('AES256'),
  );
  static const awsFsx = S3BucketObjectServerSideEncryption._(
    TfArgLiteral('aws:fsx'),
  );
  static const awsBackup = S3BucketObjectServerSideEncryption._(
    TfArgLiteral('aws:backup'),
  );
  static const awsKms = S3BucketObjectServerSideEncryption._(
    TfArgLiteral('aws:kms'),
  );
  static const awsKmsDsse = S3BucketObjectServerSideEncryption._(
    TfArgLiteral('aws:kms:dsse'),
  );

  static const List<S3BucketObjectServerSideEncryption> values = [
    aes256,
    awsFsx,
    awsBackup,
    awsKms,
    awsKmsDsse,
  ];
}

/// S3 Bucket Object Storage enum for `storage_class`.
extension type const S3BucketObjectStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketObjectStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = S3BucketObjectStorageClass._(
    TfArgLiteral('STANDARD'),
  );
  static const reducedRedundancy = S3BucketObjectStorageClass._(
    TfArgLiteral('REDUCED_REDUNDANCY'),
  );
  static const glacier = S3BucketObjectStorageClass._(TfArgLiteral('GLACIER'));
  static const standardIa = S3BucketObjectStorageClass._(
    TfArgLiteral('STANDARD_IA'),
  );
  static const onezoneIa = S3BucketObjectStorageClass._(
    TfArgLiteral('ONEZONE_IA'),
  );
  static const intelligentTiering = S3BucketObjectStorageClass._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );
  static const deepArchive = S3BucketObjectStorageClass._(
    TfArgLiteral('DEEP_ARCHIVE'),
  );
  static const outposts = S3BucketObjectStorageClass._(
    TfArgLiteral('OUTPOSTS'),
  );
  static const glacierIr = S3BucketObjectStorageClass._(
    TfArgLiteral('GLACIER_IR'),
  );
  static const snow = S3BucketObjectStorageClass._(TfArgLiteral('SNOW'));
  static const expressOnezone = S3BucketObjectStorageClass._(
    TfArgLiteral('EXPRESS_ONEZONE'),
  );
  static const fsxOpenzfs = S3BucketObjectStorageClass._(
    TfArgLiteral('FSX_OPENZFS'),
  );
  static const fsxOntap = S3BucketObjectStorageClass._(
    TfArgLiteral('FSX_ONTAP'),
  );
  static const awsBackupWarm = S3BucketObjectStorageClass._(
    TfArgLiteral('AWS_BACKUP_WARM'),
  );
  static const awsBackupLowCostWarm = S3BucketObjectStorageClass._(
    TfArgLiteral('AWS_BACKUP_LOW_COST_WARM'),
  );

  static const List<S3BucketObjectStorageClass> values = [
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectBody.content] choice: sets `content`.
final class S3BucketObjectBodyContent extends S3BucketObjectBody {
  const S3BucketObjectBodyContent(this.content);

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

/// The [S3BucketObjectBody.contentBase64] choice: sets `content_base64`.
final class S3BucketObjectBodyContentBase64 extends S3BucketObjectBody {
  const S3BucketObjectBodyContentBase64(this.contentBase64);

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

/// The [S3BucketObjectBody.source] choice: sets `source`.
final class S3BucketObjectBodySource extends S3BucketObjectBody {
  const S3BucketObjectBodySource(this.source);

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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketObjectIntegrity.etag] choice: sets `etag`.
final class S3BucketObjectIntegrityEtag extends S3BucketObjectIntegrity {
  const S3BucketObjectIntegrityEtag(this.etag);

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

/// The [S3BucketObjectIntegrity.kmsKeyId] choice: sets `kms_key_id`.
final class S3BucketObjectIntegrityKmsKeyId extends S3BucketObjectIntegrity {
  const S3BucketObjectIntegrityKmsKeyId(this.kmsKeyId);

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

/// Factory wrapper for `aws_s3_bucket_object`.
final class AwsS3BucketObject extends Resource {
  static const String tfType = 'aws_s3_bucket_object';

  AwsS3BucketObject(
    super.localName, {
    S3BucketObjectAcl? acl,
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
    S3BucketObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    S3BucketObjectLockMode? objectLockMode,
    TfArg<String>? objectLockRetainUntilDate,
    TfArg<String>? region,
    S3BucketObjectServerSideEncryption? serverSideEncryption,
    TfArg<String>? sourceHash,
    S3BucketObjectStorageClass? storageClass,
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_inventory`.
const Set<String> _awsS3BucketInventorySensitive = <String>{};

/// S3 Bucket Inventory Included Object enum for `included_object_versions`.
extension type const S3BucketInventoryIncludedObjectVersions._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketInventoryIncludedObjectVersions.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketInventoryIncludedObjectVersions.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketInventoryIncludedObjectVersions.arg(TfArg<String> arg)
    : this._(arg);

  static const all = S3BucketInventoryIncludedObjectVersions._(
    TfArgLiteral('All'),
  );
  static const current = S3BucketInventoryIncludedObjectVersions._(
    TfArgLiteral('Current'),
  );

  static const List<S3BucketInventoryIncludedObjectVersions> values = [
    all,
    current,
  ];
}

/// S3 Bucket Inventory Optional enum for `optional_fields`.
extension type const S3BucketInventoryOptionalFields._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketInventoryOptionalFields.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketInventoryOptionalFields.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketInventoryOptionalFields.arg(TfArg<String> arg) : this._(arg);

  static const size = S3BucketInventoryOptionalFields._(TfArgLiteral('Size'));
  static const lastmodifieddate = S3BucketInventoryOptionalFields._(
    TfArgLiteral('LastModifiedDate'),
  );
  static const storageclass = S3BucketInventoryOptionalFields._(
    TfArgLiteral('StorageClass'),
  );
  static const etag = S3BucketInventoryOptionalFields._(TfArgLiteral('ETag'));
  static const ismultipartuploaded = S3BucketInventoryOptionalFields._(
    TfArgLiteral('IsMultipartUploaded'),
  );
  static const replicationstatus = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ReplicationStatus'),
  );
  static const encryptionstatus = S3BucketInventoryOptionalFields._(
    TfArgLiteral('EncryptionStatus'),
  );
  static const objectlockretainuntildate = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectLockRetainUntilDate'),
  );
  static const objectlockmode = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectLockMode'),
  );
  static const objectlocklegalholdstatus = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectLockLegalHoldStatus'),
  );
  static const objectlockeventholdstatus = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectLockEventHoldStatus'),
  );
  static const objectlockeventholdduration = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectLockEventHoldDuration'),
  );
  static const intelligenttieringaccesstier = S3BucketInventoryOptionalFields._(
    TfArgLiteral('IntelligentTieringAccessTier'),
  );
  static const bucketkeystatus = S3BucketInventoryOptionalFields._(
    TfArgLiteral('BucketKeyStatus'),
  );
  static const checksumalgorithm = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ChecksumAlgorithm'),
  );
  static const objectaccesscontrollist = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectAccessControlList'),
  );
  static const objectowner = S3BucketInventoryOptionalFields._(
    TfArgLiteral('ObjectOwner'),
  );
  static const lifecycleexpirationdate = S3BucketInventoryOptionalFields._(
    TfArgLiteral('LifecycleExpirationDate'),
  );

  static const List<S3BucketInventoryOptionalFields> values = [
    size,
    lastmodifieddate,
    storageclass,
    etag,
    ismultipartuploaded,
    replicationstatus,
    encryptionstatus,
    objectlockretainuntildate,
    objectlockmode,
    objectlocklegalholdstatus,
    objectlockeventholdstatus,
    objectlockeventholdduration,
    intelligenttieringaccesstier,
    bucketkeystatus,
    checksumalgorithm,
    objectaccesscontrollist,
    objectowner,
    lifecycleexpirationdate,
  ];
}

/// Typed helper for the `destination` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestination {
  const S3BucketInventoryDestination({required this.bucket});

  final S3BucketInventoryDestinationBucket bucket;

  Map<String, Object?> encode() => {'bucket': bucket.encode()};
}

/// Typed helper for the `destination.bucket` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryDestinationBucket {
  const S3BucketInventoryDestinationBucket({
    this.accountId,
    required this.bucketArn,
    required this.format,
    this.prefix,
    this.encryption,
  });

  final TfArg<String>? accountId;

  final RefTo<AwsS3Bucket> bucketArn;

  final S3BucketInventoryFormat format;

  final TfArg<String>? prefix;

  final S3BucketInventoryEncryption? encryption;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'format': format.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'encryption': ?encryption?.encode(),
  };
}

/// `format` — derived from the provider schema description.
extension type const S3BucketInventoryFormat._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketInventoryFormat.variable(String name) : this._(TfArg.variable(name));
  S3BucketInventoryFormat.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketInventoryFormat.arg(TfArg<String> arg) : this._(arg);

  static const csv = S3BucketInventoryFormat._(TfArgLiteral('CSV'));
  static const orc = S3BucketInventoryFormat._(TfArgLiteral('ORC'));
  static const parquet = S3BucketInventoryFormat._(TfArgLiteral('Parquet'));

  static const List<S3BucketInventoryFormat> values = [csv, orc, parquet];
}

/// At most one of `sse_kms`, `sse_s3` on the `destination.bucket.encryption` block of `aws_s3_bucket_inventory`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.sseKms(...)`.
sealed class S3BucketInventoryEncryption {
  const S3BucketInventoryEncryption();

  /// Sets `sse_kms`.
  const factory S3BucketInventoryEncryption.sseKms(
    S3BucketInventorySseKms sseKms,
  ) = S3BucketInventoryEncryptionSseKms;

  /// Sets `sse_s3`.
  const factory S3BucketInventoryEncryption.sseS3(
    S3BucketInventorySseS3 sseS3,
  ) = S3BucketInventoryEncryptionSseS3;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketInventoryEncryption.sseKms] choice: sets `sse_kms`.
final class S3BucketInventoryEncryptionSseKms
    extends S3BucketInventoryEncryption {
  const S3BucketInventoryEncryptionSseKms(this.sseKms);

  final S3BucketInventorySseKms sseKms;

  @override
  String get blockKey => 'sse_kms';

  @override
  Map<String, Object?> encode() => {'sse_kms': sseKms.encode()};
}

/// The [S3BucketInventoryEncryption.sseS3] choice: sets `sse_s3`.
final class S3BucketInventoryEncryptionSseS3
    extends S3BucketInventoryEncryption {
  const S3BucketInventoryEncryptionSseS3(this.sseS3);

  final S3BucketInventorySseS3 sseS3;

  @override
  String get blockKey => 'sse_s3';

  @override
  Map<String, Object?> encode() => {'sse_s3': sseS3.encode()};
}

/// Typed helper for the `destination.bucket.encryption.sse_kms` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventorySseKms {
  const S3BucketInventorySseKms({required this.keyId});

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {'key_id': keyId.encodeAs('arn').toTfJson()};
}

/// Typed helper for the `destination.bucket.encryption.sse_s3` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventorySseS3 {
  const S3BucketInventorySseS3();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventoryFilter {
  const S3BucketInventoryFilter({this.prefix});

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {'prefix': ?prefix?.toTfJson()};
}

/// Typed helper for the `schedule` block of
/// `aws_s3_bucket_inventory` (derived from provider schema).
@immutable
final class S3BucketInventorySchedule {
  const S3BucketInventorySchedule({required this.frequency});

  final S3BucketInventoryFrequency frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
extension type const S3BucketInventoryFrequency._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketInventoryFrequency.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketInventoryFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketInventoryFrequency.arg(TfArg<String> arg) : this._(arg);

  static const daily = S3BucketInventoryFrequency._(TfArgLiteral('Daily'));
  static const weekly = S3BucketInventoryFrequency._(TfArgLiteral('Weekly'));

  static const List<S3BucketInventoryFrequency> values = [daily, weekly];
}

/// Factory wrapper for `aws_s3_bucket_inventory`.
final class AwsS3BucketInventory extends Resource {
  static const String tfType = 'aws_s3_bucket_inventory';

  AwsS3BucketInventory(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? enabled,
    required S3BucketInventoryIncludedObjectVersions includedObjectVersions,
    required TfArg<String> name,
    List<S3BucketInventoryOptionalFields>? optionalFields,
    TfArg<String>? region,
    required S3BucketInventoryDestination destination,
    S3BucketInventoryFilter? filter,
    required S3BucketInventorySchedule schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'enabled': ?enabled,
           'included_object_versions': includedObjectVersions,
           'name': name,
           if (optionalFields != null)
             'optional_fields': TfArg.literal([
               for (final e in optionalFields) e.toTfJson(),
             ]),
           'region': ?region,
           'destination': TfArg.literal(destination.encode()),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketInventorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketInventory>`.
  RefTo<AwsS3BucketInventory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `included_object_versions` attribute.
  TfRef<String> get includedObjectVersions =>
      TfRef.attribute<String>(this, 'included_object_versions');

  /// Reference to `optional_fields` attribute.
  TfRef<List<String>> get optionalFields =>
      TfRef.attribute<List<String>>(this, 'optional_fields');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

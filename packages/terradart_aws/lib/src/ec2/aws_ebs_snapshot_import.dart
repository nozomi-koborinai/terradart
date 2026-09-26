// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot_import`.
const Set<String> _awsEbsSnapshotImportSensitive = <String>{};

/// Typed helper for the `client_data` block of
/// `aws_ebs_snapshot_import` (derived from provider schema).
@immutable
final class EbsSnapshotImportClientData {
  const EbsSnapshotImportClientData({
    this.comment,
    this.uploadEnd,
    this.uploadSize,
    this.uploadStart,
  });

  final TfArg<String>? comment;

  final TfArg<String>? uploadEnd;

  final TfArg<num>? uploadSize;

  final TfArg<String>? uploadStart;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    if (uploadEnd != null) 'upload_end': uploadEnd!.toTfJson(),
    if (uploadSize != null) 'upload_size': uploadSize!.toTfJson(),
    if (uploadStart != null) 'upload_start': uploadStart!.toTfJson(),
  };
}

/// Typed helper for the `disk_container` block of
/// `aws_ebs_snapshot_import` (derived from provider schema).
@immutable
final class EbsSnapshotImportDiskContainer {
  const EbsSnapshotImportDiskContainer({
    this.description,
    required this.format,
    this.url,
    this.userBucket,
  });

  final TfArg<String>? description;

  final TfArg<String> format;

  final TfArg<String>? url;

  final EbsSnapshotImportDiskContainerUserBucket? userBucket;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'format': format.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
    if (userBucket != null) 'user_bucket': userBucket!.encode(),
  };
}

/// Typed helper for the `disk_container.user_bucket` block of
/// `aws_ebs_snapshot_import` (derived from provider schema).
@immutable
final class EbsSnapshotImportDiskContainerUserBucket {
  const EbsSnapshotImportDiskContainerUserBucket({
    required this.s3Bucket,
    required this.s3Key,
  });

  final TfArg<String> s3Bucket;

  final TfArg<String> s3Key;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.toTfJson(),
    's3_key': s3Key.toTfJson(),
  };
}

/// Factory wrapper for `aws_ebs_snapshot_import`.
final class AwsEbsSnapshotImport extends Resource {
  static const String tfType = 'aws_ebs_snapshot_import';

  AwsEbsSnapshotImport({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? encrypted,
    TfArg<String>? kmsKeyId,
    TfArg<bool>? permanentRestore,
    TfArg<String>? region,
    TfArg<String>? roleName,
    TfArg<String>? storageTier,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? temporaryRestoreDays,
    EbsSnapshotImportClientData? clientData,
    required EbsSnapshotImportDiskContainer diskContainer,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (encrypted != null) 'encrypted': encrypted,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (permanentRestore != null) 'permanent_restore': permanentRestore,
           if (region != null) 'region': region,
           if (roleName != null) 'role_name': roleName,
           if (storageTier != null) 'storage_tier': storageTier,
           if (tags != null) 'tags': tags,
           if (temporaryRestoreDays != null)
             'temporary_restore_days': temporaryRestoreDays,
           if (clientData != null)
             'client_data': TfArg.literal(clientData.encode()),
           'disk_container': TfArg.literal(diskContainer.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotImportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_encryption_key_id` attribute.
  TfRef<String> get dataEncryptionKeyId =>
      TfRef.attribute<String>(this, 'data_encryption_key_id');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_alias` attribute.
  TfRef<String> get ownerAlias => TfRef.attribute<String>(this, 'owner_alias');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `volume_size` attribute.
  TfRef<num> get volumeSize => TfRef.attribute<num>(this, 'volume_size');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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
    required this.source,
  });

  final TfArg<String>? description;

  final TfArg<EbsSnapshotImportDiskContainerFormat> format;

  final EbsSnapshotImportDiskContainerSource source;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'format': format.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `url`, `user_bucket` on the `disk_container` block of `aws_ebs_snapshot_import`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.url(...)`.
sealed class EbsSnapshotImportDiskContainerSource {
  const EbsSnapshotImportDiskContainerSource();

  /// Sets `url`.
  const factory EbsSnapshotImportDiskContainerSource.url(TfArg<String> url) =
      EbsSnapshotImportDiskContainerSourceUrl;

  /// Sets `user_bucket`.
  const factory EbsSnapshotImportDiskContainerSource.userBucket(
    EbsSnapshotImportDiskContainerUserBucket userBucket,
  ) = EbsSnapshotImportDiskContainerSourceUserBucket;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EbsSnapshotImportDiskContainerSource.url] choice: sets `url`.
final class EbsSnapshotImportDiskContainerSourceUrl
    extends EbsSnapshotImportDiskContainerSource {
  const EbsSnapshotImportDiskContainerSourceUrl(this.url);

  final TfArg<String> url;

  @override
  String get blockKey => 'url';

  @override
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// The [EbsSnapshotImportDiskContainerSource.userBucket] choice: sets `user_bucket`.
final class EbsSnapshotImportDiskContainerSourceUserBucket
    extends EbsSnapshotImportDiskContainerSource {
  const EbsSnapshotImportDiskContainerSourceUserBucket(this.userBucket);

  final EbsSnapshotImportDiskContainerUserBucket userBucket;

  @override
  String get blockKey => 'user_bucket';

  @override
  Map<String, Object?> encode() => {'user_bucket': userBucket.encode()};
}

/// `format` — derived from the provider schema description.
enum EbsSnapshotImportDiskContainerFormat implements TerraformEnum {
  vmdk('VMDK'),
  raw('RAW'),
  vhd('VHD');

  const EbsSnapshotImportDiskContainerFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `disk_container.user_bucket` block of
/// `aws_ebs_snapshot_import` (derived from provider schema).
@immutable
final class EbsSnapshotImportDiskContainerUserBucket {
  const EbsSnapshotImportDiskContainerUserBucket({
    required this.s3Bucket,
    required this.s3Key,
  });

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String> s3Key;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
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
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<bool>? permanentRestore,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleName,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           if (permanentRestore != null) 'permanent_restore': permanentRestore,
           if (region != null) 'region': region,
           if (roleName != null) 'role_name': roleName.encodeAs('name'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsSnapshotImport>`.
  RefTo<AwsEbsSnapshotImport> get ref => RefTo.of(this);

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

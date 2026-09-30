// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ebs_snapshot_copy`.
const Set<String> _awsEbsSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_ebs_snapshot_copy`.
final class AwsEbsSnapshotCopy extends Resource {
  static const String tfType = 'aws_ebs_snapshot_copy';

  AwsEbsSnapshotCopy({
    required super.localName,
    TfArg<num>? completionDurationMinutes,
    TfArg<String>? description,
    TfArg<bool>? encrypted,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<bool>? permanentRestore,
    TfArg<String>? region,
    required TfArg<String> sourceRegion,
    required TfArg<String> sourceSnapshotId,
    TfArg<String>? storageTier,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? temporaryRestoreDays,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'completion_duration_minutes': ?completionDurationMinutes,
           'description': ?description,
           'encrypted': ?encrypted,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'permanent_restore': ?permanentRestore,
           'region': ?region,
           'source_region': sourceRegion,
           'source_snapshot_id': sourceSnapshotId,
           'storage_tier': ?storageTier,
           'tags': ?tags,
           'temporary_restore_days': ?temporaryRestoreDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsSnapshotCopy>`.
  RefTo<AwsEbsSnapshotCopy> get ref => RefTo.of(this);

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

  /// Reference to `completion_duration_minutes` attribute.
  TfRef<num> get completionDurationMinutesRef =>
      TfRef.attribute<num>(this, 'completion_duration_minutes');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encryptedRef => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `permanent_restore` attribute.
  TfRef<bool> get permanentRestoreRef =>
      TfRef.attribute<bool>(this, 'permanent_restore');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegionRef =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `source_snapshot_id` attribute.
  TfRef<String> get sourceSnapshotIdRef =>
      TfRef.attribute<String>(this, 'source_snapshot_id');

  /// Reference to `storage_tier` attribute.
  TfRef<String> get storageTierRef =>
      TfRef.attribute<String>(this, 'storage_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `temporary_restore_days` attribute.
  TfRef<num> get temporaryRestoreDaysRef =>
      TfRef.attribute<num>(this, 'temporary_restore_days');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot`.
const Set<String> _awsEbsSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_ebs_snapshot`.
final class AwsEbsSnapshot extends Resource {
  static const String tfType = 'aws_ebs_snapshot';

  AwsEbsSnapshot(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? outpostArn,
    TfArg<bool>? permanentRestore,
    TfArg<String>? region,
    TfArg<String>? storageTier,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? temporaryRestoreDays,
    required TfArg<String> volumeId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'outpost_arn': ?outpostArn,
           'permanent_restore': ?permanentRestore,
           'region': ?region,
           'storage_tier': ?storageTier,
           'tags': ?tags,
           'temporary_restore_days': ?temporaryRestoreDays,
           'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsSnapshot>`.
  RefTo<AwsEbsSnapshot> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_encryption_key_id` attribute.
  TfRef<String> get dataEncryptionKeyId =>
      TfRef.attribute<String>(this, 'data_encryption_key_id');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `owner_alias` attribute.
  TfRef<String> get ownerAlias => TfRef.attribute<String>(this, 'owner_alias');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `volume_size` attribute.
  TfRef<num> get volumeSize => TfRef.attribute<num>(this, 'volume_size');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `permanent_restore` attribute.
  TfRef<bool> get permanentRestore =>
      TfRef.attribute<bool>(this, 'permanent_restore');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_tier` attribute.
  TfRef<String> get storageTier =>
      TfRef.attribute<String>(this, 'storage_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `temporary_restore_days` attribute.
  TfRef<num> get temporaryRestoreDays =>
      TfRef.attribute<num>(this, 'temporary_restore_days');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');
}

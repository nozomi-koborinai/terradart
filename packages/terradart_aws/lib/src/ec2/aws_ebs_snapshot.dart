// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot`.
const Set<String> _awsEbsSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_ebs_snapshot`.
final class AwsEbsSnapshot extends Resource {
  static const String tfType = 'aws_ebs_snapshot';

  AwsEbsSnapshot({
    required super.localName,
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
           if (description != null) 'description': description,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (permanentRestore != null) 'permanent_restore': permanentRestore,
           if (region != null) 'region': region,
           if (storageTier != null) 'storage_tier': storageTier,
           if (tags != null) 'tags': tags,
           if (temporaryRestoreDays != null)
             'temporary_restore_days': temporaryRestoreDays,
           'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotSensitive;

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
}

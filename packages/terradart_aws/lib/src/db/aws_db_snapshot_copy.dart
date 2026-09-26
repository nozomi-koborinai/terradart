// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_snapshot_copy`.
const Set<String> _awsDbSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_db_snapshot_copy`.
final class AwsDbSnapshotCopy extends Resource {
  static const String tfType = 'aws_db_snapshot_copy';

  AwsDbSnapshotCopy({
    required super.localName,
    TfArg<bool>? copyTags,
    TfArg<String>? destinationRegion,
    TfArg<String>? kmsKeyId,
    TfArg<String>? optionGroupName,
    TfArg<String>? presignedUrl,
    TfArg<String>? region,
    TfArg<List<String>>? sharedAccounts,
    required TfArg<String> sourceDbSnapshotIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetCustomAvailabilityZone,
    required TfArg<String> targetDbSnapshotIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (copyTags != null) 'copy_tags': copyTags,
           if (destinationRegion != null)
             'destination_region': destinationRegion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (optionGroupName != null) 'option_group_name': optionGroupName,
           if (presignedUrl != null) 'presigned_url': presignedUrl,
           if (region != null) 'region': region,
           if (sharedAccounts != null) 'shared_accounts': sharedAccounts,
           'source_db_snapshot_identifier': sourceDbSnapshotIdentifier,
           if (tags != null) 'tags': tags,
           if (targetCustomAvailabilityZone != null)
             'target_custom_availability_zone': targetCustomAvailabilityZone,
           'target_db_snapshot_identifier': targetDbSnapshotIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbSnapshotCopySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `db_snapshot_arn` attribute.
  TfRef<String> get dbSnapshotArn =>
      TfRef.attribute<String>(this, 'db_snapshot_arn');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegion =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

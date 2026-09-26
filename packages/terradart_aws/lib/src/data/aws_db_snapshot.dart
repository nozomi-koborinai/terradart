// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_snapshot`.
const Set<String> _awsDbSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_db_snapshot`.
final class DataAwsDbSnapshot extends Data {
  static const String tfType = 'aws_db_snapshot';

  DataAwsDbSnapshot({
    required super.localName,
    TfArg<String>? dbInstanceIdentifier,
    TfArg<String>? dbSnapshotIdentifier,
    TfArg<bool>? includePublic,
    TfArg<bool>? includeShared,
    TfArg<bool>? mostRecent,
    TfArg<String>? region,
    TfArg<String>? snapshotType,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dbInstanceIdentifier != null)
             'db_instance_identifier': dbInstanceIdentifier,
           if (dbSnapshotIdentifier != null)
             'db_snapshot_identifier': dbSnapshotIdentifier,
           if (includePublic != null) 'include_public': includePublic,
           if (includeShared != null) 'include_shared': includeShared,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (region != null) 'region': region,
           if (snapshotType != null) 'snapshot_type': snapshotType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbSnapshotSensitive;

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

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `option_group_name` attribute.
  TfRef<String> get optionGroupName =>
      TfRef.attribute<String>(this, 'option_group_name');

  /// Reference to `original_snapshot_create_time` attribute.
  TfRef<String> get originalSnapshotCreateTime =>
      TfRef.attribute<String>(this, 'original_snapshot_create_time');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `snapshot_create_time` attribute.
  TfRef<String> get snapshotCreateTime =>
      TfRef.attribute<String>(this, 'snapshot_create_time');

  /// Reference to `source_db_snapshot_identifier` attribute.
  TfRef<String> get sourceDbSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'source_db_snapshot_identifier');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegion =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

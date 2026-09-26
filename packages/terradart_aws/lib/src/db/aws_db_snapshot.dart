// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_snapshot`.
const Set<String> _awsDbSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_db_snapshot`.
final class AwsDbSnapshot extends Resource {
  static const String tfType = 'aws_db_snapshot';

  AwsDbSnapshot({
    required super.localName,
    required TfArg<String> dbInstanceIdentifier,
    required TfArg<String> dbSnapshotIdentifier,
    TfArg<String>? region,
    TfArg<List<String>>? sharedAccounts,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_instance_identifier': dbInstanceIdentifier,
           'db_snapshot_identifier': dbSnapshotIdentifier,
           if (region != null) 'region': region,
           if (sharedAccounts != null) 'shared_accounts': sharedAccounts,
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

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

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

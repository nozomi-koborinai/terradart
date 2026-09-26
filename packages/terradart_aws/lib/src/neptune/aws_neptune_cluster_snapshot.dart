// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_snapshot`.
const Set<String> _awsNeptuneClusterSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_neptune_cluster_snapshot`.
final class AwsNeptuneClusterSnapshot extends Resource {
  static const String tfType = 'aws_neptune_cluster_snapshot';

  AwsNeptuneClusterSnapshot({
    required super.localName,
    required TfArg<String> dbClusterIdentifier,
    required TfArg<String> dbClusterSnapshotIdentifier,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_cluster_identifier': dbClusterIdentifier,
           'db_cluster_snapshot_identifier': dbClusterSnapshotIdentifier,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneClusterSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `db_cluster_snapshot_arn` attribute.
  TfRef<String> get dbClusterSnapshotArn =>
      TfRef.attribute<String>(this, 'db_cluster_snapshot_arn');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `source_db_cluster_snapshot_arn` attribute.
  TfRef<String> get sourceDbClusterSnapshotArn =>
      TfRef.attribute<String>(this, 'source_db_cluster_snapshot_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

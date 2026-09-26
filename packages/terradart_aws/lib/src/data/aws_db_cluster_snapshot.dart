// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_cluster_snapshot`.
const Set<String> _awsDbClusterSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_db_cluster_snapshot`.
final class DataAwsDbClusterSnapshot extends Data {
  static const String tfType = 'aws_db_cluster_snapshot';

  DataAwsDbClusterSnapshot({
    required super.localName,
    TfArg<String>? dbClusterIdentifier,
    TfArg<String>? dbClusterSnapshotIdentifier,
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
           if (dbClusterIdentifier != null)
             'db_cluster_identifier': dbClusterIdentifier,
           if (dbClusterSnapshotIdentifier != null)
             'db_cluster_snapshot_identifier': dbClusterSnapshotIdentifier,
           if (includePublic != null) 'include_public': includePublic,
           if (includeShared != null) 'include_shared': includeShared,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (region != null) 'region': region,
           if (snapshotType != null) 'snapshot_type': snapshotType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbClusterSnapshotSensitive;

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

  /// Reference to `snapshot_create_time` attribute.
  TfRef<String> get snapshotCreateTime =>
      TfRef.attribute<String>(this, 'snapshot_create_time');

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

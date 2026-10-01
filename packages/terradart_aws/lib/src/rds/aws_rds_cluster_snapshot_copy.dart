// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_rds_cluster_snapshot_copy`.
const Set<String> _awsRdsClusterSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_snapshot_copy`.
final class AwsRdsClusterSnapshotCopy extends Resource {
  static const String tfType = 'aws_rds_cluster_snapshot_copy';

  AwsRdsClusterSnapshotCopy({
    required super.localName,
    TfArg<bool>? copyTags,
    TfArg<String>? destinationRegion,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? presignedUrl,
    TfArg<String>? region,
    TfArg<List<String>>? sharedAccounts,
    required TfArg<String> sourceDbClusterSnapshotIdentifier,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetDbClusterSnapshotIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'copy_tags': ?copyTags,
           'destination_region': ?destinationRegion,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'presigned_url': ?presignedUrl,
           'region': ?region,
           'shared_accounts': ?sharedAccounts,
           'source_db_cluster_snapshot_identifier':
               sourceDbClusterSnapshotIdentifier,
           'tags': ?tags,
           'target_db_cluster_snapshot_identifier':
               targetDbClusterSnapshotIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterSnapshotCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterSnapshotCopy>`.
  RefTo<AwsRdsClusterSnapshotCopy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `db_cluster_snapshot_arn` attribute.
  TfRef<String> get dbClusterSnapshotArn =>
      TfRef.attribute<String>(this, 'db_cluster_snapshot_arn');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `copy_tags` attribute.
  TfRef<bool> get copyTags => TfRef.attribute<bool>(this, 'copy_tags');

  /// Reference to `destination_region` attribute.
  TfRef<String> get destinationRegion =>
      TfRef.attribute<String>(this, 'destination_region');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `presigned_url` attribute.
  TfRef<String> get presignedUrl =>
      TfRef.attribute<String>(this, 'presigned_url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `shared_accounts` attribute.
  TfRef<List<String>> get sharedAccounts =>
      TfRef.attribute<List<String>>(this, 'shared_accounts');

  /// Reference to `source_db_cluster_snapshot_identifier` attribute.
  TfRef<String> get sourceDbClusterSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'source_db_cluster_snapshot_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_db_cluster_snapshot_identifier` attribute.
  TfRef<String> get targetDbClusterSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'target_db_cluster_snapshot_identifier');
}

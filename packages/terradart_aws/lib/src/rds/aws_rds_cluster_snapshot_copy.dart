// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_snapshot_copy`.
const Set<String> _awsRdsClusterSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_snapshot_copy`.
final class AwsRdsClusterSnapshotCopy extends Resource {
  static const String tfType = 'aws_rds_cluster_snapshot_copy';

  AwsRdsClusterSnapshotCopy({
    required super.localName,
    TfArg<bool>? copyTags,
    TfArg<String>? destinationRegion,
    TfArg<String>? kmsKeyId,
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
           if (copyTags != null) 'copy_tags': copyTags,
           if (destinationRegion != null)
             'destination_region': destinationRegion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (presignedUrl != null) 'presigned_url': presignedUrl,
           if (region != null) 'region': region,
           if (sharedAccounts != null) 'shared_accounts': sharedAccounts,
           'source_db_cluster_snapshot_identifier':
               sourceDbClusterSnapshotIdentifier,
           if (tags != null) 'tags': tags,
           'target_db_cluster_snapshot_identifier':
               targetDbClusterSnapshotIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterSnapshotCopySensitive;

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
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_cluster_snapshot`.
const Set<String> _awsRedshiftClusterSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_redshift_cluster_snapshot`.
final class AwsRedshiftClusterSnapshot extends Resource {
  static const String tfType = 'aws_redshift_cluster_snapshot';

  AwsRedshiftClusterSnapshot({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    TfArg<num>? manualSnapshotRetentionPeriod,
    TfArg<String>? region,
    required TfArg<String> snapshotIdentifier,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           if (manualSnapshotRetentionPeriod != null)
             'manual_snapshot_retention_period': manualSnapshotRetentionPeriod,
           if (region != null) 'region': region,
           'snapshot_identifier': snapshotIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `owner_account` attribute.
  TfRef<String> get ownerAccount =>
      TfRef.attribute<String>(this, 'owner_account');
}

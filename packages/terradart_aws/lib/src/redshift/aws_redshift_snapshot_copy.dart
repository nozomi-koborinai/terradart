// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_copy`.
const Set<String> _awsRedshiftSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_copy`.
final class AwsRedshiftSnapshotCopy extends Resource {
  static const String tfType = 'aws_redshift_snapshot_copy';

  AwsRedshiftSnapshotCopy({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    required TfArg<String> destinationRegion,
    TfArg<num>? manualSnapshotRetentionPeriod,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    TfArg<String>? snapshotCopyGrantName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           'destination_region': destinationRegion,
           if (manualSnapshotRetentionPeriod != null)
             'manual_snapshot_retention_period': manualSnapshotRetentionPeriod,
           if (region != null) 'region': region,
           if (retentionPeriod != null) 'retention_period': retentionPeriod,
           if (snapshotCopyGrantName != null)
             'snapshot_copy_grant_name': snapshotCopyGrantName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotCopySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

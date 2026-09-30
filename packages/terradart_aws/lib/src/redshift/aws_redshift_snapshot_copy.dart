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
           'manual_snapshot_retention_period': ?manualSnapshotRetentionPeriod,
           'region': ?region,
           'retention_period': ?retentionPeriod,
           'snapshot_copy_grant_name': ?snapshotCopyGrantName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftSnapshotCopy>`.
  RefTo<AwsRedshiftSnapshotCopy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifierRef =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `destination_region` attribute.
  TfRef<String> get destinationRegionRef =>
      TfRef.attribute<String>(this, 'destination_region');

  /// Reference to `manual_snapshot_retention_period` attribute.
  TfRef<num> get manualSnapshotRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'manual_snapshot_retention_period');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period` attribute.
  TfRef<num> get retentionPeriodRef =>
      TfRef.attribute<num>(this, 'retention_period');

  /// Reference to `snapshot_copy_grant_name` attribute.
  TfRef<String> get snapshotCopyGrantNameRef =>
      TfRef.attribute<String>(this, 'snapshot_copy_grant_name');
}

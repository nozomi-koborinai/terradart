// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_schedule_association`.
const Set<String> _awsRedshiftSnapshotScheduleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_schedule_association`.
final class AwsRedshiftSnapshotScheduleAssociation extends Resource {
  static const String tfType = 'aws_redshift_snapshot_schedule_association';

  AwsRedshiftSnapshotScheduleAssociation(
    super.localName, {
    required TfArg<String> clusterIdentifier,
    TfArg<String>? region,
    required TfArg<String> scheduleIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           'region': ?region,
           'schedule_identifier': scheduleIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftSnapshotScheduleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftSnapshotScheduleAssociation>`.
  RefTo<AwsRedshiftSnapshotScheduleAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule_identifier` attribute.
  TfRef<String> get scheduleIdentifier =>
      TfRef.attribute<String>(this, 'schedule_identifier');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_schedule_association`.
const Set<String> _awsRedshiftSnapshotScheduleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_schedule_association`.
final class AwsRedshiftSnapshotScheduleAssociation extends Resource {
  static const String tfType = 'aws_redshift_snapshot_schedule_association';

  AwsRedshiftSnapshotScheduleAssociation({
    required super.localName,
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
           if (region != null) 'region': region,
           'schedule_identifier': scheduleIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftSnapshotScheduleAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

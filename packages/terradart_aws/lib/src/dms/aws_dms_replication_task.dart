// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_replication_task`.
const Set<String> _awsDmsReplicationTaskSensitive = <String>{};

/// Dms Replication Task Migration enum for `migration_type`.
enum DmsReplicationTaskMigrationType implements TerraformEnum {
  fullLoad('full-load'),
  cdc('cdc'),
  fullLoadAndCdc('full-load-and-cdc');

  const DmsReplicationTaskMigrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cdc_start_position`, `cdc_start_time` on `aws_dms_replication_task`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cdcStartPosition(...)`.
sealed class DmsReplicationTaskCdcStartPositionOrCdcStartTime {
  const DmsReplicationTaskCdcStartPositionOrCdcStartTime();

  /// Sets `cdc_start_position`.
  const factory DmsReplicationTaskCdcStartPositionOrCdcStartTime.cdcStartPosition(
    TfArg<String> cdcStartPosition,
  ) = DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartPosition;

  /// Sets `cdc_start_time`.
  const factory DmsReplicationTaskCdcStartPositionOrCdcStartTime.cdcStartTime(
    TfArg<String> cdcStartTime,
  ) = DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DmsReplicationTaskCdcStartPositionOrCdcStartTime.cdcStartPosition] choice: sets `cdc_start_position`.
final class DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartPosition
    extends DmsReplicationTaskCdcStartPositionOrCdcStartTime {
  const DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartPosition(
    this.cdcStartPosition,
  );

  final TfArg<String> cdcStartPosition;

  @override
  String get blockKey => 'cdc_start_position';

  @override
  Map<String, Object?> encode() => {
    'cdc_start_position': cdcStartPosition.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cdc_start_position': cdcStartPosition,
  };
}

/// The [DmsReplicationTaskCdcStartPositionOrCdcStartTime.cdcStartTime] choice: sets `cdc_start_time`.
final class DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartTime
    extends DmsReplicationTaskCdcStartPositionOrCdcStartTime {
  const DmsReplicationTaskCdcStartPositionOrCdcStartTimeCdcStartTime(
    this.cdcStartTime,
  );

  final TfArg<String> cdcStartTime;

  @override
  String get blockKey => 'cdc_start_time';

  @override
  Map<String, Object?> encode() => {'cdc_start_time': cdcStartTime.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cdc_start_time': cdcStartTime};
}

/// Factory wrapper for `aws_dms_replication_task`.
final class AwsDmsReplicationTask extends Resource {
  static const String tfType = 'aws_dms_replication_task';

  AwsDmsReplicationTask({
    required super.localName,
    DmsReplicationTaskCdcStartPositionOrCdcStartTime?
    cdcStartPositionOrCdcStartTime,
    required TfArg<DmsReplicationTaskMigrationType> migrationType,
    TfArg<String>? region,
    required TfArg<String> replicationInstanceArn,
    required TfArg<String> replicationTaskId,
    TfArg<String>? replicationTaskSettings,
    TfArg<String>? resourceIdentifier,
    required TfArg<String> sourceEndpointArn,
    TfArg<bool>? startReplicationTask,
    required TfArg<String> tableMappings,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetEndpointArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?cdcStartPositionOrCdcStartTime?.argMap,
           'migration_type': migrationType,
           if (region != null) 'region': region,
           'replication_instance_arn': replicationInstanceArn,
           'replication_task_id': replicationTaskId,
           if (replicationTaskSettings != null)
             'replication_task_settings': replicationTaskSettings,
           if (resourceIdentifier != null)
             'resource_identifier': resourceIdentifier,
           'source_endpoint_arn': sourceEndpointArn,
           if (startReplicationTask != null)
             'start_replication_task': startReplicationTask,
           'table_mappings': tableMappings,
           if (tags != null) 'tags': tags,
           'target_endpoint_arn': targetEndpointArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsReplicationTask>`.
  RefTo<AwsDmsReplicationTask> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replication_task_arn` attribute.
  TfRef<String> get replicationTaskArn =>
      TfRef.attribute<String>(this, 'replication_task_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

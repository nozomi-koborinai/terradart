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
sealed class DmsReplicationTaskCdcStart {
  const DmsReplicationTaskCdcStart();

  /// Sets `cdc_start_position`.
  const factory DmsReplicationTaskCdcStart.cdcStartPosition(
    TfArg<String> cdcStartPosition,
  ) = DmsReplicationTaskCdcStartPosition;

  /// Sets `cdc_start_time`.
  const factory DmsReplicationTaskCdcStart.cdcStartTime(
    TfArg<String> cdcStartTime,
  ) = DmsReplicationTaskCdcStartTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DmsReplicationTaskCdcStart.cdcStartPosition] choice: sets `cdc_start_position`.
final class DmsReplicationTaskCdcStartPosition
    extends DmsReplicationTaskCdcStart {
  const DmsReplicationTaskCdcStartPosition(this.cdcStartPosition);

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

/// The [DmsReplicationTaskCdcStart.cdcStartTime] choice: sets `cdc_start_time`.
final class DmsReplicationTaskCdcStartTime extends DmsReplicationTaskCdcStart {
  const DmsReplicationTaskCdcStartTime(this.cdcStartTime);

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
    DmsReplicationTaskCdcStart? cdcStart,
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
           ...?cdcStart?.argMap,
           'migration_type': migrationType,
           'region': ?region,
           'replication_instance_arn': replicationInstanceArn,
           'replication_task_id': replicationTaskId,
           'replication_task_settings': ?replicationTaskSettings,
           'resource_identifier': ?resourceIdentifier,
           'source_endpoint_arn': sourceEndpointArn,
           'start_replication_task': ?startReplicationTask,
           'table_mappings': tableMappings,
           'tags': ?tags,
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

  /// Reference to `cdc_start_position` attribute.
  TfRef<String> get cdcStartPositionRef =>
      TfRef.attribute<String>(this, 'cdc_start_position');

  /// Reference to `cdc_start_time` attribute.
  TfRef<String> get cdcStartTimeRef =>
      TfRef.attribute<String>(this, 'cdc_start_time');

  /// Reference to `migration_type` attribute.
  TfRef<String> get migrationTypeRef =>
      TfRef.attribute<String>(this, 'migration_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_instance_arn` attribute.
  TfRef<String> get replicationInstanceArnRef =>
      TfRef.attribute<String>(this, 'replication_instance_arn');

  /// Reference to `replication_task_id` attribute.
  TfRef<String> get replicationTaskIdRef =>
      TfRef.attribute<String>(this, 'replication_task_id');

  /// Reference to `replication_task_settings` attribute.
  TfRef<String> get replicationTaskSettingsRef =>
      TfRef.attribute<String>(this, 'replication_task_settings');

  /// Reference to `resource_identifier` attribute.
  TfRef<String> get resourceIdentifierRef =>
      TfRef.attribute<String>(this, 'resource_identifier');

  /// Reference to `source_endpoint_arn` attribute.
  TfRef<String> get sourceEndpointArnRef =>
      TfRef.attribute<String>(this, 'source_endpoint_arn');

  /// Reference to `start_replication_task` attribute.
  TfRef<bool> get startReplicationTaskRef =>
      TfRef.attribute<bool>(this, 'start_replication_task');

  /// Reference to `table_mappings` attribute.
  TfRef<String> get tableMappingsRef =>
      TfRef.attribute<String>(this, 'table_mappings');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_endpoint_arn` attribute.
  TfRef<String> get targetEndpointArnRef =>
      TfRef.attribute<String>(this, 'target_endpoint_arn');
}

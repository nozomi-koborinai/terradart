// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_replication_task`.
const Set<String> _awsDmsReplicationTaskSensitive = <String>{};

/// Factory wrapper for `aws_dms_replication_task`.
final class AwsDmsReplicationTask extends Resource {
  static const String tfType = 'aws_dms_replication_task';

  AwsDmsReplicationTask({
    required super.localName,
    TfArg<String>? cdcStartPosition,
    TfArg<String>? cdcStartTime,
    required TfArg<String> migrationType,
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
           if (cdcStartPosition != null) 'cdc_start_position': cdcStartPosition,
           if (cdcStartTime != null) 'cdc_start_time': cdcStartTime,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replication_task_arn` attribute.
  TfRef<String> get replicationTaskArn =>
      TfRef.attribute<String>(this, 'replication_task_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dms/aws_dms_replication_task.dart';

/// Sensitive field paths for `aws_dms_replication_task`.
const Set<String> _awsDmsReplicationTaskSensitive = <String>{};

/// Factory wrapper for `aws_dms_replication_task`.
final class DataAwsDmsReplicationTask extends Data {
  static const String tfType = 'aws_dms_replication_task';

  DataAwsDmsReplicationTask({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> replicationTaskId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'replication_task_id': replicationTaskId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationTaskSensitive;

  /// A reference to the `aws_dms_replication_task` this data source reads, for
  /// arguments typed `RefTo<AwsDmsReplicationTask>`.
  RefTo<AwsDmsReplicationTask> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdc_start_position` attribute.
  TfRef<String> get cdcStartPosition =>
      TfRef.attribute<String>(this, 'cdc_start_position');

  /// Reference to `cdc_start_time` attribute.
  TfRef<String> get cdcStartTime =>
      TfRef.attribute<String>(this, 'cdc_start_time');

  /// Reference to `migration_type` attribute.
  TfRef<String> get migrationType =>
      TfRef.attribute<String>(this, 'migration_type');

  /// Reference to `replication_instance_arn` attribute.
  TfRef<String> get replicationInstanceArn =>
      TfRef.attribute<String>(this, 'replication_instance_arn');

  /// Reference to `replication_task_arn` attribute.
  TfRef<String> get replicationTaskArn =>
      TfRef.attribute<String>(this, 'replication_task_arn');

  /// Reference to `replication_task_settings` attribute.
  TfRef<String> get replicationTaskSettings =>
      TfRef.attribute<String>(this, 'replication_task_settings');

  /// Reference to `source_endpoint_arn` attribute.
  TfRef<String> get sourceEndpointArn =>
      TfRef.attribute<String>(this, 'source_endpoint_arn');

  /// Reference to `start_replication_task` attribute.
  TfRef<bool> get startReplicationTask =>
      TfRef.attribute<bool>(this, 'start_replication_task');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `table_mappings` attribute.
  TfRef<String> get tableMappings =>
      TfRef.attribute<String>(this, 'table_mappings');

  /// Reference to `target_endpoint_arn` attribute.
  TfRef<String> get targetEndpointArn =>
      TfRef.attribute<String>(this, 'target_endpoint_arn');
}

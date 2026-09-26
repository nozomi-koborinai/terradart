// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_cluster`.
const Set<String> _awsEcsClusterSensitive = <String>{};

/// Factory wrapper for `aws_ecs_cluster`.
final class DataAwsEcsCluster extends Data {
  static const String tfType = 'aws_ecs_cluster';

  DataAwsEcsCluster({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `pending_tasks_count` attribute.
  TfRef<num> get pendingTasksCount =>
      TfRef.attribute<num>(this, 'pending_tasks_count');

  /// Reference to `registered_container_instances_count` attribute.
  TfRef<num> get registeredContainerInstancesCount =>
      TfRef.attribute<num>(this, 'registered_container_instances_count');

  /// Reference to `running_tasks_count` attribute.
  TfRef<num> get runningTasksCount =>
      TfRef.attribute<num>(this, 'running_tasks_count');

  /// Reference to `service_connect_defaults` attribute.
  TfRef<List<Map<String, Object?>>> get serviceConnectDefaults =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'service_connect_defaults',
      );

  /// Reference to `setting` attribute.
  TfRef<List<Map<String, Object?>>> get setting =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'setting');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

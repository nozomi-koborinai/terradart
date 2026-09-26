// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_service`.
const Set<String> _awsEcsServiceSensitive = <String>{};

/// Factory wrapper for `aws_ecs_service`.
final class DataAwsEcsService extends Data {
  static const String tfType = 'aws_ecs_service';

  DataAwsEcsService({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    required TfArg<String> serviceName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           if (region != null) 'region': region,
           'service_name': serviceName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone_rebalancing` attribute.
  TfRef<String> get availabilityZoneRebalancing =>
      TfRef.attribute<String>(this, 'availability_zone_rebalancing');

  /// Reference to `capacity_provider_strategy` attribute.
  TfRef<List<Map<String, Object?>>> get capacityProviderStrategy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'capacity_provider_strategy',
      );

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `deployment_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get deploymentConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'deployment_configuration',
      );

  /// Reference to `deployment_controller` attribute.
  TfRef<List<Map<String, Object?>>> get deploymentController =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'deployment_controller',
      );

  /// Reference to `deployments` attribute.
  TfRef<List<Map<String, Object?>>> get deployments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deployments');

  /// Reference to `desired_count` attribute.
  TfRef<num> get desiredCount => TfRef.attribute<num>(this, 'desired_count');

  /// Reference to `enable_ecs_managed_tags` attribute.
  TfRef<bool> get enableEcsManagedTags =>
      TfRef.attribute<bool>(this, 'enable_ecs_managed_tags');

  /// Reference to `enable_execute_command` attribute.
  TfRef<bool> get enableExecuteCommand =>
      TfRef.attribute<bool>(this, 'enable_execute_command');

  /// Reference to `events` attribute.
  TfRef<List<Map<String, Object?>>> get events =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'events');

  /// Reference to `health_check_grace_period_seconds` attribute.
  TfRef<num> get healthCheckGracePeriodSeconds =>
      TfRef.attribute<num>(this, 'health_check_grace_period_seconds');

  /// Reference to `iam_role` attribute.
  TfRef<String> get iamRole => TfRef.attribute<String>(this, 'iam_role');

  /// Reference to `launch_type` attribute.
  TfRef<String> get launchType => TfRef.attribute<String>(this, 'launch_type');

  /// Reference to `load_balancer` attribute.
  TfRef<List<Map<String, Object?>>> get loadBalancer =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'load_balancer');

  /// Reference to `network_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_configuration',
      );

  /// Reference to `ordered_placement_strategy` attribute.
  TfRef<List<Map<String, Object?>>> get orderedPlacementStrategy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ordered_placement_strategy',
      );

  /// Reference to `pending_count` attribute.
  TfRef<num> get pendingCount => TfRef.attribute<num>(this, 'pending_count');

  /// Reference to `placement_constraints` attribute.
  TfRef<List<Map<String, Object?>>> get placementConstraints =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'placement_constraints',
      );

  /// Reference to `platform_family` attribute.
  TfRef<String> get platformFamily =>
      TfRef.attribute<String>(this, 'platform_family');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `propagate_tags` attribute.
  TfRef<String> get propagateTags =>
      TfRef.attribute<String>(this, 'propagate_tags');

  /// Reference to `running_count` attribute.
  TfRef<num> get runningCount => TfRef.attribute<num>(this, 'running_count');

  /// Reference to `scheduling_strategy` attribute.
  TfRef<String> get schedulingStrategy =>
      TfRef.attribute<String>(this, 'scheduling_strategy');

  /// Reference to `service_registries` attribute.
  TfRef<List<Map<String, Object?>>> get serviceRegistries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_registries');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `task_definition` attribute.
  TfRef<String> get taskDefinition =>
      TfRef.attribute<String>(this, 'task_definition');

  /// Reference to `task_sets` attribute.
  TfRef<List<Map<String, Object?>>> get taskSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'task_sets');
}

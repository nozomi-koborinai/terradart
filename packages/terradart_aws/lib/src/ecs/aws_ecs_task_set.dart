// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_task_set`.
const Set<String> _awsEcsTaskSetSensitive = <String>{};

/// Typed helper for the `capacity_provider_strategy` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetCapacityProviderStrategy {
  const EcsTaskSetCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    required this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    if (base != null) 'base': base!.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `load_balancer` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetLoadBalancer {
  const EcsTaskSetLoadBalancer({
    required this.containerName,
    this.containerPort,
    this.loadBalancerName,
    this.targetGroupArn,
  });

  final TfArg<String> containerName;

  final TfArg<num>? containerPort;

  final TfArg<String>? loadBalancerName;

  final TfArg<String>? targetGroupArn;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    if (containerPort != null) 'container_port': containerPort!.toTfJson(),
    if (loadBalancerName != null)
      'load_balancer_name': loadBalancerName!.toTfJson(),
    if (targetGroupArn != null) 'target_group_arn': targetGroupArn!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetNetworkConfiguration {
  const EcsTaskSetNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  final TfArg<bool>? assignPublicIp;

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    if (assignPublicIp != null) 'assign_public_ip': assignPublicIp!.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `scale` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetScale {
  const EcsTaskSetScale({this.unit, this.value});

  final TfArg<String>? unit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (unit != null) 'unit': unit!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `service_registries` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetServiceRegistries {
  const EcsTaskSetServiceRegistries({
    this.containerName,
    this.containerPort,
    this.port,
    required this.registryArn,
  });

  final TfArg<String>? containerName;

  final TfArg<num>? containerPort;

  final TfArg<num>? port;

  final TfArg<String> registryArn;

  Map<String, Object?> encode() => {
    if (containerName != null) 'container_name': containerName!.toTfJson(),
    if (containerPort != null) 'container_port': containerPort!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    'registry_arn': registryArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_task_set`.
final class AwsEcsTaskSet extends Resource {
  static const String tfType = 'aws_ecs_task_set';

  AwsEcsTaskSet({
    required super.localName,
    required TfArg<String> cluster,
    TfArg<String>? externalId,
    TfArg<bool>? forceDelete,
    TfArg<String>? launchType,
    TfArg<String>? platformVersion,
    TfArg<String>? region,
    required TfArg<String> service,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> taskDefinition,
    TfArg<bool>? waitUntilStable,
    TfArg<String>? waitUntilStableTimeout,
    List<EcsTaskSetCapacityProviderStrategy>? capacityProviderStrategy,
    List<EcsTaskSetLoadBalancer>? loadBalancer,
    EcsTaskSetNetworkConfiguration? networkConfiguration,
    EcsTaskSetScale? scale,
    EcsTaskSetServiceRegistries? serviceRegistries,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           if (externalId != null) 'external_id': externalId,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (launchType != null) 'launch_type': launchType,
           if (platformVersion != null) 'platform_version': platformVersion,
           if (region != null) 'region': region,
           'service': service,
           if (tags != null) 'tags': tags,
           'task_definition': taskDefinition,
           if (waitUntilStable != null) 'wait_until_stable': waitUntilStable,
           if (waitUntilStableTimeout != null)
             'wait_until_stable_timeout': waitUntilStableTimeout,
           if (capacityProviderStrategy != null)
             'capacity_provider_strategy': TfArg.literal([
               for (final e in capacityProviderStrategy) e.encode(),
             ]),
           if (loadBalancer != null)
             'load_balancer': TfArg.literal([
               for (final e in loadBalancer) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (scale != null) 'scale': TfArg.literal(scale.encode()),
           if (serviceRegistries != null)
             'service_registries': TfArg.literal(serviceRegistries.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsTaskSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stability_status` attribute.
  TfRef<String> get stabilityStatus =>
      TfRef.attribute<String>(this, 'stability_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `task_set_id` attribute.
  TfRef<String> get taskSetId => TfRef.attribute<String>(this, 'task_set_id');
}

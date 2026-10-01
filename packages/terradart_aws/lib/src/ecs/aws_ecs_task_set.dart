// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ecs/aws_ecs_cluster.dart' show AwsEcsCluster;

/// Sensitive field paths for `aws_ecs_task_set`.
const Set<String> _awsEcsTaskSetSensitive = <String>{};

/// Ecs Task Set Launch enum for `launch_type`.
enum EcsTaskSetLaunchType implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL'),
  managedInstances('MANAGED_INSTANCES');

  const EcsTaskSetLaunchType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `capacity_provider_strategy`, `launch_type` on `aws_ecs_task_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityProviderStrategy(...)`.
sealed class EcsTaskSetCompute {
  const EcsTaskSetCompute();

  /// Sets `capacity_provider_strategy`.
  const factory EcsTaskSetCompute.capacityProviderStrategy(
    List<EcsTaskSetCapacityProviderStrategy> capacityProviderStrategy,
  ) = EcsTaskSetComputeCapacityProviderStrategy;

  /// Sets `launch_type`.
  const factory EcsTaskSetCompute.launchType(
    TfArg<EcsTaskSetLaunchType> launchType,
  ) = EcsTaskSetComputeLaunchType;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EcsTaskSetCompute.capacityProviderStrategy] choice: sets `capacity_provider_strategy`.
final class EcsTaskSetComputeCapacityProviderStrategy
    extends EcsTaskSetCompute {
  const EcsTaskSetComputeCapacityProviderStrategy(
    this.capacityProviderStrategy,
  );

  final List<EcsTaskSetCapacityProviderStrategy> capacityProviderStrategy;

  @override
  String get blockKey => 'capacity_provider_strategy';

  @override
  Map<String, Object?> encode() => {
    'capacity_provider_strategy': [
      for (final e in capacityProviderStrategy) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'capacity_provider_strategy': TfArg.literal([
      for (final e in capacityProviderStrategy) e.encode(),
    ]),
  };
}

/// The [EcsTaskSetCompute.launchType] choice: sets `launch_type`.
final class EcsTaskSetComputeLaunchType extends EcsTaskSetCompute {
  const EcsTaskSetComputeLaunchType(this.launchType);

  final TfArg<EcsTaskSetLaunchType> launchType;

  @override
  String get blockKey => 'launch_type';

  @override
  Map<String, Object?> encode() => {'launch_type': launchType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'launch_type': launchType};
}

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
    'base': ?base?.toTfJson(),
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
    'container_port': ?containerPort?.toTfJson(),
    'load_balancer_name': ?loadBalancerName?.toTfJson(),
    'target_group_arn': ?targetGroupArn?.toTfJson(),
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

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'assign_public_ip': ?assignPublicIp?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `scale` block of
/// `aws_ecs_task_set` (derived from provider schema).
@immutable
final class EcsTaskSetScale {
  const EcsTaskSetScale({this.unit, this.value});

  final TfArg<EcsTaskSetUnit>? unit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'unit': ?unit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum EcsTaskSetUnit implements TerraformEnum {
  percent('PERCENT');

  const EcsTaskSetUnit(this.terraformValue);
  @override
  final String terraformValue;
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
    'container_name': ?containerName?.toTfJson(),
    'container_port': ?containerPort?.toTfJson(),
    'port': ?port?.toTfJson(),
    'registry_arn': registryArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_task_set`.
final class AwsEcsTaskSet extends Resource {
  static const String tfType = 'aws_ecs_task_set';

  AwsEcsTaskSet(
    super.localName, {
    required RefTo<AwsEcsCluster> cluster,
    TfArg<String>? externalId,
    TfArg<bool>? forceDelete,
    EcsTaskSetCompute? compute,
    TfArg<String>? platformVersion,
    TfArg<String>? region,
    required TfArg<String> service,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> taskDefinition,
    TfArg<bool>? waitUntilStable,
    TfArg<String>? waitUntilStableTimeout,
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
           'cluster': cluster.encodeAs('arn'),
           'external_id': ?externalId,
           'force_delete': ?forceDelete,
           ...?compute?.argMap,
           'platform_version': ?platformVersion,
           'region': ?region,
           'service': service,
           'tags': ?tags,
           'task_definition': taskDefinition,
           'wait_until_stable': ?waitUntilStable,
           'wait_until_stable_timeout': ?waitUntilStableTimeout,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsTaskSet>`.
  RefTo<AwsEcsTaskSet> get ref => RefTo.of(this);

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

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `launch_type` attribute.
  TfRef<String> get launchType => TfRef.attribute<String>(this, 'launch_type');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_definition` attribute.
  TfRef<String> get taskDefinition =>
      TfRef.attribute<String>(this, 'task_definition');

  /// Reference to `wait_until_stable` attribute.
  TfRef<bool> get waitUntilStable =>
      TfRef.attribute<bool>(this, 'wait_until_stable');

  /// Reference to `wait_until_stable_timeout` attribute.
  TfRef<String> get waitUntilStableTimeout =>
      TfRef.attribute<String>(this, 'wait_until_stable_timeout');
}

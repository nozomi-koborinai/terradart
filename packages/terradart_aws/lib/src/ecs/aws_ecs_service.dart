// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ecs/aws_ecs_cluster.dart' show AwsEcsCluster;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ecs_service`.
const Set<String> _awsEcsServiceSensitive = <String>{};

/// Ecs Service Availability Zone enum for `availability_zone_rebalancing`.
enum EcsServiceAvailabilityZoneRebalancing implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsServiceAvailabilityZoneRebalancing(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Service Launch enum for `launch_type`.
enum EcsServiceLaunchType implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL'),
  managedInstances('MANAGED_INSTANCES');

  const EcsServiceLaunchType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Service Propagate enum for `propagate_tags`.
enum EcsServicePropagateTags implements TerraformEnum {
  taskDefinition('TASK_DEFINITION'),
  service('SERVICE'),
  none('NONE');

  const EcsServicePropagateTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecs Service Scheduling enum for `scheduling_strategy`.
enum EcsServiceSchedulingStrategy implements TerraformEnum {
  replica('REPLICA'),
  daemon('DAEMON');

  const EcsServiceSchedulingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `alarms` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceAlarms {
  const EcsServiceAlarms({
    required this.alarmNames,
    required this.enable,
    required this.rollback,
  });

  final TfArg<List<String>> alarmNames;

  final TfArg<bool> enable;

  final TfArg<bool> rollback;

  Map<String, Object?> encode() => {
    'alarm_names': alarmNames.toTfJson(),
    'enable': enable.toTfJson(),
    'rollback': rollback.toTfJson(),
  };
}

/// Typed helper for the `capacity_provider_strategy` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceCapacityProviderStrategy {
  const EcsServiceCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `deployment_circuit_breaker` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentCircuitBreaker {
  const EcsServiceDeploymentCircuitBreaker({
    required this.enable,
    required this.rollback,
  });

  final TfArg<bool> enable;

  final TfArg<bool> rollback;

  Map<String, Object?> encode() => {
    'enable': enable.toTfJson(),
    'rollback': rollback.toTfJson(),
  };
}

/// Typed helper for the `deployment_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentConfiguration {
  const EcsServiceDeploymentConfiguration({
    this.bakeTimeInMinutes,
    this.strategy,
    this.canaryConfiguration,
    this.lifecycleHook,
    this.linearConfiguration,
  });

  final TfArg<String>? bakeTimeInMinutes;

  final TfArg<EcsServiceStrategy>? strategy;

  final EcsServiceCanaryConfiguration? canaryConfiguration;

  final List<EcsServiceLifecycleHook>? lifecycleHook;

  final EcsServiceLinearConfiguration? linearConfiguration;

  Map<String, Object?> encode() => {
    'bake_time_in_minutes': ?bakeTimeInMinutes?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'canary_configuration': ?canaryConfiguration?.encode(),
    if (lifecycleHook != null)
      'lifecycle_hook': [for (final e in lifecycleHook!) e.encode()],
    'linear_configuration': ?linearConfiguration?.encode(),
  };
}

/// `strategy` — derived from the provider schema description.
enum EcsServiceStrategy implements TerraformEnum {
  rolling('ROLLING'),
  blueGreen('BLUE_GREEN'),
  linear('LINEAR'),
  canary('CANARY');

  const EcsServiceStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_configuration.canary_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceCanaryConfiguration {
  const EcsServiceCanaryConfiguration({
    this.canaryBakeTimeInMinutes,
    this.canaryPercent,
  });

  final TfArg<String>? canaryBakeTimeInMinutes;

  final TfArg<num>? canaryPercent;

  Map<String, Object?> encode() => {
    'canary_bake_time_in_minutes': ?canaryBakeTimeInMinutes?.toTfJson(),
    'canary_percent': ?canaryPercent?.toTfJson(),
  };
}

/// Typed helper for the `deployment_configuration.lifecycle_hook` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceLifecycleHook {
  const EcsServiceLifecycleHook({
    this.hookDetails,
    this.hookTargetArn,
    required this.lifecycleStages,
    this.roleArn,
    this.targetType,
    this.timeoutConfiguration,
  });

  final TfArg<String>? hookDetails;

  final TfArg<String>? hookTargetArn;

  final List<TfArg<EcsServiceLifecycleStages>> lifecycleStages;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<EcsServiceTargetType>? targetType;

  final EcsServiceTimeoutConfiguration? timeoutConfiguration;

  Map<String, Object?> encode() => {
    'hook_details': ?hookDetails?.toTfJson(),
    'hook_target_arn': ?hookTargetArn?.toTfJson(),
    'lifecycle_stages': [for (final e in lifecycleStages) e.toTfJson()],
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'target_type': ?targetType?.toTfJson(),
    'timeout_configuration': ?timeoutConfiguration?.encode(),
  };
}

/// `lifecycle_stages` — derived from the provider schema description.
enum EcsServiceLifecycleStages implements TerraformEnum {
  reconcileService('RECONCILE_SERVICE'),
  preScaleUp('PRE_SCALE_UP'),
  postScaleUp('POST_SCALE_UP'),
  testTrafficShift('TEST_TRAFFIC_SHIFT'),
  postTestTrafficShift('POST_TEST_TRAFFIC_SHIFT'),
  preProductionTrafficShift('PRE_PRODUCTION_TRAFFIC_SHIFT'),
  productionTrafficShift('PRODUCTION_TRAFFIC_SHIFT'),
  postProductionTrafficShift('POST_PRODUCTION_TRAFFIC_SHIFT');

  const EcsServiceLifecycleStages(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target_type` — derived from the provider schema description.
enum EcsServiceTargetType implements TerraformEnum {
  awsLambda('AWS_LAMBDA'),
  pause('PAUSE');

  const EcsServiceTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_configuration.lifecycle_hook.timeout_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceTimeoutConfiguration {
  const EcsServiceTimeoutConfiguration({this.action, this.timeoutInMinutes});

  final TfArg<EcsServiceAction>? action;

  final TfArg<String>? timeoutInMinutes;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'timeout_in_minutes': ?timeoutInMinutes?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum EcsServiceAction implements TerraformEnum {
  rollback('ROLLBACK'),
  continueCase('CONTINUE');

  const EcsServiceAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_configuration.linear_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceLinearConfiguration {
  const EcsServiceLinearConfiguration({
    this.stepBakeTimeInMinutes,
    this.stepPercent,
  });

  final TfArg<String>? stepBakeTimeInMinutes;

  final TfArg<num>? stepPercent;

  Map<String, Object?> encode() => {
    'step_bake_time_in_minutes': ?stepBakeTimeInMinutes?.toTfJson(),
    'step_percent': ?stepPercent?.toTfJson(),
  };
}

/// Typed helper for the `deployment_controller` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentController {
  const EcsServiceDeploymentController({this.type});

  final TfArg<EcsServiceDeploymentControllerType>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum EcsServiceDeploymentControllerType implements TerraformEnum {
  ecs('ECS'),
  codeDeploy('CODE_DEPLOY'),
  external('EXTERNAL');

  const EcsServiceDeploymentControllerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `load_balancer` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceLoadBalancer {
  const EcsServiceLoadBalancer({
    required this.containerName,
    required this.containerPort,
    this.elbName,
    this.targetGroupArn,
    this.advancedConfiguration,
  });

  final TfArg<String> containerName;

  final TfArg<num> containerPort;

  final TfArg<String>? elbName;

  final TfArg<String>? targetGroupArn;

  final EcsServiceAdvancedConfiguration? advancedConfiguration;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'container_port': containerPort.toTfJson(),
    'elb_name': ?elbName?.toTfJson(),
    'target_group_arn': ?targetGroupArn?.toTfJson(),
    'advanced_configuration': ?advancedConfiguration?.encode(),
  };
}

/// Typed helper for the `load_balancer.advanced_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceAdvancedConfiguration {
  const EcsServiceAdvancedConfiguration({
    required this.alternateTargetGroupArn,
    required this.productionListenerRule,
    required this.roleArn,
    this.testListenerRule,
  });

  final TfArg<String> alternateTargetGroupArn;

  final TfArg<String> productionListenerRule;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String>? testListenerRule;

  Map<String, Object?> encode() => {
    'alternate_target_group_arn': alternateTargetGroupArn.toTfJson(),
    'production_listener_rule': productionListenerRule.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'test_listener_rule': ?testListenerRule?.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceNetworkConfiguration {
  const EcsServiceNetworkConfiguration({
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

/// Typed helper for the `ordered_placement_strategy` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceOrderedPlacementStrategy {
  const EcsServiceOrderedPlacementStrategy({this.field, required this.type});

  final TfArg<String>? field;

  final TfArg<EcsServiceOrderedPlacementStrategyType> type;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsServiceOrderedPlacementStrategyType implements TerraformEnum {
  random('random'),
  spread('spread'),
  binpack('binpack');

  const EcsServiceOrderedPlacementStrategyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `placement_constraints` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServicePlacementConstraints {
  const EcsServicePlacementConstraints({this.expression, required this.type});

  final TfArg<String>? expression;

  final TfArg<EcsServicePlacementConstraintsType> type;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EcsServicePlacementConstraintsType implements TerraformEnum {
  distinctinstance('distinctInstance'),
  memberof('memberOf');

  const EcsServicePlacementConstraintsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_connect_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceConnectConfiguration {
  const EcsServiceConnectConfiguration({
    required this.enabled,
    this.namespace,
    this.accessLogConfiguration,
    this.logConfiguration,
    this.service,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? namespace;

  final EcsServiceAccessLogConfiguration? accessLogConfiguration;

  final EcsServiceLogConfiguration? logConfiguration;

  final List<EcsService>? service;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'access_log_configuration': ?accessLogConfiguration?.encode(),
    'log_configuration': ?logConfiguration?.encode(),
    if (service != null) 'service': [for (final e in service!) e.encode()],
  };
}

/// Typed helper for the `service_connect_configuration.access_log_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceAccessLogConfiguration {
  const EcsServiceAccessLogConfiguration({
    required this.format,
    this.includeQueryParameters,
  });

  final TfArg<EcsServiceFormat> format;

  final TfArg<EcsServiceIncludeQueryParameters>? includeQueryParameters;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'include_query_parameters': ?includeQueryParameters?.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
enum EcsServiceFormat implements TerraformEnum {
  text('TEXT'),
  json('JSON');

  const EcsServiceFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `include_query_parameters` — derived from the provider schema description.
enum EcsServiceIncludeQueryParameters implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const EcsServiceIncludeQueryParameters(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_connect_configuration.log_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceLogConfiguration {
  const EcsServiceLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOption,
  });

  final TfArg<EcsServiceLogDriver> logDriver;

  final TfArg<Map<String, String>>? options;

  final List<EcsServiceSecretOption>? secretOption;

  Map<String, Object?> encode() => {
    'log_driver': logDriver.toTfJson(),
    'options': ?options?.toTfJson(),
    if (secretOption != null)
      'secret_option': [for (final e in secretOption!) e.encode()],
  };
}

/// `log_driver` — derived from the provider schema description.
enum EcsServiceLogDriver implements TerraformEnum {
  jsonFile('json-file'),
  syslog('syslog'),
  journald('journald'),
  gelf('gelf'),
  fluentd('fluentd'),
  awslogs('awslogs'),
  splunk('splunk'),
  awsfirelens('awsfirelens');

  const EcsServiceLogDriver(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_connect_configuration.log_configuration.secret_option` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceSecretOption {
  const EcsServiceSecretOption({required this.name, required this.valueFrom});

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Typed helper for the `service_connect_configuration.service` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsService {
  const EcsService({
    this.discoveryName,
    this.ingressPortOverride,
    required this.portName,
    this.clientAlias,
    this.timeout,
    this.tls,
  });

  final TfArg<String>? discoveryName;

  final TfArg<num>? ingressPortOverride;

  final TfArg<String> portName;

  final EcsServiceClientAlias? clientAlias;

  final EcsServiceTimeout? timeout;

  final EcsServiceTls? tls;

  Map<String, Object?> encode() => {
    'discovery_name': ?discoveryName?.toTfJson(),
    'ingress_port_override': ?ingressPortOverride?.toTfJson(),
    'port_name': portName.toTfJson(),
    'client_alias': ?clientAlias?.encode(),
    'timeout': ?timeout?.encode(),
    'tls': ?tls?.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceClientAlias {
  const EcsServiceClientAlias({
    this.dnsName,
    required this.port,
    this.testTrafficRules,
  });

  final TfArg<String>? dnsName;

  final TfArg<num> port;

  final List<EcsServiceTestTrafficRules>? testTrafficRules;

  Map<String, Object?> encode() => {
    'dns_name': ?dnsName?.toTfJson(),
    'port': port.toTfJson(),
    if (testTrafficRules != null)
      'test_traffic_rules': [for (final e in testTrafficRules!) e.encode()],
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceTestTrafficRules {
  const EcsServiceTestTrafficRules({this.header});

  final EcsServiceHeader? header;

  Map<String, Object?> encode() => {'header': ?header?.encode()};
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules.header` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceHeader {
  const EcsServiceHeader({required this.name, required this.value});

  final TfArg<String> name;

  final EcsServiceValue value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules.header.value` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceValue {
  const EcsServiceValue({required this.exact});

  final TfArg<String> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `service_connect_configuration.service.timeout` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceTimeout {
  const EcsServiceTimeout({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  final TfArg<num>? idleTimeoutSeconds;

  final TfArg<num>? perRequestTimeoutSeconds;

  Map<String, Object?> encode() => {
    'idle_timeout_seconds': ?idleTimeoutSeconds?.toTfJson(),
    'per_request_timeout_seconds': ?perRequestTimeoutSeconds?.toTfJson(),
  };
}

/// Typed helper for the `service_connect_configuration.service.tls` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceTls {
  const EcsServiceTls({
    this.kmsKey,
    this.roleArn,
    required this.issuerCertAuthority,
  });

  final RefTo<AwsKmsKey>? kmsKey;

  final RefTo<AwsIamRole>? roleArn;

  final EcsServiceIssuerCertAuthority issuerCertAuthority;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'issuer_cert_authority': issuerCertAuthority.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.tls.issuer_cert_authority` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceIssuerCertAuthority {
  const EcsServiceIssuerCertAuthority({required this.awsPcaAuthorityArn});

  final TfArg<String> awsPcaAuthorityArn;

  Map<String, Object?> encode() => {
    'aws_pca_authority_arn': awsPcaAuthorityArn.toTfJson(),
  };
}

/// Typed helper for the `service_registries` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceRegistries {
  const EcsServiceRegistries({
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

/// Typed helper for the `volume_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceVolumeConfiguration {
  const EcsServiceVolumeConfiguration({
    required this.name,
    required this.managedEbsVolume,
  });

  final TfArg<String> name;

  final EcsServiceManagedEbsVolume managedEbsVolume;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'managed_ebs_volume': managedEbsVolume.encode(),
  };
}

/// Typed helper for the `volume_configuration.managed_ebs_volume` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceManagedEbsVolume {
  const EcsServiceManagedEbsVolume({
    this.encrypted,
    this.fileSystemType,
    this.iops,
    this.kmsKeyId,
    required this.roleArn,
    this.sizeInGb,
    this.snapshotId,
    this.throughput,
    this.volumeInitializationRate,
    this.volumeType,
    this.tagSpecifications,
  });

  final TfArg<bool>? encrypted;

  final TfArg<EcsServiceFileSystemType>? fileSystemType;

  final TfArg<num>? iops;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<num>? sizeInGb;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeInitializationRate;

  final TfArg<String>? volumeType;

  final List<EcsServiceTagSpecifications>? tagSpecifications;

  Map<String, Object?> encode() => {
    'encrypted': ?encrypted?.toTfJson(),
    'file_system_type': ?fileSystemType?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'size_in_gb': ?sizeInGb?.toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_initialization_rate': ?volumeInitializationRate?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
    if (tagSpecifications != null)
      'tag_specifications': [for (final e in tagSpecifications!) e.encode()],
  };
}

/// `file_system_type` — derived from the provider schema description.
enum EcsServiceFileSystemType implements TerraformEnum {
  ext3('ext3'),
  ext4('ext4'),
  xfs('xfs'),
  ntfs('ntfs');

  const EcsServiceFileSystemType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `volume_configuration.managed_ebs_volume.tag_specifications` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceTagSpecifications {
  const EcsServiceTagSpecifications({
    this.propagateTags,
    required this.resourceType,
    this.tags,
  });

  final TfArg<EcsServiceTagSpecificationsPropagateTags>? propagateTags;

  final TfArg<EcsServiceResourceType> resourceType;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'propagate_tags': ?propagateTags?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// `propagate_tags` — derived from the provider schema description.
enum EcsServiceTagSpecificationsPropagateTags implements TerraformEnum {
  taskDefinition('TASK_DEFINITION'),
  service('SERVICE'),
  none('NONE');

  const EcsServiceTagSpecificationsPropagateTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `resource_type` — derived from the provider schema description.
enum EcsServiceResourceType implements TerraformEnum {
  volume('volume');

  const EcsServiceResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vpc_lattice_configurations` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceVpcLatticeConfigurations {
  const EcsServiceVpcLatticeConfigurations({
    required this.portName,
    required this.roleArn,
    required this.targetGroupArn,
  });

  final TfArg<String> portName;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> targetGroupArn;

  Map<String, Object?> encode() => {
    'port_name': portName.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'target_group_arn': targetGroupArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_service`.
final class AwsEcsService extends Resource {
  static const String tfType = 'aws_ecs_service';

  AwsEcsService(
    super.localName, {
    TfArg<EcsServiceAvailabilityZoneRebalancing>? availabilityZoneRebalancing,
    RefTo<AwsEcsCluster>? cluster,
    TfArg<num>? deploymentMaximumPercent,
    TfArg<num>? deploymentMinimumHealthyPercent,
    TfArg<num>? desiredCount,
    TfArg<bool>? enableEcsManagedTags,
    TfArg<bool>? enableExecuteCommand,
    TfArg<bool>? forceDelete,
    TfArg<bool>? forceNewDeployment,
    TfArg<num>? healthCheckGracePeriodSeconds,
    TfArg<String>? iamRole,
    TfArg<EcsServiceLaunchType>? launchType,
    required TfArg<String> name,
    TfArg<String>? platformVersion,
    TfArg<EcsServicePropagateTags>? propagateTags,
    TfArg<String>? region,
    TfArg<EcsServiceSchedulingStrategy>? schedulingStrategy,
    TfArg<bool>? sigintRollback,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? taskDefinition,
    TfArg<Map<String, String>>? triggers,
    TfArg<bool>? waitForSteadyState,
    EcsServiceAlarms? alarms,
    List<EcsServiceCapacityProviderStrategy>? capacityProviderStrategy,
    EcsServiceDeploymentCircuitBreaker? deploymentCircuitBreaker,
    EcsServiceDeploymentConfiguration? deploymentConfiguration,
    EcsServiceDeploymentController? deploymentController,
    List<EcsServiceLoadBalancer>? loadBalancer,
    EcsServiceNetworkConfiguration? networkConfiguration,
    List<EcsServiceOrderedPlacementStrategy>? orderedPlacementStrategy,
    List<EcsServicePlacementConstraints>? placementConstraints,
    EcsServiceConnectConfiguration? serviceConnectConfiguration,
    EcsServiceRegistries? serviceRegistries,
    EcsServiceVolumeConfiguration? volumeConfiguration,
    List<EcsServiceVpcLatticeConfigurations>? vpcLatticeConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone_rebalancing': ?availabilityZoneRebalancing,
           'cluster': ?cluster?.encodeAs('arn'),
           'deployment_maximum_percent': ?deploymentMaximumPercent,
           'deployment_minimum_healthy_percent':
               ?deploymentMinimumHealthyPercent,
           'desired_count': ?desiredCount,
           'enable_ecs_managed_tags': ?enableEcsManagedTags,
           'enable_execute_command': ?enableExecuteCommand,
           'force_delete': ?forceDelete,
           'force_new_deployment': ?forceNewDeployment,
           'health_check_grace_period_seconds': ?healthCheckGracePeriodSeconds,
           'iam_role': ?iamRole,
           'launch_type': ?launchType,
           'name': name,
           'platform_version': ?platformVersion,
           'propagate_tags': ?propagateTags,
           'region': ?region,
           'scheduling_strategy': ?schedulingStrategy,
           'sigint_rollback': ?sigintRollback,
           'tags': ?tags,
           'task_definition': ?taskDefinition,
           'triggers': ?triggers,
           'wait_for_steady_state': ?waitForSteadyState,
           if (alarms != null) 'alarms': TfArg.literal(alarms.encode()),
           if (capacityProviderStrategy != null)
             'capacity_provider_strategy': TfArg.literal([
               for (final e in capacityProviderStrategy) e.encode(),
             ]),
           if (deploymentCircuitBreaker != null)
             'deployment_circuit_breaker': TfArg.literal(
               deploymentCircuitBreaker.encode(),
             ),
           if (deploymentConfiguration != null)
             'deployment_configuration': TfArg.literal(
               deploymentConfiguration.encode(),
             ),
           if (deploymentController != null)
             'deployment_controller': TfArg.literal(
               deploymentController.encode(),
             ),
           if (loadBalancer != null)
             'load_balancer': TfArg.literal([
               for (final e in loadBalancer) e.encode(),
             ]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (orderedPlacementStrategy != null)
             'ordered_placement_strategy': TfArg.literal([
               for (final e in orderedPlacementStrategy) e.encode(),
             ]),
           if (placementConstraints != null)
             'placement_constraints': TfArg.literal([
               for (final e in placementConstraints) e.encode(),
             ]),
           if (serviceConnectConfiguration != null)
             'service_connect_configuration': TfArg.literal(
               serviceConnectConfiguration.encode(),
             ),
           if (serviceRegistries != null)
             'service_registries': TfArg.literal(serviceRegistries.encode()),
           if (volumeConfiguration != null)
             'volume_configuration': TfArg.literal(
               volumeConfiguration.encode(),
             ),
           if (vpcLatticeConfigurations != null)
             'vpc_lattice_configurations': TfArg.literal([
               for (final e in vpcLatticeConfigurations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsService>`.
  RefTo<AwsEcsService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone_rebalancing` attribute.
  TfRef<String> get availabilityZoneRebalancing =>
      TfRef.attribute<String>(this, 'availability_zone_rebalancing');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deployment_maximum_percent` attribute.
  TfRef<num> get deploymentMaximumPercent =>
      TfRef.attribute<num>(this, 'deployment_maximum_percent');

  /// Reference to `deployment_minimum_healthy_percent` attribute.
  TfRef<num> get deploymentMinimumHealthyPercent =>
      TfRef.attribute<num>(this, 'deployment_minimum_healthy_percent');

  /// Reference to `desired_count` attribute.
  TfRef<num> get desiredCount => TfRef.attribute<num>(this, 'desired_count');

  /// Reference to `enable_ecs_managed_tags` attribute.
  TfRef<bool> get enableEcsManagedTags =>
      TfRef.attribute<bool>(this, 'enable_ecs_managed_tags');

  /// Reference to `enable_execute_command` attribute.
  TfRef<bool> get enableExecuteCommand =>
      TfRef.attribute<bool>(this, 'enable_execute_command');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `force_new_deployment` attribute.
  TfRef<bool> get forceNewDeployment =>
      TfRef.attribute<bool>(this, 'force_new_deployment');

  /// Reference to `health_check_grace_period_seconds` attribute.
  TfRef<num> get healthCheckGracePeriodSeconds =>
      TfRef.attribute<num>(this, 'health_check_grace_period_seconds');

  /// Reference to `iam_role` attribute.
  TfRef<String> get iamRole => TfRef.attribute<String>(this, 'iam_role');

  /// Reference to `launch_type` attribute.
  TfRef<String> get launchType => TfRef.attribute<String>(this, 'launch_type');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `propagate_tags` attribute.
  TfRef<String> get propagateTags =>
      TfRef.attribute<String>(this, 'propagate_tags');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scheduling_strategy` attribute.
  TfRef<String> get schedulingStrategy =>
      TfRef.attribute<String>(this, 'scheduling_strategy');

  /// Reference to `sigint_rollback` attribute.
  TfRef<bool> get sigintRollback =>
      TfRef.attribute<bool>(this, 'sigint_rollback');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_definition` attribute.
  TfRef<String> get taskDefinition =>
      TfRef.attribute<String>(this, 'task_definition');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');

  /// Reference to `wait_for_steady_state` attribute.
  TfRef<bool> get waitForSteadyState =>
      TfRef.attribute<bool>(this, 'wait_for_steady_state');
}

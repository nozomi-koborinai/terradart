// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_service`.
const Set<String> _awsEcsServiceSensitive = <String>{};

/// Typed helper for the `alarms` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceAlarms {
  const EcsServiceAlarms({
    required this.alarmNames,
    required this.enable,
    required this.rollback,
  });

  final TfArg<List<Object?>> alarmNames;

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
    if (base != null) 'base': base!.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
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

  final TfArg<String>? strategy;

  final EcsServiceDeploymentConfigurationCanaryConfiguration?
  canaryConfiguration;

  final List<EcsServiceDeploymentConfigurationLifecycleHook>? lifecycleHook;

  final EcsServiceDeploymentConfigurationLinearConfiguration?
  linearConfiguration;

  Map<String, Object?> encode() => {
    if (bakeTimeInMinutes != null)
      'bake_time_in_minutes': bakeTimeInMinutes!.toTfJson(),
    if (strategy != null) 'strategy': strategy!.toTfJson(),
    if (canaryConfiguration != null)
      'canary_configuration': canaryConfiguration!.encode(),
    if (lifecycleHook != null)
      'lifecycle_hook': [for (final e in lifecycleHook!) e.encode()],
    if (linearConfiguration != null)
      'linear_configuration': linearConfiguration!.encode(),
  };
}

/// Typed helper for the `deployment_configuration.canary_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentConfigurationCanaryConfiguration {
  const EcsServiceDeploymentConfigurationCanaryConfiguration({
    this.canaryBakeTimeInMinutes,
    this.canaryPercent,
  });

  final TfArg<String>? canaryBakeTimeInMinutes;

  final TfArg<num>? canaryPercent;

  Map<String, Object?> encode() => {
    if (canaryBakeTimeInMinutes != null)
      'canary_bake_time_in_minutes': canaryBakeTimeInMinutes!.toTfJson(),
    if (canaryPercent != null) 'canary_percent': canaryPercent!.toTfJson(),
  };
}

/// Typed helper for the `deployment_configuration.lifecycle_hook` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentConfigurationLifecycleHook {
  const EcsServiceDeploymentConfigurationLifecycleHook({
    this.hookDetails,
    this.hookTargetArn,
    required this.lifecycleStages,
    this.roleArn,
    this.targetType,
    this.timeoutConfiguration,
  });

  final TfArg<String>? hookDetails;

  final TfArg<String>? hookTargetArn;

  final TfArg<List<Object?>> lifecycleStages;

  final TfArg<String>? roleArn;

  final TfArg<String>? targetType;

  final EcsServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration?
  timeoutConfiguration;

  Map<String, Object?> encode() => {
    if (hookDetails != null) 'hook_details': hookDetails!.toTfJson(),
    if (hookTargetArn != null) 'hook_target_arn': hookTargetArn!.toTfJson(),
    'lifecycle_stages': lifecycleStages.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (targetType != null) 'target_type': targetType!.toTfJson(),
    if (timeoutConfiguration != null)
      'timeout_configuration': timeoutConfiguration!.encode(),
  };
}

/// Typed helper for the `deployment_configuration.lifecycle_hook.timeout_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration {
  const EcsServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration({
    this.action,
    this.timeoutInMinutes,
  });

  final TfArg<String>? action;

  final TfArg<String>? timeoutInMinutes;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    if (timeoutInMinutes != null)
      'timeout_in_minutes': timeoutInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `deployment_configuration.linear_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentConfigurationLinearConfiguration {
  const EcsServiceDeploymentConfigurationLinearConfiguration({
    this.stepBakeTimeInMinutes,
    this.stepPercent,
  });

  final TfArg<String>? stepBakeTimeInMinutes;

  final TfArg<num>? stepPercent;

  Map<String, Object?> encode() => {
    if (stepBakeTimeInMinutes != null)
      'step_bake_time_in_minutes': stepBakeTimeInMinutes!.toTfJson(),
    if (stepPercent != null) 'step_percent': stepPercent!.toTfJson(),
  };
}

/// Typed helper for the `deployment_controller` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceDeploymentController {
  const EcsServiceDeploymentController({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
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

  final EcsServiceLoadBalancerAdvancedConfiguration? advancedConfiguration;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'container_port': containerPort.toTfJson(),
    if (elbName != null) 'elb_name': elbName!.toTfJson(),
    if (targetGroupArn != null) 'target_group_arn': targetGroupArn!.toTfJson(),
    if (advancedConfiguration != null)
      'advanced_configuration': advancedConfiguration!.encode(),
  };
}

/// Typed helper for the `load_balancer.advanced_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceLoadBalancerAdvancedConfiguration {
  const EcsServiceLoadBalancerAdvancedConfiguration({
    required this.alternateTargetGroupArn,
    required this.productionListenerRule,
    required this.roleArn,
    this.testListenerRule,
  });

  final TfArg<String> alternateTargetGroupArn;

  final TfArg<String> productionListenerRule;

  final TfArg<String> roleArn;

  final TfArg<String>? testListenerRule;

  Map<String, Object?> encode() => {
    'alternate_target_group_arn': alternateTargetGroupArn.toTfJson(),
    'production_listener_rule': productionListenerRule.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (testListenerRule != null)
      'test_listener_rule': testListenerRule!.toTfJson(),
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

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    if (assignPublicIp != null) 'assign_public_ip': assignPublicIp!.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `ordered_placement_strategy` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceOrderedPlacementStrategy {
  const EcsServiceOrderedPlacementStrategy({this.field, required this.type});

  final TfArg<String>? field;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `placement_constraints` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServicePlacementConstraints {
  const EcsServicePlacementConstraints({this.expression, required this.type});

  final TfArg<String>? expression;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `service_connect_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfiguration {
  const EcsServiceServiceConnectConfiguration({
    required this.enabled,
    this.namespace,
    this.accessLogConfiguration,
    this.logConfiguration,
    this.service,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? namespace;

  final EcsServiceServiceConnectConfigurationAccessLogConfiguration?
  accessLogConfiguration;

  final EcsServiceServiceConnectConfigurationLogConfiguration? logConfiguration;

  final List<EcsServiceServiceConnectConfigurationService>? service;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (accessLogConfiguration != null)
      'access_log_configuration': accessLogConfiguration!.encode(),
    if (logConfiguration != null)
      'log_configuration': logConfiguration!.encode(),
    if (service != null) 'service': [for (final e in service!) e.encode()],
  };
}

/// Typed helper for the `service_connect_configuration.access_log_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationAccessLogConfiguration {
  const EcsServiceServiceConnectConfigurationAccessLogConfiguration({
    required this.format,
    this.includeQueryParameters,
  });

  final TfArg<String> format;

  final TfArg<String>? includeQueryParameters;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    if (includeQueryParameters != null)
      'include_query_parameters': includeQueryParameters!.toTfJson(),
  };
}

/// Typed helper for the `service_connect_configuration.log_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationLogConfiguration {
  const EcsServiceServiceConnectConfigurationLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOption,
  });

  final TfArg<String> logDriver;

  final TfArg<Map<String, String>>? options;

  final List<EcsServiceServiceConnectConfigurationLogConfigurationSecretOption>?
  secretOption;

  Map<String, Object?> encode() => {
    'log_driver': logDriver.toTfJson(),
    if (options != null) 'options': options!.toTfJson(),
    if (secretOption != null)
      'secret_option': [for (final e in secretOption!) e.encode()],
  };
}

/// Typed helper for the `service_connect_configuration.log_configuration.secret_option` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationLogConfigurationSecretOption {
  const EcsServiceServiceConnectConfigurationLogConfigurationSecretOption({
    required this.name,
    required this.valueFrom,
  });

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
final class EcsServiceServiceConnectConfigurationService {
  const EcsServiceServiceConnectConfigurationService({
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

  final EcsServiceServiceConnectConfigurationServiceClientAlias? clientAlias;

  final EcsServiceServiceConnectConfigurationServiceTimeout? timeout;

  final EcsServiceServiceConnectConfigurationServiceTls? tls;

  Map<String, Object?> encode() => {
    if (discoveryName != null) 'discovery_name': discoveryName!.toTfJson(),
    if (ingressPortOverride != null)
      'ingress_port_override': ingressPortOverride!.toTfJson(),
    'port_name': portName.toTfJson(),
    if (clientAlias != null) 'client_alias': clientAlias!.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
    if (tls != null) 'tls': tls!.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceClientAlias {
  const EcsServiceServiceConnectConfigurationServiceClientAlias({
    this.dnsName,
    required this.port,
    this.testTrafficRules,
  });

  final TfArg<String>? dnsName;

  final TfArg<num> port;

  final List<
    EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRules
  >?
  testTrafficRules;

  Map<String, Object?> encode() => {
    if (dnsName != null) 'dns_name': dnsName!.toTfJson(),
    'port': port.toTfJson(),
    if (testTrafficRules != null)
      'test_traffic_rules': [for (final e in testTrafficRules!) e.encode()],
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRules {
  const EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRules({
    this.header,
  });

  final EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeader?
  header;

  Map<String, Object?> encode() => {
    if (header != null) 'header': header!.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules.header` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeader {
  const EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeaderValue
  value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.client_alias.test_traffic_rules.header.value` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeaderValue {
  const EcsServiceServiceConnectConfigurationServiceClientAliasTestTrafficRulesHeaderValue({
    required this.exact,
  });

  final TfArg<String> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `service_connect_configuration.service.timeout` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceTimeout {
  const EcsServiceServiceConnectConfigurationServiceTimeout({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  final TfArg<num>? idleTimeoutSeconds;

  final TfArg<num>? perRequestTimeoutSeconds;

  Map<String, Object?> encode() => {
    if (idleTimeoutSeconds != null)
      'idle_timeout_seconds': idleTimeoutSeconds!.toTfJson(),
    if (perRequestTimeoutSeconds != null)
      'per_request_timeout_seconds': perRequestTimeoutSeconds!.toTfJson(),
  };
}

/// Typed helper for the `service_connect_configuration.service.tls` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceTls {
  const EcsServiceServiceConnectConfigurationServiceTls({
    this.kmsKey,
    this.roleArn,
    required this.issuerCertAuthority,
  });

  final TfArg<String>? kmsKey;

  final TfArg<String>? roleArn;

  final EcsServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority
  issuerCertAuthority;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    'issuer_cert_authority': issuerCertAuthority.encode(),
  };
}

/// Typed helper for the `service_connect_configuration.service.tls.issuer_cert_authority` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority {
  const EcsServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority({
    required this.awsPcaAuthorityArn,
  });

  final TfArg<String> awsPcaAuthorityArn;

  Map<String, Object?> encode() => {
    'aws_pca_authority_arn': awsPcaAuthorityArn.toTfJson(),
  };
}

/// Typed helper for the `service_registries` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceServiceRegistries {
  const EcsServiceServiceRegistries({
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

/// Typed helper for the `volume_configuration` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceVolumeConfiguration {
  const EcsServiceVolumeConfiguration({
    required this.name,
    required this.managedEbsVolume,
  });

  final TfArg<String> name;

  final EcsServiceVolumeConfigurationManagedEbsVolume managedEbsVolume;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'managed_ebs_volume': managedEbsVolume.encode(),
  };
}

/// Typed helper for the `volume_configuration.managed_ebs_volume` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceVolumeConfigurationManagedEbsVolume {
  const EcsServiceVolumeConfigurationManagedEbsVolume({
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

  final TfArg<String>? fileSystemType;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<String> roleArn;

  final TfArg<num>? sizeInGb;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeInitializationRate;

  final TfArg<String>? volumeType;

  final List<EcsServiceVolumeConfigurationManagedEbsVolumeTagSpecifications>?
  tagSpecifications;

  Map<String, Object?> encode() => {
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (fileSystemType != null) 'file_system_type': fileSystemType!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (sizeInGb != null) 'size_in_gb': sizeInGb!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeInitializationRate != null)
      'volume_initialization_rate': volumeInitializationRate!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
    if (tagSpecifications != null)
      'tag_specifications': [for (final e in tagSpecifications!) e.encode()],
  };
}

/// Typed helper for the `volume_configuration.managed_ebs_volume.tag_specifications` block of
/// `aws_ecs_service` (derived from provider schema).
@immutable
final class EcsServiceVolumeConfigurationManagedEbsVolumeTagSpecifications {
  const EcsServiceVolumeConfigurationManagedEbsVolumeTagSpecifications({
    this.propagateTags,
    required this.resourceType,
    this.tags,
  });

  final TfArg<String>? propagateTags;

  final TfArg<String> resourceType;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (propagateTags != null) 'propagate_tags': propagateTags!.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
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

  final TfArg<String> roleArn;

  final TfArg<String> targetGroupArn;

  Map<String, Object?> encode() => {
    'port_name': portName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'target_group_arn': targetGroupArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_service`.
final class AwsEcsService extends Resource {
  static const String tfType = 'aws_ecs_service';

  AwsEcsService({
    required super.localName,
    TfArg<String>? availabilityZoneRebalancing,
    TfArg<String>? cluster,
    TfArg<num>? deploymentMaximumPercent,
    TfArg<num>? deploymentMinimumHealthyPercent,
    TfArg<num>? desiredCount,
    TfArg<bool>? enableEcsManagedTags,
    TfArg<bool>? enableExecuteCommand,
    TfArg<bool>? forceDelete,
    TfArg<bool>? forceNewDeployment,
    TfArg<num>? healthCheckGracePeriodSeconds,
    TfArg<String>? iamRole,
    TfArg<String>? launchType,
    required TfArg<String> name,
    TfArg<String>? platformVersion,
    TfArg<String>? propagateTags,
    TfArg<String>? region,
    TfArg<String>? schedulingStrategy,
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
    EcsServiceServiceConnectConfiguration? serviceConnectConfiguration,
    EcsServiceServiceRegistries? serviceRegistries,
    EcsServiceVolumeConfiguration? volumeConfiguration,
    List<EcsServiceVpcLatticeConfigurations>? vpcLatticeConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZoneRebalancing != null)
             'availability_zone_rebalancing': availabilityZoneRebalancing,
           if (cluster != null) 'cluster': cluster,
           if (deploymentMaximumPercent != null)
             'deployment_maximum_percent': deploymentMaximumPercent,
           if (deploymentMinimumHealthyPercent != null)
             'deployment_minimum_healthy_percent':
                 deploymentMinimumHealthyPercent,
           if (desiredCount != null) 'desired_count': desiredCount,
           if (enableEcsManagedTags != null)
             'enable_ecs_managed_tags': enableEcsManagedTags,
           if (enableExecuteCommand != null)
             'enable_execute_command': enableExecuteCommand,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (forceNewDeployment != null)
             'force_new_deployment': forceNewDeployment,
           if (healthCheckGracePeriodSeconds != null)
             'health_check_grace_period_seconds': healthCheckGracePeriodSeconds,
           if (iamRole != null) 'iam_role': iamRole,
           if (launchType != null) 'launch_type': launchType,
           'name': name,
           if (platformVersion != null) 'platform_version': platformVersion,
           if (propagateTags != null) 'propagate_tags': propagateTags,
           if (region != null) 'region': region,
           if (schedulingStrategy != null)
             'scheduling_strategy': schedulingStrategy,
           if (sigintRollback != null) 'sigint_rollback': sigintRollback,
           if (tags != null) 'tags': tags,
           if (taskDefinition != null) 'task_definition': taskDefinition,
           if (triggers != null) 'triggers': triggers,
           if (waitForSteadyState != null)
             'wait_for_steady_state': waitForSteadyState,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

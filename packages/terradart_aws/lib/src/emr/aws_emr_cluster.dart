// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_cluster`.
const Set<String> _awsEmrClusterSensitive = <String>{
  'kerberos_attributes.ad_domain_join_password',
  'kerberos_attributes.cross_realm_trust_principal_password',
  'kerberos_attributes.kdc_admin_password',
};

/// Typed helper for the `auto_termination_policy` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterAutoTerminationPolicy {
  const EmrClusterAutoTerminationPolicy({this.idleTimeout});

  final TfArg<num>? idleTimeout;

  Map<String, Object?> encode() => {
    if (idleTimeout != null) 'idle_timeout': idleTimeout!.toTfJson(),
  };
}

/// Typed helper for the `bootstrap_action` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterBootstrapAction {
  const EmrClusterBootstrapAction({
    this.args,
    required this.name,
    required this.path,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<String> name;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    'name': name.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleet {
  const EmrClusterCoreInstanceFleet({
    this.name,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
    this.instanceTypeConfigs,
    this.launchSpecifications,
  });

  final TfArg<String>? name;

  final TfArg<num>? targetOnDemandCapacity;

  final TfArg<num>? targetSpotCapacity;

  final List<EmrClusterCoreInstanceFleetInstanceTypeConfigs>?
  instanceTypeConfigs;

  final EmrClusterCoreInstanceFleetLaunchSpecifications? launchSpecifications;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (targetOnDemandCapacity != null)
      'target_on_demand_capacity': targetOnDemandCapacity!.toTfJson(),
    if (targetSpotCapacity != null)
      'target_spot_capacity': targetSpotCapacity!.toTfJson(),
    if (instanceTypeConfigs != null)
      'instance_type_configs': [
        for (final e in instanceTypeConfigs!) e.encode(),
      ],
    if (launchSpecifications != null)
      'launch_specifications': launchSpecifications!.encode(),
  };
}

/// Typed helper for the `core_instance_fleet.instance_type_configs` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetInstanceTypeConfigs {
  const EmrClusterCoreInstanceFleetInstanceTypeConfigs({
    this.bidPrice,
    this.bidPriceAsPercentageOfOnDemandPrice,
    required this.instanceType,
    this.weightedCapacity,
    this.configurations,
    this.ebsConfig,
  });

  final TfArg<String>? bidPrice;

  final TfArg<num>? bidPriceAsPercentageOfOnDemandPrice;

  final TfArg<String> instanceType;

  final TfArg<num>? weightedCapacity;

  final List<EmrClusterCoreInstanceFleetInstanceTypeConfigsConfigurations>?
  configurations;

  final List<EmrClusterCoreInstanceFleetInstanceTypeConfigsEbsConfig>?
  ebsConfig;

  Map<String, Object?> encode() => {
    if (bidPrice != null) 'bid_price': bidPrice!.toTfJson(),
    if (bidPriceAsPercentageOfOnDemandPrice != null)
      'bid_price_as_percentage_of_on_demand_price':
          bidPriceAsPercentageOfOnDemandPrice!.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (configurations != null)
      'configurations': [for (final e in configurations!) e.encode()],
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `core_instance_fleet.instance_type_configs.configurations` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetInstanceTypeConfigsConfigurations {
  const EmrClusterCoreInstanceFleetInstanceTypeConfigsConfigurations({
    this.classification,
    this.properties,
  });

  final TfArg<String>? classification;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    if (classification != null) 'classification': classification!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet.instance_type_configs.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetInstanceTypeConfigsEbsConfig {
  const EmrClusterCoreInstanceFleetInstanceTypeConfigsEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  final TfArg<num>? iops;

  final TfArg<num> size;

  final TfArg<String> type;

  final TfArg<num>? volumesPerInstance;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    'size': size.toTfJson(),
    'type': type.toTfJson(),
    if (volumesPerInstance != null)
      'volumes_per_instance': volumesPerInstance!.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet.launch_specifications` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetLaunchSpecifications {
  const EmrClusterCoreInstanceFleetLaunchSpecifications({
    this.onDemandSpecification,
    this.spotSpecification,
  });

  final List<
    EmrClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification
  >?
  onDemandSpecification;

  final List<EmrClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification>?
  spotSpecification;

  Map<String, Object?> encode() => {
    if (onDemandSpecification != null)
      'on_demand_specification': [
        for (final e in onDemandSpecification!) e.encode(),
      ],
    if (spotSpecification != null)
      'spot_specification': [for (final e in spotSpecification!) e.encode()],
  };
}

/// Typed helper for the `core_instance_fleet.launch_specifications.on_demand_specification` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification {
  const EmrClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  final TfArg<String> allocationStrategy;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet.launch_specifications.spot_specification` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification {
  const EmrClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification({
    required this.allocationStrategy,
    this.blockDurationMinutes,
    required this.timeoutAction,
    required this.timeoutDurationMinutes,
  });

  final TfArg<String> allocationStrategy;

  final TfArg<num>? blockDurationMinutes;

  final TfArg<String> timeoutAction;

  final TfArg<num> timeoutDurationMinutes;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
    if (blockDurationMinutes != null)
      'block_duration_minutes': blockDurationMinutes!.toTfJson(),
    'timeout_action': timeoutAction.toTfJson(),
    'timeout_duration_minutes': timeoutDurationMinutes.toTfJson(),
  };
}

/// Typed helper for the `core_instance_group` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceGroup {
  const EmrClusterCoreInstanceGroup({
    this.autoscalingPolicy,
    this.bidPrice,
    this.instanceCount,
    required this.instanceType,
    this.name,
    this.ebsConfig,
  });

  final TfArg<String>? autoscalingPolicy;

  final TfArg<String>? bidPrice;

  final TfArg<num>? instanceCount;

  final TfArg<String> instanceType;

  final TfArg<String>? name;

  final List<EmrClusterCoreInstanceGroupEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    if (autoscalingPolicy != null)
      'autoscaling_policy': autoscalingPolicy!.toTfJson(),
    if (bidPrice != null) 'bid_price': bidPrice!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `core_instance_group.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterCoreInstanceGroupEbsConfig {
  const EmrClusterCoreInstanceGroupEbsConfig({
    this.iops,
    required this.size,
    this.throughput,
    required this.type,
    this.volumesPerInstance,
  });

  final TfArg<num>? iops;

  final TfArg<num> size;

  final TfArg<num>? throughput;

  final TfArg<String> type;

  final TfArg<num>? volumesPerInstance;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    'size': size.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    'type': type.toTfJson(),
    if (volumesPerInstance != null)
      'volumes_per_instance': volumesPerInstance!.toTfJson(),
  };
}

/// Typed helper for the `ec2_attributes` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterEc2Attributes {
  const EmrClusterEc2Attributes({
    this.additionalMasterSecurityGroups,
    this.additionalSlaveSecurityGroups,
    this.emrManagedMasterSecurityGroup,
    this.emrManagedSlaveSecurityGroup,
    required this.instanceProfile,
    this.keyName,
    this.serviceAccessSecurityGroup,
    this.subnetId,
    this.subnetIds,
  });

  final TfArg<String>? additionalMasterSecurityGroups;

  final TfArg<String>? additionalSlaveSecurityGroups;

  final TfArg<String>? emrManagedMasterSecurityGroup;

  final TfArg<String>? emrManagedSlaveSecurityGroup;

  final TfArg<String> instanceProfile;

  final TfArg<String>? keyName;

  final TfArg<String>? serviceAccessSecurityGroup;

  final TfArg<String>? subnetId;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (additionalMasterSecurityGroups != null)
      'additional_master_security_groups': additionalMasterSecurityGroups!
          .toTfJson(),
    if (additionalSlaveSecurityGroups != null)
      'additional_slave_security_groups': additionalSlaveSecurityGroups!
          .toTfJson(),
    if (emrManagedMasterSecurityGroup != null)
      'emr_managed_master_security_group': emrManagedMasterSecurityGroup!
          .toTfJson(),
    if (emrManagedSlaveSecurityGroup != null)
      'emr_managed_slave_security_group': emrManagedSlaveSecurityGroup!
          .toTfJson(),
    'instance_profile': instanceProfile.toTfJson(),
    if (keyName != null) 'key_name': keyName!.toTfJson(),
    if (serviceAccessSecurityGroup != null)
      'service_access_security_group': serviceAccessSecurityGroup!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Typed helper for the `kerberos_attributes` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterKerberosAttributes {
  const EmrClusterKerberosAttributes({
    this.adDomainJoinPassword,
    this.adDomainJoinUser,
    this.crossRealmTrustPrincipalPassword,
    required this.kdcAdminPassword,
    required this.realm,
  });

  final TfArg<String>? adDomainJoinPassword;

  final TfArg<String>? adDomainJoinUser;

  final TfArg<String>? crossRealmTrustPrincipalPassword;

  final TfArg<String> kdcAdminPassword;

  final TfArg<String> realm;

  Map<String, Object?> encode() => {
    if (adDomainJoinPassword != null)
      'ad_domain_join_password': adDomainJoinPassword!.toTfJson(),
    if (adDomainJoinUser != null)
      'ad_domain_join_user': adDomainJoinUser!.toTfJson(),
    if (crossRealmTrustPrincipalPassword != null)
      'cross_realm_trust_principal_password': crossRealmTrustPrincipalPassword!
          .toTfJson(),
    'kdc_admin_password': kdcAdminPassword.toTfJson(),
    'realm': realm.toTfJson(),
  };
}

/// Typed helper for the `master_instance_fleet` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleet {
  const EmrClusterMasterInstanceFleet({
    this.name,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
    this.instanceTypeConfigs,
    this.launchSpecifications,
  });

  final TfArg<String>? name;

  final TfArg<num>? targetOnDemandCapacity;

  final TfArg<num>? targetSpotCapacity;

  final List<EmrClusterMasterInstanceFleetInstanceTypeConfigs>?
  instanceTypeConfigs;

  final EmrClusterMasterInstanceFleetLaunchSpecifications? launchSpecifications;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (targetOnDemandCapacity != null)
      'target_on_demand_capacity': targetOnDemandCapacity!.toTfJson(),
    if (targetSpotCapacity != null)
      'target_spot_capacity': targetSpotCapacity!.toTfJson(),
    if (instanceTypeConfigs != null)
      'instance_type_configs': [
        for (final e in instanceTypeConfigs!) e.encode(),
      ],
    if (launchSpecifications != null)
      'launch_specifications': launchSpecifications!.encode(),
  };
}

/// Typed helper for the `master_instance_fleet.instance_type_configs` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetInstanceTypeConfigs {
  const EmrClusterMasterInstanceFleetInstanceTypeConfigs({
    this.bidPrice,
    this.bidPriceAsPercentageOfOnDemandPrice,
    required this.instanceType,
    this.weightedCapacity,
    this.configurations,
    this.ebsConfig,
  });

  final TfArg<String>? bidPrice;

  final TfArg<num>? bidPriceAsPercentageOfOnDemandPrice;

  final TfArg<String> instanceType;

  final TfArg<num>? weightedCapacity;

  final List<EmrClusterMasterInstanceFleetInstanceTypeConfigsConfigurations>?
  configurations;

  final List<EmrClusterMasterInstanceFleetInstanceTypeConfigsEbsConfig>?
  ebsConfig;

  Map<String, Object?> encode() => {
    if (bidPrice != null) 'bid_price': bidPrice!.toTfJson(),
    if (bidPriceAsPercentageOfOnDemandPrice != null)
      'bid_price_as_percentage_of_on_demand_price':
          bidPriceAsPercentageOfOnDemandPrice!.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (configurations != null)
      'configurations': [for (final e in configurations!) e.encode()],
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `master_instance_fleet.instance_type_configs.configurations` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetInstanceTypeConfigsConfigurations {
  const EmrClusterMasterInstanceFleetInstanceTypeConfigsConfigurations({
    this.classification,
    this.properties,
  });

  final TfArg<String>? classification;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    if (classification != null) 'classification': classification!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
  };
}

/// Typed helper for the `master_instance_fleet.instance_type_configs.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetInstanceTypeConfigsEbsConfig {
  const EmrClusterMasterInstanceFleetInstanceTypeConfigsEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  final TfArg<num>? iops;

  final TfArg<num> size;

  final TfArg<String> type;

  final TfArg<num>? volumesPerInstance;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    'size': size.toTfJson(),
    'type': type.toTfJson(),
    if (volumesPerInstance != null)
      'volumes_per_instance': volumesPerInstance!.toTfJson(),
  };
}

/// Typed helper for the `master_instance_fleet.launch_specifications` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetLaunchSpecifications {
  const EmrClusterMasterInstanceFleetLaunchSpecifications({
    this.onDemandSpecification,
    this.spotSpecification,
  });

  final List<
    EmrClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification
  >?
  onDemandSpecification;

  final List<
    EmrClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification
  >?
  spotSpecification;

  Map<String, Object?> encode() => {
    if (onDemandSpecification != null)
      'on_demand_specification': [
        for (final e in onDemandSpecification!) e.encode(),
      ],
    if (spotSpecification != null)
      'spot_specification': [for (final e in spotSpecification!) e.encode()],
  };
}

/// Typed helper for the `master_instance_fleet.launch_specifications.on_demand_specification` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification {
  const EmrClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  final TfArg<String> allocationStrategy;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
  };
}

/// Typed helper for the `master_instance_fleet.launch_specifications.spot_specification` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification {
  const EmrClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification({
    required this.allocationStrategy,
    this.blockDurationMinutes,
    required this.timeoutAction,
    required this.timeoutDurationMinutes,
  });

  final TfArg<String> allocationStrategy;

  final TfArg<num>? blockDurationMinutes;

  final TfArg<String> timeoutAction;

  final TfArg<num> timeoutDurationMinutes;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
    if (blockDurationMinutes != null)
      'block_duration_minutes': blockDurationMinutes!.toTfJson(),
    'timeout_action': timeoutAction.toTfJson(),
    'timeout_duration_minutes': timeoutDurationMinutes.toTfJson(),
  };
}

/// Typed helper for the `master_instance_group` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceGroup {
  const EmrClusterMasterInstanceGroup({
    this.bidPrice,
    this.instanceCount,
    required this.instanceType,
    this.name,
    this.ebsConfig,
  });

  final TfArg<String>? bidPrice;

  final TfArg<num>? instanceCount;

  final TfArg<String> instanceType;

  final TfArg<String>? name;

  final List<EmrClusterMasterInstanceGroupEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    if (bidPrice != null) 'bid_price': bidPrice!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `master_instance_group.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterMasterInstanceGroupEbsConfig {
  const EmrClusterMasterInstanceGroupEbsConfig({
    this.iops,
    required this.size,
    this.throughput,
    required this.type,
    this.volumesPerInstance,
  });

  final TfArg<num>? iops;

  final TfArg<num> size;

  final TfArg<num>? throughput;

  final TfArg<String> type;

  final TfArg<num>? volumesPerInstance;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    'size': size.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    'type': type.toTfJson(),
    if (volumesPerInstance != null)
      'volumes_per_instance': volumesPerInstance!.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_cluster`.
final class AwsEmrCluster extends Resource {
  static const String tfType = 'aws_emr_cluster';

  AwsEmrCluster({
    required super.localName,
    TfArg<String>? additionalInfo,
    TfArg<List<String>>? applications,
    TfArg<String>? autoscalingRole,
    TfArg<String>? configurations,
    TfArg<String>? configurationsJson,
    TfArg<String>? customAmiId,
    TfArg<num>? ebsRootVolumeSize,
    TfArg<bool>? keepJobFlowAliveWhenNoSteps,
    TfArg<List<String>>? listStepsStates,
    TfArg<String>? logEncryptionKmsKeyId,
    TfArg<String>? logUri,
    required TfArg<String> name,
    TfArg<String>? osReleaseLabel,
    TfArg<List<Map<String, Object?>>>? placementGroupConfig,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    TfArg<String>? scaleDownBehavior,
    TfArg<String>? securityConfiguration,
    required TfArg<String> serviceRole,
    TfArg<List<Map<String, Object?>>>? step,
    TfArg<num>? stepConcurrencyLevel,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminationProtection,
    TfArg<bool>? unhealthyNodeReplacement,
    TfArg<bool>? visibleToAllUsers,
    EmrClusterAutoTerminationPolicy? autoTerminationPolicy,
    List<EmrClusterBootstrapAction>? bootstrapAction,
    EmrClusterCoreInstanceFleet? coreInstanceFleet,
    EmrClusterCoreInstanceGroup? coreInstanceGroup,
    EmrClusterEc2Attributes? ec2Attributes,
    EmrClusterKerberosAttributes? kerberosAttributes,
    EmrClusterMasterInstanceFleet? masterInstanceFleet,
    EmrClusterMasterInstanceGroup? masterInstanceGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalInfo != null) 'additional_info': additionalInfo,
           if (applications != null) 'applications': applications,
           if (autoscalingRole != null) 'autoscaling_role': autoscalingRole,
           if (configurations != null) 'configurations': configurations,
           if (configurationsJson != null)
             'configurations_json': configurationsJson,
           if (customAmiId != null) 'custom_ami_id': customAmiId,
           if (ebsRootVolumeSize != null)
             'ebs_root_volume_size': ebsRootVolumeSize,
           if (keepJobFlowAliveWhenNoSteps != null)
             'keep_job_flow_alive_when_no_steps': keepJobFlowAliveWhenNoSteps,
           if (listStepsStates != null) 'list_steps_states': listStepsStates,
           if (logEncryptionKmsKeyId != null)
             'log_encryption_kms_key_id': logEncryptionKmsKeyId,
           if (logUri != null) 'log_uri': logUri,
           'name': name,
           if (osReleaseLabel != null) 'os_release_label': osReleaseLabel,
           if (placementGroupConfig != null)
             'placement_group_config': placementGroupConfig,
           if (region != null) 'region': region,
           'release_label': releaseLabel,
           if (scaleDownBehavior != null)
             'scale_down_behavior': scaleDownBehavior,
           if (securityConfiguration != null)
             'security_configuration': securityConfiguration,
           'service_role': serviceRole,
           if (step != null) 'step': step,
           if (stepConcurrencyLevel != null)
             'step_concurrency_level': stepConcurrencyLevel,
           if (tags != null) 'tags': tags,
           if (terminationProtection != null)
             'termination_protection': terminationProtection,
           if (unhealthyNodeReplacement != null)
             'unhealthy_node_replacement': unhealthyNodeReplacement,
           if (visibleToAllUsers != null)
             'visible_to_all_users': visibleToAllUsers,
           if (autoTerminationPolicy != null)
             'auto_termination_policy': TfArg.literal(
               autoTerminationPolicy.encode(),
             ),
           if (bootstrapAction != null)
             'bootstrap_action': TfArg.literal([
               for (final e in bootstrapAction) e.encode(),
             ]),
           if (coreInstanceFleet != null)
             'core_instance_fleet': TfArg.literal(coreInstanceFleet.encode()),
           if (coreInstanceGroup != null)
             'core_instance_group': TfArg.literal(coreInstanceGroup.encode()),
           if (ec2Attributes != null)
             'ec2_attributes': TfArg.literal(ec2Attributes.encode()),
           if (kerberosAttributes != null)
             'kerberos_attributes': TfArg.literal(kerberosAttributes.encode()),
           if (masterInstanceFleet != null)
             'master_instance_fleet': TfArg.literal(
               masterInstanceFleet.encode(),
             ),
           if (masterInstanceGroup != null)
             'master_instance_group': TfArg.literal(
               masterInstanceGroup.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_state` attribute.
  TfRef<String> get clusterState =>
      TfRef.attribute<String>(this, 'cluster_state');

  /// Reference to `master_public_dns` attribute.
  TfRef<String> get masterPublicDns =>
      TfRef.attribute<String>(this, 'master_public_dns');
}

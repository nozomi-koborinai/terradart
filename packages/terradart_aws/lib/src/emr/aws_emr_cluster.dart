// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_emr_cluster`.
const Set<String> _awsEmrClusterSensitive = <String>{
  'kerberos_attributes.ad_domain_join_password',
  'kerberos_attributes.cross_realm_trust_principal_password',
  'kerberos_attributes.kdc_admin_password',
};

/// Emr Cluster List Steps enum for `list_steps_states`.
extension type const EmrClusterListStepsStates._(TfArg<String> _)
    implements TfArg<String> {
  EmrClusterListStepsStates.variable(String name)
    : this._(TfArg.variable(name));
  EmrClusterListStepsStates.expression(String template)
    : this._(TfArg.expression(template));
  const EmrClusterListStepsStates.arg(TfArg<String> arg) : this._(arg);

  static const pending = EmrClusterListStepsStates._(TfArgLiteral('PENDING'));
  static const cancelPending = EmrClusterListStepsStates._(
    TfArgLiteral('CANCEL_PENDING'),
  );
  static const running = EmrClusterListStepsStates._(TfArgLiteral('RUNNING'));
  static const completed = EmrClusterListStepsStates._(
    TfArgLiteral('COMPLETED'),
  );
  static const cancelled = EmrClusterListStepsStates._(
    TfArgLiteral('CANCELLED'),
  );
  static const failed = EmrClusterListStepsStates._(TfArgLiteral('FAILED'));
  static const interrupted = EmrClusterListStepsStates._(
    TfArgLiteral('INTERRUPTED'),
  );

  static const List<EmrClusterListStepsStates> values = [
    pending,
    cancelPending,
    running,
    completed,
    cancelled,
    failed,
    interrupted,
  ];
}

/// Emr Cluster Scale Down enum for `scale_down_behavior`.
extension type const EmrClusterScaleDownBehavior._(TfArg<String> _)
    implements TfArg<String> {
  EmrClusterScaleDownBehavior.variable(String name)
    : this._(TfArg.variable(name));
  EmrClusterScaleDownBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const EmrClusterScaleDownBehavior.arg(TfArg<String> arg) : this._(arg);

  static const terminateAtInstanceHour = EmrClusterScaleDownBehavior._(
    TfArgLiteral('TERMINATE_AT_INSTANCE_HOUR'),
  );
  static const terminateAtTaskCompletion = EmrClusterScaleDownBehavior._(
    TfArgLiteral('TERMINATE_AT_TASK_COMPLETION'),
  );

  static const List<EmrClusterScaleDownBehavior> values = [
    terminateAtInstanceHour,
    terminateAtTaskCompletion,
  ];
}

/// At most one of `configurations`, `configurations_json` on `aws_emr_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.configurations(...)`.
sealed class EmrClusterConfigurations {
  const EmrClusterConfigurations();

  /// Sets `configurations`.
  const factory EmrClusterConfigurations.configurations(
    TfArg<String> configurations,
  ) = EmrClusterConfigurationsChoice;

  /// Sets `configurations_json`.
  const factory EmrClusterConfigurations.configurationsJson(
    TfArg<String> configurationsJson,
  ) = EmrClusterConfigurationsJson;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EmrClusterConfigurations.configurations] choice: sets `configurations`.
final class EmrClusterConfigurationsChoice extends EmrClusterConfigurations {
  const EmrClusterConfigurationsChoice(this.configurations);

  final TfArg<String> configurations;

  @override
  String get blockKey => 'configurations';

  @override
  Map<String, Object?> encode() => {
    'configurations': configurations.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'configurations': configurations};
}

/// The [EmrClusterConfigurations.configurationsJson] choice: sets `configurations_json`.
final class EmrClusterConfigurationsJson extends EmrClusterConfigurations {
  const EmrClusterConfigurationsJson(this.configurationsJson);

  final TfArg<String> configurationsJson;

  @override
  String get blockKey => 'configurations_json';

  @override
  Map<String, Object?> encode() => {
    'configurations_json': configurationsJson.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'configurations_json': configurationsJson,
  };
}

/// Typed helper for the `auto_termination_policy` block of
/// `aws_emr_cluster` (derived from provider schema).
@immutable
final class EmrClusterAutoTerminationPolicy {
  const EmrClusterAutoTerminationPolicy({this.idleTimeout});

  final TfArg<num>? idleTimeout;

  Map<String, Object?> encode() => {'idle_timeout': ?idleTimeout?.toTfJson()};
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

  final TfArg<List<String>>? args;

  final TfArg<String> name;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
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

  final List<EmrClusterInstanceTypeConfigs>? instanceTypeConfigs;

  final EmrClusterLaunchSpecifications? launchSpecifications;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'target_on_demand_capacity': ?targetOnDemandCapacity?.toTfJson(),
    'target_spot_capacity': ?targetSpotCapacity?.toTfJson(),
    if (instanceTypeConfigs != null)
      'instance_type_configs': [
        for (final e in instanceTypeConfigs!) e.encode(),
      ],
    'launch_specifications': ?launchSpecifications?.encode(),
  };
}

/// Typed helper for the `core_instance_fleet.instance_type_configs` block of
/// `aws_emr_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterInstanceTypeConfigs {
  const EmrClusterInstanceTypeConfigs({
    this.bidPrice,
    this.bidPriceAsPercentageOfOnDemandPrice,
    required this.instanceType,
    this.weightedCapacity,
    this.ebsConfig,
  });

  final TfArg<String>? bidPrice;

  final TfArg<num>? bidPriceAsPercentageOfOnDemandPrice;

  final TfArg<String> instanceType;

  final TfArg<num>? weightedCapacity;

  final List<EmrClusterInstanceTypeConfigsEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    'bid_price': ?bidPrice?.toTfJson(),
    'bid_price_as_percentage_of_on_demand_price':
        ?bidPriceAsPercentageOfOnDemandPrice?.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `core_instance_fleet.instance_type_configs.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterInstanceTypeConfigsEbsConfig {
  const EmrClusterInstanceTypeConfigsEbsConfig({
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
    'iops': ?iops?.toTfJson(),
    'size': size.toTfJson(),
    'type': type.toTfJson(),
    'volumes_per_instance': ?volumesPerInstance?.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet.launch_specifications` block of
/// `aws_emr_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterLaunchSpecifications {
  const EmrClusterLaunchSpecifications({
    this.onDemandSpecification,
    this.spotSpecification,
  });

  final List<EmrClusterOnDemandSpecification>? onDemandSpecification;

  final List<EmrClusterSpotSpecification>? spotSpecification;

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
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterOnDemandSpecification {
  const EmrClusterOnDemandSpecification({required this.allocationStrategy});

  final TfArg<String> allocationStrategy;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
  };
}

/// Typed helper for the `core_instance_fleet.launch_specifications.spot_specification` block of
/// `aws_emr_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterSpotSpecification {
  const EmrClusterSpotSpecification({
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
    'block_duration_minutes': ?blockDurationMinutes?.toTfJson(),
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

  final List<EmrClusterEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    'autoscaling_policy': ?autoscalingPolicy?.toTfJson(),
    'bid_price': ?bidPrice?.toTfJson(),
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'name': ?name?.toTfJson(),
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `core_instance_group.ebs_config` block of
/// `aws_emr_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EmrClusterEbsConfig {
  const EmrClusterEbsConfig({
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
    'iops': ?iops?.toTfJson(),
    'size': size.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'type': type.toTfJson(),
    'volumes_per_instance': ?volumesPerInstance?.toTfJson(),
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
    this.subnet,
  });

  final TfArg<String>? additionalMasterSecurityGroups;

  final TfArg<String>? additionalSlaveSecurityGroups;

  final TfArg<String>? emrManagedMasterSecurityGroup;

  final TfArg<String>? emrManagedSlaveSecurityGroup;

  final TfArg<String> instanceProfile;

  final TfArg<String>? keyName;

  final TfArg<String>? serviceAccessSecurityGroup;

  final EmrClusterSubnet? subnet;

  Map<String, Object?> encode() => {
    'additional_master_security_groups': ?additionalMasterSecurityGroups
        ?.toTfJson(),
    'additional_slave_security_groups': ?additionalSlaveSecurityGroups
        ?.toTfJson(),
    'emr_managed_master_security_group': ?emrManagedMasterSecurityGroup
        ?.toTfJson(),
    'emr_managed_slave_security_group': ?emrManagedSlaveSecurityGroup
        ?.toTfJson(),
    'instance_profile': instanceProfile.toTfJson(),
    'key_name': ?keyName?.toTfJson(),
    'service_access_security_group': ?serviceAccessSecurityGroup?.toTfJson(),
    ...?subnet?.encode(),
  };
}

/// At most one of `subnet_id`, `subnet_ids` on the `ec2_attributes` block of `aws_emr_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.subnetId(...)`.
sealed class EmrClusterSubnet {
  const EmrClusterSubnet();

  /// Sets `subnet_id`.
  const factory EmrClusterSubnet.subnetId(RefTo<AwsSubnet> subnetId) =
      EmrClusterSubnetId;

  /// Sets `subnet_ids`.
  const factory EmrClusterSubnet.subnetIds(
    TfArg<List<RefTo<AwsSubnet>>> subnetIds,
  ) = EmrClusterSubnetIds;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EmrClusterSubnet.subnetId] choice: sets `subnet_id`.
final class EmrClusterSubnetId extends EmrClusterSubnet {
  const EmrClusterSubnetId(this.subnetId);

  final RefTo<AwsSubnet> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// The [EmrClusterSubnet.subnetIds] choice: sets `subnet_ids`.
final class EmrClusterSubnetIds extends EmrClusterSubnet {
  const EmrClusterSubnetIds(this.subnetIds);

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  @override
  String get blockKey => 'subnet_ids';

  @override
  Map<String, Object?> encode() => {
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
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
    'ad_domain_join_password': ?adDomainJoinPassword?.toTfJson(),
    'ad_domain_join_user': ?adDomainJoinUser?.toTfJson(),
    'cross_realm_trust_principal_password': ?crossRealmTrustPrincipalPassword
        ?.toTfJson(),
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

  final List<EmrClusterInstanceTypeConfigs>? instanceTypeConfigs;

  final EmrClusterLaunchSpecifications? launchSpecifications;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'target_on_demand_capacity': ?targetOnDemandCapacity?.toTfJson(),
    'target_spot_capacity': ?targetSpotCapacity?.toTfJson(),
    if (instanceTypeConfigs != null)
      'instance_type_configs': [
        for (final e in instanceTypeConfigs!) e.encode(),
      ],
    'launch_specifications': ?launchSpecifications?.encode(),
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

  final List<EmrClusterEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    'bid_price': ?bidPrice?.toTfJson(),
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'name': ?name?.toTfJson(),
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Factory wrapper for `aws_emr_cluster`.
final class AwsEmrCluster extends Resource {
  static const String tfType = 'aws_emr_cluster';

  AwsEmrCluster(
    super.localName, {
    TfArg<String>? additionalInfo,
    TfArg<List<String>>? applications,
    TfArg<String>? autoscalingRole,
    EmrClusterConfigurations? configurations,
    TfArg<String>? customAmiId,
    TfArg<num>? ebsRootVolumeSize,
    TfArg<bool>? keepJobFlowAliveWhenNoSteps,
    List<EmrClusterListStepsStates>? listStepsStates,
    TfArg<String>? logEncryptionKmsKeyId,
    TfArg<String>? logUri,
    required TfArg<String> name,
    TfArg<String>? osReleaseLabel,
    TfArg<List<Map<String, Object?>>>? placementGroupConfig,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    EmrClusterScaleDownBehavior? scaleDownBehavior,
    TfArg<String>? securityConfiguration,
    required RefTo<AwsIamRole> serviceRole,
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
           'additional_info': ?additionalInfo,
           'applications': ?applications,
           'autoscaling_role': ?autoscalingRole,
           ...?configurations?.argMap,
           'custom_ami_id': ?customAmiId,
           'ebs_root_volume_size': ?ebsRootVolumeSize,
           'keep_job_flow_alive_when_no_steps': ?keepJobFlowAliveWhenNoSteps,
           if (listStepsStates != null)
             'list_steps_states': TfArg.literal([
               for (final e in listStepsStates) e.toTfJson(),
             ]),
           'log_encryption_kms_key_id': ?logEncryptionKmsKeyId,
           'log_uri': ?logUri,
           'name': name,
           'os_release_label': ?osReleaseLabel,
           'placement_group_config': ?placementGroupConfig,
           'region': ?region,
           'release_label': releaseLabel,
           'scale_down_behavior': ?scaleDownBehavior,
           'security_configuration': ?securityConfiguration,
           'service_role': serviceRole.encodeAs('arn'),
           'step': ?step,
           'step_concurrency_level': ?stepConcurrencyLevel,
           'tags': ?tags,
           'termination_protection': ?terminationProtection,
           'unhealthy_node_replacement': ?unhealthyNodeReplacement,
           'visible_to_all_users': ?visibleToAllUsers,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrCluster>`.
  RefTo<AwsEmrCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `additional_info` attribute.
  TfRef<String> get additionalInfo =>
      TfRef.attribute<String>(this, 'additional_info');

  /// Reference to `applications` attribute.
  TfRef<List<String>> get applications =>
      TfRef.attribute<List<String>>(this, 'applications');

  /// Reference to `autoscaling_role` attribute.
  TfRef<String> get autoscalingRole =>
      TfRef.attribute<String>(this, 'autoscaling_role');

  /// Reference to `configurations` attribute.
  TfRef<String> get configurations =>
      TfRef.attribute<String>(this, 'configurations');

  /// Reference to `configurations_json` attribute.
  TfRef<String> get configurationsJson =>
      TfRef.attribute<String>(this, 'configurations_json');

  /// Reference to `custom_ami_id` attribute.
  TfRef<String> get customAmiId =>
      TfRef.attribute<String>(this, 'custom_ami_id');

  /// Reference to `ebs_root_volume_size` attribute.
  TfRef<num> get ebsRootVolumeSize =>
      TfRef.attribute<num>(this, 'ebs_root_volume_size');

  /// Reference to `keep_job_flow_alive_when_no_steps` attribute.
  TfRef<bool> get keepJobFlowAliveWhenNoSteps =>
      TfRef.attribute<bool>(this, 'keep_job_flow_alive_when_no_steps');

  /// Reference to `list_steps_states` attribute.
  TfRef<List<String>> get listStepsStates =>
      TfRef.attribute<List<String>>(this, 'list_steps_states');

  /// Reference to `log_encryption_kms_key_id` attribute.
  TfRef<String> get logEncryptionKmsKeyId =>
      TfRef.attribute<String>(this, 'log_encryption_kms_key_id');

  /// Reference to `log_uri` attribute.
  TfRef<String> get logUri => TfRef.attribute<String>(this, 'log_uri');

  /// Reference to `os_release_label` attribute.
  TfRef<String> get osReleaseLabel =>
      TfRef.attribute<String>(this, 'os_release_label');

  /// Reference to `placement_group_config` attribute.
  TfRef<List<Map<String, Object?>>> get placementGroupConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'placement_group_config',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_label` attribute.
  TfRef<String> get releaseLabel =>
      TfRef.attribute<String>(this, 'release_label');

  /// Reference to `scale_down_behavior` attribute.
  TfRef<String> get scaleDownBehavior =>
      TfRef.attribute<String>(this, 'scale_down_behavior');

  /// Reference to `security_configuration` attribute.
  TfRef<String> get securityConfiguration =>
      TfRef.attribute<String>(this, 'security_configuration');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `step` attribute.
  TfRef<List<Map<String, Object?>>> get step =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'step');

  /// Reference to `step_concurrency_level` attribute.
  TfRef<num> get stepConcurrencyLevel =>
      TfRef.attribute<num>(this, 'step_concurrency_level');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `termination_protection` attribute.
  TfRef<bool> get terminationProtection =>
      TfRef.attribute<bool>(this, 'termination_protection');

  /// Reference to `unhealthy_node_replacement` attribute.
  TfRef<bool> get unhealthyNodeReplacement =>
      TfRef.attribute<bool>(this, 'unhealthy_node_replacement');

  /// Reference to `visible_to_all_users` attribute.
  TfRef<bool> get visibleToAllUsers =>
      TfRef.attribute<bool>(this, 'visible_to_all_users');
}

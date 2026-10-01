// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ecs/aws_ecs_cluster.dart' show AwsEcsCluster;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ecs_capacity_provider`.
const Set<String> _awsEcsCapacityProviderSensitive = <String>{};

/// Typed helper for the `auto_scaling_group_provider` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAutoScalingGroupProvider {
  const EcsCapacityProviderAutoScalingGroupProvider({
    required this.autoScalingGroupArn,
    this.managedDraining,
    this.managedTerminationProtection,
    this.managedScaling,
  });

  final TfArg<String> autoScalingGroupArn;

  final TfArg<EcsCapacityProviderManagedDraining>? managedDraining;

  final TfArg<EcsCapacityProviderManagedTerminationProtection>?
  managedTerminationProtection;

  final EcsCapacityProviderManagedScaling? managedScaling;

  Map<String, Object?> encode() => {
    'auto_scaling_group_arn': autoScalingGroupArn.toTfJson(),
    'managed_draining': ?managedDraining?.toTfJson(),
    'managed_termination_protection': ?managedTerminationProtection?.toTfJson(),
    'managed_scaling': ?managedScaling?.encode(),
  };
}

/// `managed_draining` — derived from the provider schema description.
enum EcsCapacityProviderManagedDraining implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsCapacityProviderManagedDraining(this.terraformValue);
  @override
  final String terraformValue;
}

/// `managed_termination_protection` — derived from the provider schema description.
enum EcsCapacityProviderManagedTerminationProtection implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsCapacityProviderManagedTerminationProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_scaling_group_provider.managed_scaling` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedScaling {
  const EcsCapacityProviderManagedScaling({
    this.instanceWarmupPeriod,
    this.maximumScalingStepSize,
    this.minimumScalingStepSize,
    this.status,
    this.targetCapacity,
  });

  final TfArg<num>? instanceWarmupPeriod;

  final TfArg<num>? maximumScalingStepSize;

  final TfArg<num>? minimumScalingStepSize;

  final TfArg<EcsCapacityProviderStatus>? status;

  final TfArg<num>? targetCapacity;

  Map<String, Object?> encode() => {
    'instance_warmup_period': ?instanceWarmupPeriod?.toTfJson(),
    'maximum_scaling_step_size': ?maximumScalingStepSize?.toTfJson(),
    'minimum_scaling_step_size': ?minimumScalingStepSize?.toTfJson(),
    'status': ?status?.toTfJson(),
    'target_capacity': ?targetCapacity?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum EcsCapacityProviderStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsCapacityProviderStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProvider {
  const EcsCapacityProviderManagedInstancesProvider({
    required this.infrastructureRoleArn,
    this.propagateTags,
    this.autoRepairConfiguration,
    this.infrastructureOptimization,
    required this.instanceLaunchTemplate,
  });

  final RefTo<AwsIamRole> infrastructureRoleArn;

  final TfArg<EcsCapacityProviderPropagateTags>? propagateTags;

  final EcsCapacityProviderAutoRepairConfiguration? autoRepairConfiguration;

  final EcsCapacityProviderInfrastructureOptimization?
  infrastructureOptimization;

  final EcsCapacityProviderInstanceLaunchTemplate instanceLaunchTemplate;

  Map<String, Object?> encode() => {
    'infrastructure_role_arn': infrastructureRoleArn.encodeAs('arn').toTfJson(),
    'propagate_tags': ?propagateTags?.toTfJson(),
    'auto_repair_configuration': ?autoRepairConfiguration?.encode(),
    'infrastructure_optimization': ?infrastructureOptimization?.encode(),
    'instance_launch_template': instanceLaunchTemplate.encode(),
  };
}

/// `propagate_tags` — derived from the provider schema description.
enum EcsCapacityProviderPropagateTags implements TerraformEnum {
  capacityProvider('CAPACITY_PROVIDER'),
  none('NONE');

  const EcsCapacityProviderPropagateTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider.auto_repair_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAutoRepairConfiguration {
  const EcsCapacityProviderAutoRepairConfiguration({this.actionsStatus});

  final TfArg<EcsCapacityProviderActionsStatus>? actionsStatus;

  Map<String, Object?> encode() => {
    'actions_status': ?actionsStatus?.toTfJson(),
  };
}

/// `actions_status` — derived from the provider schema description.
enum EcsCapacityProviderActionsStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EcsCapacityProviderActionsStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider.infrastructure_optimization` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderInfrastructureOptimization {
  const EcsCapacityProviderInfrastructureOptimization({this.scaleInAfter});

  final TfArg<num>? scaleInAfter;

  Map<String, Object?> encode() => {
    'scale_in_after': ?scaleInAfter?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderInstanceLaunchTemplate {
  const EcsCapacityProviderInstanceLaunchTemplate({
    this.capacityOptionType,
    required this.ec2InstanceProfileArn,
    this.monitoring,
    this.capacityReservations,
    this.instanceRequirements,
    this.localStorageConfiguration,
    required this.networkConfiguration,
    this.storageConfiguration,
  });

  final TfArg<EcsCapacityProviderCapacityOptionType>? capacityOptionType;

  final TfArg<String> ec2InstanceProfileArn;

  final TfArg<EcsCapacityProviderMonitoring>? monitoring;

  final EcsCapacityProviderCapacityReservations? capacityReservations;

  final EcsCapacityProviderInstanceRequirements? instanceRequirements;

  final EcsCapacityProviderLocalStorageConfiguration? localStorageConfiguration;

  final EcsCapacityProviderNetworkConfiguration networkConfiguration;

  final EcsCapacityProviderStorageConfiguration? storageConfiguration;

  Map<String, Object?> encode() => {
    'capacity_option_type': ?capacityOptionType?.toTfJson(),
    'ec2_instance_profile_arn': ec2InstanceProfileArn.toTfJson(),
    'monitoring': ?monitoring?.toTfJson(),
    'capacity_reservations': ?capacityReservations?.encode(),
    'instance_requirements': ?instanceRequirements?.encode(),
    'local_storage_configuration': ?localStorageConfiguration?.encode(),
    'network_configuration': networkConfiguration.encode(),
    'storage_configuration': ?storageConfiguration?.encode(),
  };
}

/// `capacity_option_type` — derived from the provider schema description.
enum EcsCapacityProviderCapacityOptionType implements TerraformEnum {
  onDemand('ON_DEMAND'),
  spot('SPOT'),
  reserved('RESERVED');

  const EcsCapacityProviderCapacityOptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `monitoring` — derived from the provider schema description.
enum EcsCapacityProviderMonitoring implements TerraformEnum {
  basic('BASIC'),
  detailed('DETAILED');

  const EcsCapacityProviderMonitoring(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.capacity_reservations` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderCapacityReservations {
  const EcsCapacityProviderCapacityReservations({
    this.reservationGroupArn,
    this.reservationPreference,
  });

  final TfArg<String>? reservationGroupArn;

  final TfArg<EcsCapacityProviderReservationPreference>? reservationPreference;

  Map<String, Object?> encode() => {
    'reservation_group_arn': ?reservationGroupArn?.toTfJson(),
    'reservation_preference': ?reservationPreference?.toTfJson(),
  };
}

/// `reservation_preference` — derived from the provider schema description.
enum EcsCapacityProviderReservationPreference implements TerraformEnum {
  reservationsOnly('RESERVATIONS_ONLY'),
  reservationsFirst('RESERVATIONS_FIRST'),
  reservationsExcluded('RESERVATIONS_EXCLUDED');

  const EcsCapacityProviderReservationPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderInstanceRequirements {
  const EcsCapacityProviderInstanceRequirements({
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTypes,
    this.allowedInstanceTypes,
    this.bareMetal,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.excludedInstanceTypes,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.acceleratorCount,
    this.acceleratorTotalMemoryMib,
    this.baselineEbsBandwidthMbps,
    this.memoryGibPerVcpu,
    required this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.totalLocalStorageGb,
    required this.vcpuCount,
  });

  final List<TfArg<EcsCapacityProviderAcceleratorManufacturers>>?
  acceleratorManufacturers;

  final List<TfArg<EcsCapacityProviderAcceleratorNames>>? acceleratorNames;

  final List<TfArg<EcsCapacityProviderAcceleratorTypes>>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final TfArg<EcsCapacityProviderBareMetal>? bareMetal;

  final TfArg<EcsCapacityProviderBurstablePerformance>? burstablePerformance;

  final List<TfArg<EcsCapacityProviderCpuManufacturers>>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<TfArg<EcsCapacityProviderInstanceGenerations>>?
  instanceGenerations;

  final TfArg<EcsCapacityProviderLocalStorage>? localStorage;

  final List<TfArg<EcsCapacityProviderLocalStorageTypes>>? localStorageTypes;

  final TfArg<num>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final EcsCapacityProviderAcceleratorCount? acceleratorCount;

  final EcsCapacityProviderAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  final EcsCapacityProviderBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;

  final EcsCapacityProviderMemoryGibPerVcpu? memoryGibPerVcpu;

  final EcsCapacityProviderMemoryMib memoryMib;

  final EcsCapacityProviderNetworkBandwidthGbps? networkBandwidthGbps;

  final EcsCapacityProviderNetworkInterfaceCount? networkInterfaceCount;

  final EcsCapacityProviderTotalLocalStorageGb? totalLocalStorageGb;

  final EcsCapacityProviderVcpuCount vcpuCount;

  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    'allowed_instance_types': ?allowedInstanceTypes?.toTfJson(),
    'bare_metal': ?bareMetal?.toTfJson(),
    'burstable_performance': ?burstablePerformance?.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    'excluded_instance_types': ?excludedInstanceTypes?.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    'local_storage': ?localStorage?.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
    'max_spot_price_as_percentage_of_optimal_on_demand_price':
        ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice?.toTfJson(),
    'on_demand_max_price_percentage_over_lowest_price':
        ?onDemandMaxPricePercentageOverLowestPrice?.toTfJson(),
    'require_hibernate_support': ?requireHibernateSupport?.toTfJson(),
    'spot_max_price_percentage_over_lowest_price':
        ?spotMaxPricePercentageOverLowestPrice?.toTfJson(),
    'accelerator_count': ?acceleratorCount?.encode(),
    'accelerator_total_memory_mib': ?acceleratorTotalMemoryMib?.encode(),
    'baseline_ebs_bandwidth_mbps': ?baselineEbsBandwidthMbps?.encode(),
    'memory_gib_per_vcpu': ?memoryGibPerVcpu?.encode(),
    'memory_mib': memoryMib.encode(),
    'network_bandwidth_gbps': ?networkBandwidthGbps?.encode(),
    'network_interface_count': ?networkInterfaceCount?.encode(),
    'total_local_storage_gb': ?totalLocalStorageGb?.encode(),
    'vcpu_count': vcpuCount.encode(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
enum EcsCapacityProviderAcceleratorManufacturers implements TerraformEnum {
  amazonWebServices('amazon-web-services'),
  amd('amd'),
  nvidia('nvidia'),
  xilinx('xilinx'),
  habana('habana');

  const EcsCapacityProviderAcceleratorManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum EcsCapacityProviderAcceleratorNames implements TerraformEnum {
  a100('a100'),
  inferentia('inferentia'),
  k520('k520'),
  k80('k80'),
  m60('m60'),
  radeonProV520('radeon-pro-v520'),
  t4('t4'),
  vu9p('vu9p'),
  v100('v100'),
  a10g('a10g'),
  h100('h100'),
  t4g('t4g');

  const EcsCapacityProviderAcceleratorNames(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum EcsCapacityProviderAcceleratorTypes implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference');

  const EcsCapacityProviderAcceleratorTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum EcsCapacityProviderBareMetal implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const EcsCapacityProviderBareMetal(this.terraformValue);
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum EcsCapacityProviderBurstablePerformance implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const EcsCapacityProviderBurstablePerformance(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum EcsCapacityProviderCpuManufacturers implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services');

  const EcsCapacityProviderCpuManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum EcsCapacityProviderInstanceGenerations implements TerraformEnum {
  current('current'),
  previous('previous');

  const EcsCapacityProviderInstanceGenerations(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum EcsCapacityProviderLocalStorage implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const EcsCapacityProviderLocalStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum EcsCapacityProviderLocalStorageTypes implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const EcsCapacityProviderLocalStorageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.accelerator_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAcceleratorCount {
  const EcsCapacityProviderAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAcceleratorTotalMemoryMib {
  const EcsCapacityProviderAcceleratorTotalMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderBaselineEbsBandwidthMbps {
  const EcsCapacityProviderBaselineEbsBandwidthMbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderMemoryGibPerVcpu {
  const EcsCapacityProviderMemoryGibPerVcpu({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.memory_mib` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderMemoryMib {
  const EcsCapacityProviderMemoryMib({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.network_bandwidth_gbps` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderNetworkBandwidthGbps {
  const EcsCapacityProviderNetworkBandwidthGbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.network_interface_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderNetworkInterfaceCount {
  const EcsCapacityProviderNetworkInterfaceCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.total_local_storage_gb` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderTotalLocalStorageGb {
  const EcsCapacityProviderTotalLocalStorageGb({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.vcpu_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderVcpuCount {
  const EcsCapacityProviderVcpuCount({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.local_storage_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderLocalStorageConfiguration {
  const EcsCapacityProviderLocalStorageConfiguration({this.useLocalStorage});

  final TfArg<bool>? useLocalStorage;

  Map<String, Object?> encode() => {
    'use_local_storage': ?useLocalStorage?.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.network_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderNetworkConfiguration {
  const EcsCapacityProviderNetworkConfiguration({
    this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.storage_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderStorageConfiguration {
  const EcsCapacityProviderStorageConfiguration({required this.storageSizeGib});

  final TfArg<num> storageSizeGib;

  Map<String, Object?> encode() => {
    'storage_size_gib': storageSizeGib.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_capacity_provider`.
final class AwsEcsCapacityProvider extends Resource {
  static const String tfType = 'aws_ecs_capacity_provider';

  AwsEcsCapacityProvider(
    super.localName, {
    RefTo<AwsEcsCluster>? cluster,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EcsCapacityProviderAutoScalingGroupProvider? autoScalingGroupProvider,
    EcsCapacityProviderManagedInstancesProvider? managedInstancesProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': ?cluster?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (autoScalingGroupProvider != null)
             'auto_scaling_group_provider': TfArg.literal(
               autoScalingGroupProvider.encode(),
             ),
           if (managedInstancesProvider != null)
             'managed_instances_provider': TfArg.literal(
               managedInstancesProvider.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsCapacityProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsCapacityProvider>`.
  RefTo<AwsEcsCapacityProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

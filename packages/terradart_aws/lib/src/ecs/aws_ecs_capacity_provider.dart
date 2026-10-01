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

  final EcsCapacityProviderManagedDraining? managedDraining;

  final EcsCapacityProviderManagedTerminationProtection?
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
extension type const EcsCapacityProviderManagedDraining._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderManagedDraining.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderManagedDraining.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderManagedDraining.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EcsCapacityProviderManagedDraining._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = EcsCapacityProviderManagedDraining._(
    TfArgLiteral('DISABLED'),
  );

  static const List<EcsCapacityProviderManagedDraining> values = [
    enabled,
    disabled,
  ];
}

/// `managed_termination_protection` — derived from the provider schema description.
extension type const EcsCapacityProviderManagedTerminationProtection._(
  TfArg<String> _
) implements TfArg<String> {
  EcsCapacityProviderManagedTerminationProtection.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderManagedTerminationProtection.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderManagedTerminationProtection.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = EcsCapacityProviderManagedTerminationProtection._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = EcsCapacityProviderManagedTerminationProtection._(
    TfArgLiteral('DISABLED'),
  );

  static const List<EcsCapacityProviderManagedTerminationProtection> values = [
    enabled,
    disabled,
  ];
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

  final EcsCapacityProviderStatus? status;

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
extension type const EcsCapacityProviderStatus._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderStatus.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderStatus.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EcsCapacityProviderStatus._(TfArgLiteral('ENABLED'));
  static const disabled = EcsCapacityProviderStatus._(TfArgLiteral('DISABLED'));

  static const List<EcsCapacityProviderStatus> values = [enabled, disabled];
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

  final EcsCapacityProviderPropagateTags? propagateTags;

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
extension type const EcsCapacityProviderPropagateTags._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderPropagateTags.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderPropagateTags.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderPropagateTags.arg(TfArg<String> arg) : this._(arg);

  static const capacityProvider = EcsCapacityProviderPropagateTags._(
    TfArgLiteral('CAPACITY_PROVIDER'),
  );
  static const none = EcsCapacityProviderPropagateTags._(TfArgLiteral('NONE'));

  static const List<EcsCapacityProviderPropagateTags> values = [
    capacityProvider,
    none,
  ];
}

/// Typed helper for the `managed_instances_provider.auto_repair_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAutoRepairConfiguration {
  const EcsCapacityProviderAutoRepairConfiguration({this.actionsStatus});

  final EcsCapacityProviderActionsStatus? actionsStatus;

  Map<String, Object?> encode() => {
    'actions_status': ?actionsStatus?.toTfJson(),
  };
}

/// `actions_status` — derived from the provider schema description.
extension type const EcsCapacityProviderActionsStatus._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderActionsStatus.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderActionsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderActionsStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EcsCapacityProviderActionsStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = EcsCapacityProviderActionsStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<EcsCapacityProviderActionsStatus> values = [
    enabled,
    disabled,
  ];
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

  final EcsCapacityProviderCapacityOptionType? capacityOptionType;

  final TfArg<String> ec2InstanceProfileArn;

  final EcsCapacityProviderMonitoring? monitoring;

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
extension type const EcsCapacityProviderCapacityOptionType._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderCapacityOptionType.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderCapacityOptionType.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderCapacityOptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const onDemand = EcsCapacityProviderCapacityOptionType._(
    TfArgLiteral('ON_DEMAND'),
  );
  static const spot = EcsCapacityProviderCapacityOptionType._(
    TfArgLiteral('SPOT'),
  );
  static const reserved = EcsCapacityProviderCapacityOptionType._(
    TfArgLiteral('RESERVED'),
  );

  static const List<EcsCapacityProviderCapacityOptionType> values = [
    onDemand,
    spot,
    reserved,
  ];
}

/// `monitoring` — derived from the provider schema description.
extension type const EcsCapacityProviderMonitoring._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderMonitoring.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderMonitoring.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderMonitoring.arg(TfArg<String> arg) : this._(arg);

  static const basic = EcsCapacityProviderMonitoring._(TfArgLiteral('BASIC'));
  static const detailed = EcsCapacityProviderMonitoring._(
    TfArgLiteral('DETAILED'),
  );

  static const List<EcsCapacityProviderMonitoring> values = [basic, detailed];
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

  final EcsCapacityProviderReservationPreference? reservationPreference;

  Map<String, Object?> encode() => {
    'reservation_group_arn': ?reservationGroupArn?.toTfJson(),
    'reservation_preference': ?reservationPreference?.toTfJson(),
  };
}

/// `reservation_preference` — derived from the provider schema description.
extension type const EcsCapacityProviderReservationPreference._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderReservationPreference.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderReservationPreference.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderReservationPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const reservationsOnly = EcsCapacityProviderReservationPreference._(
    TfArgLiteral('RESERVATIONS_ONLY'),
  );
  static const reservationsFirst = EcsCapacityProviderReservationPreference._(
    TfArgLiteral('RESERVATIONS_FIRST'),
  );
  static const reservationsExcluded =
      EcsCapacityProviderReservationPreference._(
        TfArgLiteral('RESERVATIONS_EXCLUDED'),
      );

  static const List<EcsCapacityProviderReservationPreference> values = [
    reservationsOnly,
    reservationsFirst,
    reservationsExcluded,
  ];
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

  final List<EcsCapacityProviderAcceleratorManufacturers>?
  acceleratorManufacturers;

  final List<EcsCapacityProviderAcceleratorNames>? acceleratorNames;

  final List<EcsCapacityProviderAcceleratorTypes>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final EcsCapacityProviderBareMetal? bareMetal;

  final EcsCapacityProviderBurstablePerformance? burstablePerformance;

  final List<EcsCapacityProviderCpuManufacturers>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<EcsCapacityProviderInstanceGenerations>? instanceGenerations;

  final EcsCapacityProviderLocalStorage? localStorage;

  final List<EcsCapacityProviderLocalStorageTypes>? localStorageTypes;

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
extension type const EcsCapacityProviderAcceleratorManufacturers._(
  TfArg<String> _
) implements TfArg<String> {
  EcsCapacityProviderAcceleratorManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderAcceleratorManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderAcceleratorManufacturers.arg(TfArg<String> arg)
    : this._(arg);

  static const amazonWebServices =
      EcsCapacityProviderAcceleratorManufacturers._(
        TfArgLiteral('amazon-web-services'),
      );
  static const amd = EcsCapacityProviderAcceleratorManufacturers._(
    TfArgLiteral('amd'),
  );
  static const nvidia = EcsCapacityProviderAcceleratorManufacturers._(
    TfArgLiteral('nvidia'),
  );
  static const xilinx = EcsCapacityProviderAcceleratorManufacturers._(
    TfArgLiteral('xilinx'),
  );
  static const habana = EcsCapacityProviderAcceleratorManufacturers._(
    TfArgLiteral('habana'),
  );

  static const List<EcsCapacityProviderAcceleratorManufacturers> values = [
    amazonWebServices,
    amd,
    nvidia,
    xilinx,
    habana,
  ];
}

/// `accelerator_names` — derived from the provider schema description.
extension type const EcsCapacityProviderAcceleratorNames._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderAcceleratorNames.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderAcceleratorNames.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderAcceleratorNames.arg(TfArg<String> arg)
    : this._(arg);

  static const a100 = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('a100'),
  );
  static const inferentia = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('inferentia'),
  );
  static const k520 = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('k520'),
  );
  static const k80 = EcsCapacityProviderAcceleratorNames._(TfArgLiteral('k80'));
  static const m60 = EcsCapacityProviderAcceleratorNames._(TfArgLiteral('m60'));
  static const radeonProV520 = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('radeon-pro-v520'),
  );
  static const t4 = EcsCapacityProviderAcceleratorNames._(TfArgLiteral('t4'));
  static const vu9p = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('vu9p'),
  );
  static const v100 = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('v100'),
  );
  static const a10g = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('a10g'),
  );
  static const h100 = EcsCapacityProviderAcceleratorNames._(
    TfArgLiteral('h100'),
  );
  static const t4g = EcsCapacityProviderAcceleratorNames._(TfArgLiteral('t4g'));

  static const List<EcsCapacityProviderAcceleratorNames> values = [
    a100,
    inferentia,
    k520,
    k80,
    m60,
    radeonProV520,
    t4,
    vu9p,
    v100,
    a10g,
    h100,
    t4g,
  ];
}

/// `accelerator_types` — derived from the provider schema description.
extension type const EcsCapacityProviderAcceleratorTypes._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderAcceleratorTypes.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderAcceleratorTypes.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderAcceleratorTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const gpu = EcsCapacityProviderAcceleratorTypes._(TfArgLiteral('gpu'));
  static const fpga = EcsCapacityProviderAcceleratorTypes._(
    TfArgLiteral('fpga'),
  );
  static const inference = EcsCapacityProviderAcceleratorTypes._(
    TfArgLiteral('inference'),
  );

  static const List<EcsCapacityProviderAcceleratorTypes> values = [
    gpu,
    fpga,
    inference,
  ];
}

/// `bare_metal` — derived from the provider schema description.
extension type const EcsCapacityProviderBareMetal._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderBareMetal.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderBareMetal.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderBareMetal.arg(TfArg<String> arg) : this._(arg);

  static const included = EcsCapacityProviderBareMetal._(
    TfArgLiteral('included'),
  );
  static const required = EcsCapacityProviderBareMetal._(
    TfArgLiteral('required'),
  );
  static const excluded = EcsCapacityProviderBareMetal._(
    TfArgLiteral('excluded'),
  );

  static const List<EcsCapacityProviderBareMetal> values = [
    included,
    required,
    excluded,
  ];
}

/// `burstable_performance` — derived from the provider schema description.
extension type const EcsCapacityProviderBurstablePerformance._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderBurstablePerformance.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderBurstablePerformance.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderBurstablePerformance.arg(TfArg<String> arg)
    : this._(arg);

  static const included = EcsCapacityProviderBurstablePerformance._(
    TfArgLiteral('included'),
  );
  static const required = EcsCapacityProviderBurstablePerformance._(
    TfArgLiteral('required'),
  );
  static const excluded = EcsCapacityProviderBurstablePerformance._(
    TfArgLiteral('excluded'),
  );

  static const List<EcsCapacityProviderBurstablePerformance> values = [
    included,
    required,
    excluded,
  ];
}

/// `cpu_manufacturers` — derived from the provider schema description.
extension type const EcsCapacityProviderCpuManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderCpuManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderCpuManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderCpuManufacturers.arg(TfArg<String> arg)
    : this._(arg);

  static const intel = EcsCapacityProviderCpuManufacturers._(
    TfArgLiteral('intel'),
  );
  static const amd = EcsCapacityProviderCpuManufacturers._(TfArgLiteral('amd'));
  static const amazonWebServices = EcsCapacityProviderCpuManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );

  static const List<EcsCapacityProviderCpuManufacturers> values = [
    intel,
    amd,
    amazonWebServices,
  ];
}

/// `instance_generations` — derived from the provider schema description.
extension type const EcsCapacityProviderInstanceGenerations._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderInstanceGenerations.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderInstanceGenerations.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderInstanceGenerations.arg(TfArg<String> arg)
    : this._(arg);

  static const current = EcsCapacityProviderInstanceGenerations._(
    TfArgLiteral('current'),
  );
  static const previous = EcsCapacityProviderInstanceGenerations._(
    TfArgLiteral('previous'),
  );

  static const List<EcsCapacityProviderInstanceGenerations> values = [
    current,
    previous,
  ];
}

/// `local_storage` — derived from the provider schema description.
extension type const EcsCapacityProviderLocalStorage._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderLocalStorage.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderLocalStorage.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderLocalStorage.arg(TfArg<String> arg) : this._(arg);

  static const included = EcsCapacityProviderLocalStorage._(
    TfArgLiteral('included'),
  );
  static const required = EcsCapacityProviderLocalStorage._(
    TfArgLiteral('required'),
  );
  static const excluded = EcsCapacityProviderLocalStorage._(
    TfArgLiteral('excluded'),
  );

  static const List<EcsCapacityProviderLocalStorage> values = [
    included,
    required,
    excluded,
  ];
}

/// `local_storage_types` — derived from the provider schema description.
extension type const EcsCapacityProviderLocalStorageTypes._(TfArg<String> _)
    implements TfArg<String> {
  EcsCapacityProviderLocalStorageTypes.variable(String name)
    : this._(TfArg.variable(name));
  EcsCapacityProviderLocalStorageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const EcsCapacityProviderLocalStorageTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const hdd = EcsCapacityProviderLocalStorageTypes._(
    TfArgLiteral('hdd'),
  );
  static const ssd = EcsCapacityProviderLocalStorageTypes._(
    TfArgLiteral('ssd'),
  );

  static const List<EcsCapacityProviderLocalStorageTypes> values = [hdd, ssd];
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

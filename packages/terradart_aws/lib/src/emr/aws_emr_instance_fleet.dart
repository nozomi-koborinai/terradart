// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_instance_fleet`.
const Set<String> _awsEmrInstanceFleetSensitive = <String>{};

/// Typed helper for the `instance_type_configs` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetInstanceTypeConfigs {
  const EmrInstanceFleetInstanceTypeConfigs({
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

  final List<EmrInstanceFleetInstanceTypeConfigsConfigurations>? configurations;

  final List<EmrInstanceFleetInstanceTypeConfigsEbsConfig>? ebsConfig;

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

/// Typed helper for the `instance_type_configs.configurations` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetInstanceTypeConfigsConfigurations {
  const EmrInstanceFleetInstanceTypeConfigsConfigurations({
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

/// Typed helper for the `instance_type_configs.ebs_config` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetInstanceTypeConfigsEbsConfig {
  const EmrInstanceFleetInstanceTypeConfigsEbsConfig({
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

/// Typed helper for the `launch_specifications` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetLaunchSpecifications {
  const EmrInstanceFleetLaunchSpecifications({
    this.onDemandSpecification,
    this.spotSpecification,
  });

  final List<EmrInstanceFleetLaunchSpecificationsOnDemandSpecification>?
  onDemandSpecification;

  final List<EmrInstanceFleetLaunchSpecificationsSpotSpecification>?
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

/// Typed helper for the `launch_specifications.on_demand_specification` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetLaunchSpecificationsOnDemandSpecification {
  const EmrInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  final TfArg<String> allocationStrategy;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
  };
}

/// Typed helper for the `launch_specifications.spot_specification` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetLaunchSpecificationsSpotSpecification {
  const EmrInstanceFleetLaunchSpecificationsSpotSpecification({
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

/// Factory wrapper for `aws_emr_instance_fleet`.
final class AwsEmrInstanceFleet extends Resource {
  static const String tfType = 'aws_emr_instance_fleet';

  AwsEmrInstanceFleet({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<num>? targetOnDemandCapacity,
    TfArg<num>? targetSpotCapacity,
    List<EmrInstanceFleetInstanceTypeConfigs>? instanceTypeConfigs,
    EmrInstanceFleetLaunchSpecifications? launchSpecifications,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (targetOnDemandCapacity != null)
             'target_on_demand_capacity': targetOnDemandCapacity,
           if (targetSpotCapacity != null)
             'target_spot_capacity': targetSpotCapacity,
           if (instanceTypeConfigs != null)
             'instance_type_configs': TfArg.literal([
               for (final e in instanceTypeConfigs) e.encode(),
             ]),
           if (launchSpecifications != null)
             'launch_specifications': TfArg.literal(
               launchSpecifications.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrInstanceFleetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioned_on_demand_capacity` attribute.
  TfRef<num> get provisionedOnDemandCapacity =>
      TfRef.attribute<num>(this, 'provisioned_on_demand_capacity');

  /// Reference to `provisioned_spot_capacity` attribute.
  TfRef<num> get provisionedSpotCapacity =>
      TfRef.attribute<num>(this, 'provisioned_spot_capacity');
}

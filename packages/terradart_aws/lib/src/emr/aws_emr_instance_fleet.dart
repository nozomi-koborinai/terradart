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

  final List<EmrInstanceFleetConfigurations>? configurations;

  final List<EmrInstanceFleetEbsConfig>? ebsConfig;

  Map<String, Object?> encode() => {
    'bid_price': ?bidPrice?.toTfJson(),
    'bid_price_as_percentage_of_on_demand_price':
        ?bidPriceAsPercentageOfOnDemandPrice?.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
    if (configurations != null)
      'configurations': [for (final e in configurations!) e.encode()],
    if (ebsConfig != null)
      'ebs_config': [for (final e in ebsConfig!) e.encode()],
  };
}

/// Typed helper for the `instance_type_configs.configurations` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetConfigurations {
  const EmrInstanceFleetConfigurations({this.classification, this.properties});

  final TfArg<String>? classification;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    'classification': ?classification?.toTfJson(),
    'properties': ?properties?.toTfJson(),
  };
}

/// Typed helper for the `instance_type_configs.ebs_config` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetEbsConfig {
  const EmrInstanceFleetEbsConfig({
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

/// Typed helper for the `launch_specifications` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetLaunchSpecifications {
  const EmrInstanceFleetLaunchSpecifications({
    this.onDemandSpecification,
    this.spotSpecification,
  });

  final List<EmrInstanceFleetOnDemandSpecification>? onDemandSpecification;

  final List<EmrInstanceFleetSpotSpecification>? spotSpecification;

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
final class EmrInstanceFleetOnDemandSpecification {
  const EmrInstanceFleetOnDemandSpecification({
    required this.allocationStrategy,
  });

  final EmrInstanceFleetOnDemandSpecificationAllocationStrategy
  allocationStrategy;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
  };
}

/// `allocation_strategy` — derived from the provider schema description.
extension type const EmrInstanceFleetOnDemandSpecificationAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  EmrInstanceFleetOnDemandSpecificationAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  EmrInstanceFleetOnDemandSpecificationAllocationStrategy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const EmrInstanceFleetOnDemandSpecificationAllocationStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const lowestPrice =
      EmrInstanceFleetOnDemandSpecificationAllocationStrategy._(
        TfArgLiteral('lowest-price'),
      );
  static const prioritized =
      EmrInstanceFleetOnDemandSpecificationAllocationStrategy._(
        TfArgLiteral('prioritized'),
      );

  static const List<EmrInstanceFleetOnDemandSpecificationAllocationStrategy>
  values = [lowestPrice, prioritized];
}

/// Typed helper for the `launch_specifications.spot_specification` block of
/// `aws_emr_instance_fleet` (derived from provider schema).
@immutable
final class EmrInstanceFleetSpotSpecification {
  const EmrInstanceFleetSpotSpecification({
    required this.allocationStrategy,
    this.blockDurationMinutes,
    required this.timeoutAction,
    required this.timeoutDurationMinutes,
  });

  final EmrInstanceFleetSpotSpecificationAllocationStrategy allocationStrategy;

  final TfArg<num>? blockDurationMinutes;

  final EmrInstanceFleetTimeoutAction timeoutAction;

  final TfArg<num> timeoutDurationMinutes;

  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
    'block_duration_minutes': ?blockDurationMinutes?.toTfJson(),
    'timeout_action': timeoutAction.toTfJson(),
    'timeout_duration_minutes': timeoutDurationMinutes.toTfJson(),
  };
}

/// `allocation_strategy` — derived from the provider schema description.
extension type const EmrInstanceFleetSpotSpecificationAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  EmrInstanceFleetSpotSpecificationAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  EmrInstanceFleetSpotSpecificationAllocationStrategy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const EmrInstanceFleetSpotSpecificationAllocationStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const capacityOptimized =
      EmrInstanceFleetSpotSpecificationAllocationStrategy._(
        TfArgLiteral('capacity-optimized'),
      );
  static const priceCapacityOptimized =
      EmrInstanceFleetSpotSpecificationAllocationStrategy._(
        TfArgLiteral('price-capacity-optimized'),
      );
  static const lowestPrice =
      EmrInstanceFleetSpotSpecificationAllocationStrategy._(
        TfArgLiteral('lowest-price'),
      );
  static const diversified =
      EmrInstanceFleetSpotSpecificationAllocationStrategy._(
        TfArgLiteral('diversified'),
      );
  static const capacityOptimizedPrioritized =
      EmrInstanceFleetSpotSpecificationAllocationStrategy._(
        TfArgLiteral('capacity-optimized-prioritized'),
      );

  static const List<EmrInstanceFleetSpotSpecificationAllocationStrategy>
  values = [
    capacityOptimized,
    priceCapacityOptimized,
    lowestPrice,
    diversified,
    capacityOptimizedPrioritized,
  ];
}

/// `timeout_action` — derived from the provider schema description.
extension type const EmrInstanceFleetTimeoutAction._(TfArg<String> _)
    implements TfArg<String> {
  EmrInstanceFleetTimeoutAction.variable(String name)
    : this._(TfArg.variable(name));
  EmrInstanceFleetTimeoutAction.expression(String template)
    : this._(TfArg.expression(template));
  const EmrInstanceFleetTimeoutAction.arg(TfArg<String> arg) : this._(arg);

  static const switchToOnDemand = EmrInstanceFleetTimeoutAction._(
    TfArgLiteral('SWITCH_TO_ON_DEMAND'),
  );
  static const terminateCluster = EmrInstanceFleetTimeoutAction._(
    TfArgLiteral('TERMINATE_CLUSTER'),
  );

  static const List<EmrInstanceFleetTimeoutAction> values = [
    switchToOnDemand,
    terminateCluster,
  ];
}

/// Factory wrapper for `aws_emr_instance_fleet`.
final class AwsEmrInstanceFleet extends Resource {
  static const String tfType = 'aws_emr_instance_fleet';

  AwsEmrInstanceFleet(
    super.localName, {
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
           'name': ?name,
           'region': ?region,
           'target_on_demand_capacity': ?targetOnDemandCapacity,
           'target_spot_capacity': ?targetSpotCapacity,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrInstanceFleet>`.
  RefTo<AwsEmrInstanceFleet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioned_on_demand_capacity` attribute.
  TfRef<num> get provisionedOnDemandCapacity =>
      TfRef.attribute<num>(this, 'provisioned_on_demand_capacity');

  /// Reference to `provisioned_spot_capacity` attribute.
  TfRef<num> get provisionedSpotCapacity =>
      TfRef.attribute<num>(this, 'provisioned_spot_capacity');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_on_demand_capacity` attribute.
  TfRef<num> get targetOnDemandCapacity =>
      TfRef.attribute<num>(this, 'target_on_demand_capacity');

  /// Reference to `target_spot_capacity` attribute.
  TfRef<num> get targetSpotCapacity =>
      TfRef.attribute<num>(this, 'target_spot_capacity');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_codebuild_fleet`.
const Set<String> _awsCodebuildFleetSensitive = <String>{};

/// Codebuild Fleet Compute enum for `compute_type`.
enum CodebuildFleetComputeType implements TerraformEnum {
  buildGeneral1Small('BUILD_GENERAL1_SMALL'),
  buildGeneral1Medium('BUILD_GENERAL1_MEDIUM'),
  buildGeneral1Large('BUILD_GENERAL1_LARGE'),
  buildGeneral1Xlarge('BUILD_GENERAL1_XLARGE'),
  buildGeneral12xlarge('BUILD_GENERAL1_2XLARGE'),
  buildLambda1gb('BUILD_LAMBDA_1GB'),
  buildLambda2gb('BUILD_LAMBDA_2GB'),
  buildLambda4gb('BUILD_LAMBDA_4GB'),
  buildLambda8gb('BUILD_LAMBDA_8GB'),
  buildLambda10gb('BUILD_LAMBDA_10GB'),
  attributeBasedCompute('ATTRIBUTE_BASED_COMPUTE'),
  customInstanceType('CUSTOM_INSTANCE_TYPE');

  const CodebuildFleetComputeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Codebuild Fleet Environment enum for `environment_type`.
enum CodebuildFleetEnvironmentType implements TerraformEnum {
  windowsContainer('WINDOWS_CONTAINER'),
  linuxContainer('LINUX_CONTAINER'),
  linuxGpuContainer('LINUX_GPU_CONTAINER'),
  armContainer('ARM_CONTAINER'),
  windowsServer2019Container('WINDOWS_SERVER_2019_CONTAINER'),
  windowsServer2022Container('WINDOWS_SERVER_2022_CONTAINER'),
  linuxLambdaContainer('LINUX_LAMBDA_CONTAINER'),
  armLambdaContainer('ARM_LAMBDA_CONTAINER'),
  linuxEc2('LINUX_EC2'),
  armEc2('ARM_EC2'),
  windowsEc2('WINDOWS_EC2'),
  macArm('MAC_ARM');

  const CodebuildFleetEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Codebuild Fleet Overflow enum for `overflow_behavior`.
enum CodebuildFleetOverflowBehavior implements TerraformEnum {
  queue('QUEUE'),
  onDemand('ON_DEMAND');

  const CodebuildFleetOverflowBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `compute_configuration` block of
/// `aws_codebuild_fleet` (derived from provider schema).
@immutable
final class CodebuildFleetComputeConfiguration {
  const CodebuildFleetComputeConfiguration({
    this.disk,
    this.instanceType,
    this.machineType,
    this.memory,
    this.vcpu,
  });

  final TfArg<num>? disk;

  final TfArg<String>? instanceType;

  final TfArg<CodebuildFleetMachineType>? machineType;

  final TfArg<num>? memory;

  final TfArg<num>? vcpu;

  Map<String, Object?> encode() => {
    'disk': ?disk?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'vcpu': ?vcpu?.toTfJson(),
  };
}

/// `machine_type` — derived from the provider schema description.
enum CodebuildFleetMachineType implements TerraformEnum {
  general('GENERAL'),
  nvme('NVME');

  const CodebuildFleetMachineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_configuration` block of
/// `aws_codebuild_fleet` (derived from provider schema).
@immutable
final class CodebuildFleetScalingConfiguration {
  const CodebuildFleetScalingConfiguration({
    this.maxCapacity,
    this.scalingType,
    this.targetTrackingScalingConfigs,
  });

  final TfArg<num>? maxCapacity;

  final TfArg<CodebuildFleetScalingType>? scalingType;

  final List<CodebuildFleetTargetTrackingScalingConfigs>?
  targetTrackingScalingConfigs;

  Map<String, Object?> encode() => {
    'max_capacity': ?maxCapacity?.toTfJson(),
    'scaling_type': ?scalingType?.toTfJson(),
    if (targetTrackingScalingConfigs != null)
      'target_tracking_scaling_configs': [
        for (final e in targetTrackingScalingConfigs!) e.encode(),
      ],
  };
}

/// `scaling_type` — derived from the provider schema description.
enum CodebuildFleetScalingType implements TerraformEnum {
  targetTrackingScaling('TARGET_TRACKING_SCALING');

  const CodebuildFleetScalingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_configuration.target_tracking_scaling_configs` block of
/// `aws_codebuild_fleet` (derived from provider schema).
@immutable
final class CodebuildFleetTargetTrackingScalingConfigs {
  const CodebuildFleetTargetTrackingScalingConfigs({
    this.metricType,
    this.targetValue,
  });

  final TfArg<CodebuildFleetMetricType>? metricType;

  final TfArg<num>? targetValue;

  Map<String, Object?> encode() => {
    'metric_type': ?metricType?.toTfJson(),
    'target_value': ?targetValue?.toTfJson(),
  };
}

/// `metric_type` — derived from the provider schema description.
enum CodebuildFleetMetricType implements TerraformEnum {
  fleetUtilizationRate('FLEET_UTILIZATION_RATE');

  const CodebuildFleetMetricType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vpc_config` block of
/// `aws_codebuild_fleet` (derived from provider schema).
@immutable
final class CodebuildFleetVpcConfig {
  const CodebuildFleetVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_codebuild_fleet`.
final class AwsCodebuildFleet extends Resource {
  static const String tfType = 'aws_codebuild_fleet';

  AwsCodebuildFleet({
    required super.localName,
    required TfArg<num> baseCapacity,
    required TfArg<CodebuildFleetComputeType> computeType,
    required TfArg<CodebuildFleetEnvironmentType> environmentType,
    TfArg<String>? fleetServiceRole,
    TfArg<String>? imageId,
    required TfArg<String> name,
    TfArg<CodebuildFleetOverflowBehavior>? overflowBehavior,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CodebuildFleetComputeConfiguration? computeConfiguration,
    CodebuildFleetScalingConfiguration? scalingConfiguration,
    List<CodebuildFleetVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_capacity': baseCapacity,
           'compute_type': computeType,
           'environment_type': environmentType,
           'fleet_service_role': ?fleetServiceRole,
           'image_id': ?imageId,
           'name': name,
           'overflow_behavior': ?overflowBehavior,
           'region': ?region,
           'tags': ?tags,
           if (computeConfiguration != null)
             'compute_configuration': TfArg.literal(
               computeConfiguration.encode(),
             ),
           if (scalingConfiguration != null)
             'scaling_configuration': TfArg.literal(
               scalingConfiguration.encode(),
             ),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildFleetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildFleet>`.
  RefTo<AwsCodebuildFleet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `base_capacity` attribute.
  TfRef<num> get baseCapacityRef => TfRef.attribute<num>(this, 'base_capacity');

  /// Reference to `compute_type` attribute.
  TfRef<String> get computeTypeRef =>
      TfRef.attribute<String>(this, 'compute_type');

  /// Reference to `environment_type` attribute.
  TfRef<String> get environmentTypeRef =>
      TfRef.attribute<String>(this, 'environment_type');

  /// Reference to `fleet_service_role` attribute.
  TfRef<String> get fleetServiceRoleRef =>
      TfRef.attribute<String>(this, 'fleet_service_role');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageIdRef => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `overflow_behavior` attribute.
  TfRef<String> get overflowBehaviorRef =>
      TfRef.attribute<String>(this, 'overflow_behavior');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

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
extension type const CodebuildFleetComputeType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetComputeType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildFleetComputeType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetComputeType.arg(TfArg<String> arg) : this._(arg);

  static const buildGeneral1Small = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_GENERAL1_SMALL'),
  );
  static const buildGeneral1Medium = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_GENERAL1_MEDIUM'),
  );
  static const buildGeneral1Large = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_GENERAL1_LARGE'),
  );
  static const buildGeneral1Xlarge = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_GENERAL1_XLARGE'),
  );
  static const buildGeneral12xlarge = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_GENERAL1_2XLARGE'),
  );
  static const buildLambda1gb = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_LAMBDA_1GB'),
  );
  static const buildLambda2gb = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_LAMBDA_2GB'),
  );
  static const buildLambda4gb = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_LAMBDA_4GB'),
  );
  static const buildLambda8gb = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_LAMBDA_8GB'),
  );
  static const buildLambda10gb = CodebuildFleetComputeType._(
    TfArgLiteral('BUILD_LAMBDA_10GB'),
  );
  static const attributeBasedCompute = CodebuildFleetComputeType._(
    TfArgLiteral('ATTRIBUTE_BASED_COMPUTE'),
  );
  static const customInstanceType = CodebuildFleetComputeType._(
    TfArgLiteral('CUSTOM_INSTANCE_TYPE'),
  );

  static const List<CodebuildFleetComputeType> values = [
    buildGeneral1Small,
    buildGeneral1Medium,
    buildGeneral1Large,
    buildGeneral1Xlarge,
    buildGeneral12xlarge,
    buildLambda1gb,
    buildLambda2gb,
    buildLambda4gb,
    buildLambda8gb,
    buildLambda10gb,
    attributeBasedCompute,
    customInstanceType,
  ];
}

/// Codebuild Fleet Environment enum for `environment_type`.
extension type const CodebuildFleetEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildFleetEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const windowsContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('WINDOWS_CONTAINER'),
  );
  static const linuxContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('LINUX_CONTAINER'),
  );
  static const linuxGpuContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('LINUX_GPU_CONTAINER'),
  );
  static const armContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('ARM_CONTAINER'),
  );
  static const windowsServer2019Container = CodebuildFleetEnvironmentType._(
    TfArgLiteral('WINDOWS_SERVER_2019_CONTAINER'),
  );
  static const windowsServer2022Container = CodebuildFleetEnvironmentType._(
    TfArgLiteral('WINDOWS_SERVER_2022_CONTAINER'),
  );
  static const linuxLambdaContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('LINUX_LAMBDA_CONTAINER'),
  );
  static const armLambdaContainer = CodebuildFleetEnvironmentType._(
    TfArgLiteral('ARM_LAMBDA_CONTAINER'),
  );
  static const linuxEc2 = CodebuildFleetEnvironmentType._(
    TfArgLiteral('LINUX_EC2'),
  );
  static const armEc2 = CodebuildFleetEnvironmentType._(
    TfArgLiteral('ARM_EC2'),
  );
  static const windowsEc2 = CodebuildFleetEnvironmentType._(
    TfArgLiteral('WINDOWS_EC2'),
  );
  static const macArm = CodebuildFleetEnvironmentType._(
    TfArgLiteral('MAC_ARM'),
  );

  static const List<CodebuildFleetEnvironmentType> values = [
    windowsContainer,
    linuxContainer,
    linuxGpuContainer,
    armContainer,
    windowsServer2019Container,
    windowsServer2022Container,
    linuxLambdaContainer,
    armLambdaContainer,
    linuxEc2,
    armEc2,
    windowsEc2,
    macArm,
  ];
}

/// Codebuild Fleet Overflow enum for `overflow_behavior`.
extension type const CodebuildFleetOverflowBehavior._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetOverflowBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildFleetOverflowBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetOverflowBehavior.arg(TfArg<String> arg) : this._(arg);

  static const queue = CodebuildFleetOverflowBehavior._(TfArgLiteral('QUEUE'));
  static const onDemand = CodebuildFleetOverflowBehavior._(
    TfArgLiteral('ON_DEMAND'),
  );

  static const List<CodebuildFleetOverflowBehavior> values = [queue, onDemand];
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

  final CodebuildFleetMachineType? machineType;

  final TfArg<num>? memory;

  final TfArg<num>? vcpu;

  @internal
  Map<String, Object?> encode() => {
    'disk': ?disk?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'vcpu': ?vcpu?.toTfJson(),
  };
}

/// `machine_type` — derived from the provider schema description.
extension type const CodebuildFleetMachineType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetMachineType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildFleetMachineType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetMachineType.arg(TfArg<String> arg) : this._(arg);

  static const general = CodebuildFleetMachineType._(TfArgLiteral('GENERAL'));
  static const nvme = CodebuildFleetMachineType._(TfArgLiteral('NVME'));

  static const List<CodebuildFleetMachineType> values = [general, nvme];
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

  final CodebuildFleetScalingType? scalingType;

  final List<CodebuildFleetTargetTrackingScalingConfigs>?
  targetTrackingScalingConfigs;

  @internal
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
extension type const CodebuildFleetScalingType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetScalingType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildFleetScalingType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetScalingType.arg(TfArg<String> arg) : this._(arg);

  static const targetTrackingScaling = CodebuildFleetScalingType._(
    TfArgLiteral('TARGET_TRACKING_SCALING'),
  );

  static const List<CodebuildFleetScalingType> values = [targetTrackingScaling];
}

/// Typed helper for the `scaling_configuration.target_tracking_scaling_configs` block of
/// `aws_codebuild_fleet` (derived from provider schema).
@immutable
final class CodebuildFleetTargetTrackingScalingConfigs {
  const CodebuildFleetTargetTrackingScalingConfigs({
    this.metricType,
    this.targetValue,
  });

  final CodebuildFleetMetricType? metricType;

  final TfArg<num>? targetValue;

  @internal
  Map<String, Object?> encode() => {
    'metric_type': ?metricType?.toTfJson(),
    'target_value': ?targetValue?.toTfJson(),
  };
}

/// `metric_type` — derived from the provider schema description.
extension type const CodebuildFleetMetricType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildFleetMetricType.variable(String name) : this._(TfArg.variable(name));
  CodebuildFleetMetricType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildFleetMetricType.arg(TfArg<String> arg) : this._(arg);

  static const fleetUtilizationRate = CodebuildFleetMetricType._(
    TfArgLiteral('FLEET_UTILIZATION_RATE'),
  );

  static const List<CodebuildFleetMetricType> values = [fleetUtilizationRate];
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

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_codebuild_fleet`.
final class AwsCodebuildFleet extends Resource {
  static const String tfType = 'aws_codebuild_fleet';

  AwsCodebuildFleet(
    super.localName, {
    required TfArg<num> baseCapacity,
    required CodebuildFleetComputeType computeType,
    required CodebuildFleetEnvironmentType environmentType,
    TfArg<String>? fleetServiceRole,
    TfArg<String>? imageId,
    required TfArg<String> name,
    CodebuildFleetOverflowBehavior? overflowBehavior,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<num> get baseCapacity => TfRef.attribute<num>(this, 'base_capacity');

  /// Reference to `compute_type` attribute.
  TfRef<String> get computeType =>
      TfRef.attribute<String>(this, 'compute_type');

  /// Reference to `environment_type` attribute.
  TfRef<String> get environmentType =>
      TfRef.attribute<String>(this, 'environment_type');

  /// Reference to `fleet_service_role` attribute.
  TfRef<String> get fleetServiceRole =>
      TfRef.attribute<String>(this, 'fleet_service_role');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `overflow_behavior` attribute.
  TfRef<String> get overflowBehavior =>
      TfRef.attribute<String>(this, 'overflow_behavior');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

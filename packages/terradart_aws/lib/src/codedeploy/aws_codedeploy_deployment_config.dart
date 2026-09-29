// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_deployment_config`.
const Set<String> _awsCodedeployDeploymentConfigSensitive = <String>{};

/// Codedeploy Deployment Config Compute enum for `compute_platform`.
enum CodedeployDeploymentConfigComputePlatform implements TerraformEnum {
  server('Server'),
  lambda('Lambda'),
  ecs('ECS');

  const CodedeployDeploymentConfigComputePlatform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `minimum_healthy_hosts` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigMinimumHealthyHosts {
  const CodedeployDeploymentConfigMinimumHealthyHosts({this.type, this.value});

  final TfArg<CodedeployDeploymentConfigMinimumHealthyHostsType>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodedeployDeploymentConfigMinimumHealthyHostsType
    implements TerraformEnum {
  hostCount('HOST_COUNT'),
  fleetPercent('FLEET_PERCENT');

  const CodedeployDeploymentConfigMinimumHealthyHostsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `traffic_routing_config` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTrafficRoutingConfig {
  const CodedeployDeploymentConfigTrafficRoutingConfig({
    this.type,
    this.timeBasedCanaryOrTimeBasedLinear,
  });

  final TfArg<CodedeployDeploymentConfigTrafficRoutingConfigType>? type;

  final CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear?
  timeBasedCanaryOrTimeBasedLinear;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    ...?timeBasedCanaryOrTimeBasedLinear?.encode(),
  };
}

/// At most one of `time_based_canary`, `time_based_linear` on the `traffic_routing_config` block of `aws_codedeploy_deployment_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.timeBasedCanary(...)`.
sealed class CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear {
  const CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear();

  /// Sets `time_based_canary`.
  const factory CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear.timeBasedCanary(
    CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanary
    timeBasedCanary,
  ) = CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedCanary;

  /// Sets `time_based_linear`.
  const factory CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear.timeBasedLinear(
    CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedLinear
    timeBasedLinear,
  ) = CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedLinear;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear.timeBasedCanary] choice: sets `time_based_canary`.
final class CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedCanary
    extends
        CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear {
  const CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedCanary(
    this.timeBasedCanary,
  );

  final CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanary
  timeBasedCanary;

  @override
  String get blockKey => 'time_based_canary';

  @override
  Map<String, Object?> encode() => {
    'time_based_canary': timeBasedCanary.encode(),
  };
}

/// The [CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear.timeBasedLinear] choice: sets `time_based_linear`.
final class CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedLinear
    extends
        CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinear {
  const CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanaryOrTimeBasedLinearTimeBasedLinear(
    this.timeBasedLinear,
  );

  final CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedLinear
  timeBasedLinear;

  @override
  String get blockKey => 'time_based_linear';

  @override
  Map<String, Object?> encode() => {
    'time_based_linear': timeBasedLinear.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum CodedeployDeploymentConfigTrafficRoutingConfigType
    implements TerraformEnum {
  timebasedcanary('TimeBasedCanary'),
  timebasedlinear('TimeBasedLinear'),
  allatonce('AllAtOnce');

  const CodedeployDeploymentConfigTrafficRoutingConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `traffic_routing_config.time_based_canary` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanary {
  const CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanary({
    this.interval,
    this.percentage,
  });

  final TfArg<num>? interval;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    if (interval != null) 'interval': interval!.toTfJson(),
    if (percentage != null) 'percentage': percentage!.toTfJson(),
  };
}

/// Typed helper for the `traffic_routing_config.time_based_linear` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedLinear {
  const CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedLinear({
    this.interval,
    this.percentage,
  });

  final TfArg<num>? interval;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    if (interval != null) 'interval': interval!.toTfJson(),
    if (percentage != null) 'percentage': percentage!.toTfJson(),
  };
}

/// Typed helper for the `zonal_config` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigZonalConfig {
  const CodedeployDeploymentConfigZonalConfig({
    this.firstZoneMonitorDurationInSeconds,
    this.monitorDurationInSeconds,
    this.minimumHealthyHostsPerZone,
  });

  final TfArg<num>? firstZoneMonitorDurationInSeconds;

  final TfArg<num>? monitorDurationInSeconds;

  final CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZone?
  minimumHealthyHostsPerZone;

  Map<String, Object?> encode() => {
    if (firstZoneMonitorDurationInSeconds != null)
      'first_zone_monitor_duration_in_seconds':
          firstZoneMonitorDurationInSeconds!.toTfJson(),
    if (monitorDurationInSeconds != null)
      'monitor_duration_in_seconds': monitorDurationInSeconds!.toTfJson(),
    if (minimumHealthyHostsPerZone != null)
      'minimum_healthy_hosts_per_zone': minimumHealthyHostsPerZone!.encode(),
  };
}

/// Typed helper for the `zonal_config.minimum_healthy_hosts_per_zone` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZone {
  const CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZone({
    this.type,
    this.value,
  });

  final TfArg<
    CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZoneType
  >?
  type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZoneType
    implements TerraformEnum {
  hostCount('HOST_COUNT'),
  fleetPercent('FLEET_PERCENT');

  const CodedeployDeploymentConfigZonalConfigMinimumHealthyHostsPerZoneType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codedeploy_deployment_config`.
final class AwsCodedeployDeploymentConfig extends Resource {
  static const String tfType = 'aws_codedeploy_deployment_config';

  AwsCodedeployDeploymentConfig({
    required super.localName,
    TfArg<CodedeployDeploymentConfigComputePlatform>? computePlatform,
    required TfArg<String> deploymentConfigName,
    TfArg<String>? region,
    CodedeployDeploymentConfigMinimumHealthyHosts? minimumHealthyHosts,
    CodedeployDeploymentConfigTrafficRoutingConfig? trafficRoutingConfig,
    CodedeployDeploymentConfigZonalConfig? zonalConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (computePlatform != null) 'compute_platform': computePlatform,
           'deployment_config_name': deploymentConfigName,
           if (region != null) 'region': region,
           if (minimumHealthyHosts != null)
             'minimum_healthy_hosts': TfArg.literal(
               minimumHealthyHosts.encode(),
             ),
           if (trafficRoutingConfig != null)
             'traffic_routing_config': TfArg.literal(
               trafficRoutingConfig.encode(),
             ),
           if (zonalConfig != null)
             'zonal_config': TfArg.literal(zonalConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodedeployDeploymentConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodedeployDeploymentConfig>`.
  RefTo<AwsCodedeployDeploymentConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_config_id` attribute.
  TfRef<String> get deploymentConfigId =>
      TfRef.attribute<String>(this, 'deployment_config_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_deployment_config`.
const Set<String> _awsCodedeployDeploymentConfigSensitive = <String>{};

/// Typed helper for the `minimum_healthy_hosts` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigMinimumHealthyHosts {
  const CodedeployDeploymentConfigMinimumHealthyHosts({this.type, this.value});

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `traffic_routing_config` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTrafficRoutingConfig {
  const CodedeployDeploymentConfigTrafficRoutingConfig({
    this.type,
    this.timeBasedCanary,
    this.timeBasedLinear,
  });

  final TfArg<String>? type;

  final CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedCanary?
  timeBasedCanary;

  final CodedeployDeploymentConfigTrafficRoutingConfigTimeBasedLinear?
  timeBasedLinear;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (timeBasedCanary != null) 'time_based_canary': timeBasedCanary!.encode(),
    if (timeBasedLinear != null) 'time_based_linear': timeBasedLinear!.encode(),
  };
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

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_codedeploy_deployment_config`.
final class AwsCodedeployDeploymentConfig extends Resource {
  static const String tfType = 'aws_codedeploy_deployment_config';

  AwsCodedeployDeploymentConfig({
    required super.localName,
    TfArg<String>? computePlatform,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_config_id` attribute.
  TfRef<String> get deploymentConfigId =>
      TfRef.attribute<String>(this, 'deployment_config_id');
}

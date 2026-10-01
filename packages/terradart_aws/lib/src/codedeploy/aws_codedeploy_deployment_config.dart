// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_deployment_config`.
const Set<String> _awsCodedeployDeploymentConfigSensitive = <String>{};

/// Codedeploy Deployment Config Compute enum for `compute_platform`.
extension type const CodedeployDeploymentConfigComputePlatform._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentConfigComputePlatform.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentConfigComputePlatform.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentConfigComputePlatform.arg(TfArg<String> arg)
    : this._(arg);

  static const server = CodedeployDeploymentConfigComputePlatform._(
    TfArgLiteral('Server'),
  );
  static const lambda = CodedeployDeploymentConfigComputePlatform._(
    TfArgLiteral('Lambda'),
  );
  static const ecs = CodedeployDeploymentConfigComputePlatform._(
    TfArgLiteral('ECS'),
  );

  static const List<CodedeployDeploymentConfigComputePlatform> values = [
    server,
    lambda,
    ecs,
  ];
}

/// Typed helper for the `minimum_healthy_hosts` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigMinimumHealthyHosts {
  const CodedeployDeploymentConfigMinimumHealthyHosts({this.type, this.value});

  final CodedeployDeploymentConfigMinimumHealthyHostsType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodedeployDeploymentConfigMinimumHealthyHostsType._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentConfigMinimumHealthyHostsType.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentConfigMinimumHealthyHostsType.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentConfigMinimumHealthyHostsType.arg(TfArg<String> arg)
    : this._(arg);

  static const hostCount = CodedeployDeploymentConfigMinimumHealthyHostsType._(
    TfArgLiteral('HOST_COUNT'),
  );
  static const fleetPercent =
      CodedeployDeploymentConfigMinimumHealthyHostsType._(
        TfArgLiteral('FLEET_PERCENT'),
      );

  static const List<CodedeployDeploymentConfigMinimumHealthyHostsType> values =
      [hostCount, fleetPercent];
}

/// Typed helper for the `traffic_routing_config` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTrafficRoutingConfig {
  const CodedeployDeploymentConfigTrafficRoutingConfig({
    this.type,
    this.timeBased,
  });

  final CodedeployDeploymentConfigTrafficRoutingConfigType? type;

  final CodedeployDeploymentConfigTimeBased? timeBased;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    ...?timeBased?.encode(),
  };
}

/// At most one of `time_based_canary`, `time_based_linear` on the `traffic_routing_config` block of `aws_codedeploy_deployment_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.timeBasedCanary(...)`.
sealed class CodedeployDeploymentConfigTimeBased {
  const CodedeployDeploymentConfigTimeBased();

  /// Sets `time_based_canary`.
  const factory CodedeployDeploymentConfigTimeBased.timeBasedCanary(
    CodedeployDeploymentConfigTimeBasedCanary timeBasedCanary,
  ) = CodedeployDeploymentConfigTimeBasedCanaryChoice;

  /// Sets `time_based_linear`.
  const factory CodedeployDeploymentConfigTimeBased.timeBasedLinear(
    CodedeployDeploymentConfigTimeBasedLinear timeBasedLinear,
  ) = CodedeployDeploymentConfigTimeBasedLinearChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CodedeployDeploymentConfigTimeBased.timeBasedCanary] choice: sets `time_based_canary`.
final class CodedeployDeploymentConfigTimeBasedCanaryChoice
    extends CodedeployDeploymentConfigTimeBased {
  const CodedeployDeploymentConfigTimeBasedCanaryChoice(this.timeBasedCanary);

  final CodedeployDeploymentConfigTimeBasedCanary timeBasedCanary;

  @override
  String get blockKey => 'time_based_canary';

  @override
  Map<String, Object?> encode() => {
    'time_based_canary': timeBasedCanary.encode(),
  };
}

/// The [CodedeployDeploymentConfigTimeBased.timeBasedLinear] choice: sets `time_based_linear`.
final class CodedeployDeploymentConfigTimeBasedLinearChoice
    extends CodedeployDeploymentConfigTimeBased {
  const CodedeployDeploymentConfigTimeBasedLinearChoice(this.timeBasedLinear);

  final CodedeployDeploymentConfigTimeBasedLinear timeBasedLinear;

  @override
  String get blockKey => 'time_based_linear';

  @override
  Map<String, Object?> encode() => {
    'time_based_linear': timeBasedLinear.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodedeployDeploymentConfigTrafficRoutingConfigType._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentConfigTrafficRoutingConfigType.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentConfigTrafficRoutingConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentConfigTrafficRoutingConfigType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const timebasedcanary =
      CodedeployDeploymentConfigTrafficRoutingConfigType._(
        TfArgLiteral('TimeBasedCanary'),
      );
  static const timebasedlinear =
      CodedeployDeploymentConfigTrafficRoutingConfigType._(
        TfArgLiteral('TimeBasedLinear'),
      );
  static const allatonce = CodedeployDeploymentConfigTrafficRoutingConfigType._(
    TfArgLiteral('AllAtOnce'),
  );

  static const List<CodedeployDeploymentConfigTrafficRoutingConfigType> values =
      [timebasedcanary, timebasedlinear, allatonce];
}

/// Typed helper for the `traffic_routing_config.time_based_canary` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTimeBasedCanary {
  const CodedeployDeploymentConfigTimeBasedCanary({
    this.interval,
    this.percentage,
  });

  final TfArg<num>? interval;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'interval': ?interval?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
  };
}

/// Typed helper for the `traffic_routing_config.time_based_linear` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigTimeBasedLinear {
  const CodedeployDeploymentConfigTimeBasedLinear({
    this.interval,
    this.percentage,
  });

  final TfArg<num>? interval;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    'interval': ?interval?.toTfJson(),
    'percentage': ?percentage?.toTfJson(),
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

  final CodedeployDeploymentConfigMinimumHealthyHostsPerZone?
  minimumHealthyHostsPerZone;

  Map<String, Object?> encode() => {
    'first_zone_monitor_duration_in_seconds': ?firstZoneMonitorDurationInSeconds
        ?.toTfJson(),
    'monitor_duration_in_seconds': ?monitorDurationInSeconds?.toTfJson(),
    'minimum_healthy_hosts_per_zone': ?minimumHealthyHostsPerZone?.encode(),
  };
}

/// Typed helper for the `zonal_config.minimum_healthy_hosts_per_zone` block of
/// `aws_codedeploy_deployment_config` (derived from provider schema).
@immutable
final class CodedeployDeploymentConfigMinimumHealthyHostsPerZone {
  const CodedeployDeploymentConfigMinimumHealthyHostsPerZone({
    this.type,
    this.value,
  });

  final CodedeployDeploymentConfigMinimumHealthyHostsType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `aws_codedeploy_deployment_config`.
final class AwsCodedeployDeploymentConfig extends Resource {
  static const String tfType = 'aws_codedeploy_deployment_config';

  AwsCodedeployDeploymentConfig(
    super.localName, {
    CodedeployDeploymentConfigComputePlatform? computePlatform,
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
           'compute_platform': ?computePlatform,
           'deployment_config_name': deploymentConfigName,
           'region': ?region,
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

  /// Reference to `compute_platform` attribute.
  TfRef<String> get computePlatform =>
      TfRef.attribute<String>(this, 'compute_platform');

  /// Reference to `deployment_config_name` attribute.
  TfRef<String> get deploymentConfigName =>
      TfRef.attribute<String>(this, 'deployment_config_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

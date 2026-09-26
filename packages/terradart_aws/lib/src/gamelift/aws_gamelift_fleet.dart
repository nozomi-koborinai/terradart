// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_fleet`.
const Set<String> _awsGameliftFleetSensitive = <String>{};

/// Typed helper for the `certificate_configuration` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetCertificateConfiguration {
  const GameliftFleetCertificateConfiguration({this.certificateType});

  final TfArg<String>? certificateType;

  Map<String, Object?> encode() => {
    if (certificateType != null)
      'certificate_type': certificateType!.toTfJson(),
  };
}

/// Typed helper for the `ec2_inbound_permission` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetEc2InboundPermission {
  const GameliftFleetEc2InboundPermission({
    required this.fromPort,
    required this.ipRange,
    required this.protocol,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<String> ipRange;

  final TfArg<String> protocol;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'ip_range': ipRange.toTfJson(),
    'protocol': protocol.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `resource_creation_limit_policy` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetResourceCreationLimitPolicy {
  const GameliftFleetResourceCreationLimitPolicy({
    this.newGameSessionsPerCreator,
    this.policyPeriodInMinutes,
  });

  final TfArg<num>? newGameSessionsPerCreator;

  final TfArg<num>? policyPeriodInMinutes;

  Map<String, Object?> encode() => {
    if (newGameSessionsPerCreator != null)
      'new_game_sessions_per_creator': newGameSessionsPerCreator!.toTfJson(),
    if (policyPeriodInMinutes != null)
      'policy_period_in_minutes': policyPeriodInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `runtime_configuration` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetRuntimeConfiguration {
  const GameliftFleetRuntimeConfiguration({
    this.gameSessionActivationTimeoutSeconds,
    this.maxConcurrentGameSessionActivations,
    this.serverProcess,
  });

  final TfArg<num>? gameSessionActivationTimeoutSeconds;

  final TfArg<num>? maxConcurrentGameSessionActivations;

  final List<GameliftFleetRuntimeConfigurationServerProcess>? serverProcess;

  Map<String, Object?> encode() => {
    if (gameSessionActivationTimeoutSeconds != null)
      'game_session_activation_timeout_seconds':
          gameSessionActivationTimeoutSeconds!.toTfJson(),
    if (maxConcurrentGameSessionActivations != null)
      'max_concurrent_game_session_activations':
          maxConcurrentGameSessionActivations!.toTfJson(),
    if (serverProcess != null)
      'server_process': [for (final e in serverProcess!) e.encode()],
  };
}

/// Typed helper for the `runtime_configuration.server_process` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetRuntimeConfigurationServerProcess {
  const GameliftFleetRuntimeConfigurationServerProcess({
    required this.concurrentExecutions,
    required this.launchPath,
    this.parameters,
  });

  final TfArg<num> concurrentExecutions;

  final TfArg<String> launchPath;

  final TfArg<String>? parameters;

  Map<String, Object?> encode() => {
    'concurrent_executions': concurrentExecutions.toTfJson(),
    'launch_path': launchPath.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_fleet`.
final class AwsGameliftFleet extends Resource {
  static const String tfType = 'aws_gamelift_fleet';

  AwsGameliftFleet({
    required super.localName,
    TfArg<String>? buildId,
    TfArg<String>? description,
    required TfArg<String> ec2InstanceType,
    TfArg<String>? fleetType,
    TfArg<String>? instanceRoleArn,
    TfArg<List<String>>? metricGroups,
    required TfArg<String> name,
    TfArg<String>? newGameSessionProtectionPolicy,
    TfArg<String>? region,
    TfArg<String>? scriptId,
    TfArg<Map<String, String>>? tags,
    GameliftFleetCertificateConfiguration? certificateConfiguration,
    List<GameliftFleetEc2InboundPermission>? ec2InboundPermission,
    GameliftFleetResourceCreationLimitPolicy? resourceCreationLimitPolicy,
    GameliftFleetRuntimeConfiguration? runtimeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (buildId != null) 'build_id': buildId,
           if (description != null) 'description': description,
           'ec2_instance_type': ec2InstanceType,
           if (fleetType != null) 'fleet_type': fleetType,
           if (instanceRoleArn != null) 'instance_role_arn': instanceRoleArn,
           if (metricGroups != null) 'metric_groups': metricGroups,
           'name': name,
           if (newGameSessionProtectionPolicy != null)
             'new_game_session_protection_policy':
                 newGameSessionProtectionPolicy,
           if (region != null) 'region': region,
           if (scriptId != null) 'script_id': scriptId,
           if (tags != null) 'tags': tags,
           if (certificateConfiguration != null)
             'certificate_configuration': TfArg.literal(
               certificateConfiguration.encode(),
             ),
           if (ec2InboundPermission != null)
             'ec2_inbound_permission': TfArg.literal([
               for (final e in ec2InboundPermission) e.encode(),
             ]),
           if (resourceCreationLimitPolicy != null)
             'resource_creation_limit_policy': TfArg.literal(
               resourceCreationLimitPolicy.encode(),
             ),
           if (runtimeConfiguration != null)
             'runtime_configuration': TfArg.literal(
               runtimeConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftFleetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `build_arn` attribute.
  TfRef<String> get buildArn => TfRef.attribute<String>(this, 'build_arn');

  /// Reference to `log_paths` attribute.
  TfRef<List<String>> get logPaths =>
      TfRef.attribute<List<String>>(this, 'log_paths');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystem =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `script_arn` attribute.
  TfRef<String> get scriptArn => TfRef.attribute<String>(this, 'script_arn');
}

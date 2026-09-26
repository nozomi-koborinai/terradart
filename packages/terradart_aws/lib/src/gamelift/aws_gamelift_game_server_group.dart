// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_game_server_group`.
const Set<String> _awsGameliftGameServerGroupSensitive = <String>{};

/// Typed helper for the `auto_scaling_policy` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupAutoScalingPolicy {
  const GameliftGameServerGroupAutoScalingPolicy({
    this.estimatedInstanceWarmup,
    required this.targetTrackingConfiguration,
  });

  final TfArg<num>? estimatedInstanceWarmup;

  final GameliftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration
  targetTrackingConfiguration;

  Map<String, Object?> encode() => {
    if (estimatedInstanceWarmup != null)
      'estimated_instance_warmup': estimatedInstanceWarmup!.toTfJson(),
    'target_tracking_configuration': targetTrackingConfiguration.encode(),
  };
}

/// Typed helper for the `auto_scaling_policy.target_tracking_configuration` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration {
  const GameliftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration({
    required this.targetValue,
  });

  final TfArg<num> targetValue;

  Map<String, Object?> encode() => {'target_value': targetValue.toTfJson()};
}

/// Typed helper for the `instance_definition` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupInstanceDefinition {
  const GameliftGameServerGroupInstanceDefinition({
    required this.instanceType,
    this.weightedCapacity,
  });

  final TfArg<String> instanceType;

  final TfArg<String>? weightedCapacity;

  Map<String, Object?> encode() => {
    'instance_type': instanceType.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
  };
}

/// Typed helper for the `launch_template` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupLaunchTemplate {
  const GameliftGameServerGroupLaunchTemplate({
    this.id,
    this.name,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_game_server_group`.
final class AwsGameliftGameServerGroup extends Resource {
  static const String tfType = 'aws_gamelift_game_server_group';

  AwsGameliftGameServerGroup({
    required super.localName,
    TfArg<String>? balancingStrategy,
    required TfArg<String> gameServerGroupName,
    TfArg<String>? gameServerProtectionPolicy,
    required TfArg<num> maxSize,
    required TfArg<num> minSize,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSubnets,
    GameliftGameServerGroupAutoScalingPolicy? autoScalingPolicy,
    required List<GameliftGameServerGroupInstanceDefinition> instanceDefinition,
    required GameliftGameServerGroupLaunchTemplate launchTemplate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (balancingStrategy != null)
             'balancing_strategy': balancingStrategy,
           'game_server_group_name': gameServerGroupName,
           if (gameServerProtectionPolicy != null)
             'game_server_protection_policy': gameServerProtectionPolicy,
           'max_size': maxSize,
           'min_size': minSize,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (vpcSubnets != null) 'vpc_subnets': vpcSubnets,
           if (autoScalingPolicy != null)
             'auto_scaling_policy': TfArg.literal(autoScalingPolicy.encode()),
           'instance_definition': TfArg.literal([
             for (final e in instanceDefinition) e.encode(),
           ]),
           'launch_template': TfArg.literal(launchTemplate.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftGameServerGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_scaling_group_arn` attribute.
  TfRef<String> get autoScalingGroupArn =>
      TfRef.attribute<String>(this, 'auto_scaling_group_arn');
}

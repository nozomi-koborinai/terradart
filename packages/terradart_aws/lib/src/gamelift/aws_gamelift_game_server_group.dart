// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_game_server_group`.
const Set<String> _awsGameliftGameServerGroupSensitive = <String>{};

/// Gamelift Game Server Group Balancing enum for `balancing_strategy`.
enum GameliftGameServerGroupBalancingStrategy implements TerraformEnum {
  spotOnly('SPOT_ONLY'),
  spotPreferred('SPOT_PREFERRED'),
  onDemandOnly('ON_DEMAND_ONLY');

  const GameliftGameServerGroupBalancingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Gamelift Game Server Group Game Server Protection enum for `game_server_protection_policy`.
enum GameliftGameServerGroupGameServerProtectionPolicy
    implements TerraformEnum {
  noProtection('NO_PROTECTION'),
  fullProtection('FULL_PROTECTION');

  const GameliftGameServerGroupGameServerProtectionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<GameliftGameServerGroupInstanceDefinitionInstanceType>
  instanceType;

  final TfArg<String>? weightedCapacity;

  Map<String, Object?> encode() => {
    'instance_type': instanceType.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum GameliftGameServerGroupInstanceDefinitionInstanceType
    implements TerraformEnum {
  c4Large('c4.large'),
  c4Xlarge('c4.xlarge'),
  c4p2xlarge('c4.2xlarge'),
  c4p4xlarge('c4.4xlarge'),
  c4p8xlarge('c4.8xlarge'),
  c5Large('c5.large'),
  c5Xlarge('c5.xlarge'),
  c5p2xlarge('c5.2xlarge'),
  c5p4xlarge('c5.4xlarge'),
  c5p9xlarge('c5.9xlarge'),
  c5p12xlarge('c5.12xlarge'),
  c5p18xlarge('c5.18xlarge'),
  c5p24xlarge('c5.24xlarge'),
  c5aLarge('c5a.large'),
  c5aXlarge('c5a.xlarge'),
  c5a2xlarge('c5a.2xlarge'),
  c5a4xlarge('c5a.4xlarge'),
  c5a8xlarge('c5a.8xlarge'),
  c5a12xlarge('c5a.12xlarge'),
  c5a16xlarge('c5a.16xlarge'),
  c5a24xlarge('c5a.24xlarge'),
  c6gMedium('c6g.medium'),
  c6gLarge('c6g.large'),
  c6gXlarge('c6g.xlarge'),
  c6g2xlarge('c6g.2xlarge'),
  c6g4xlarge('c6g.4xlarge'),
  c6g8xlarge('c6g.8xlarge'),
  c6g12xlarge('c6g.12xlarge'),
  c6g16xlarge('c6g.16xlarge'),
  r4Large('r4.large'),
  r4Xlarge('r4.xlarge'),
  r4p2xlarge('r4.2xlarge'),
  r4p4xlarge('r4.4xlarge'),
  r4p8xlarge('r4.8xlarge'),
  r4p16xlarge('r4.16xlarge'),
  r5Large('r5.large'),
  r5Xlarge('r5.xlarge'),
  r5p2xlarge('r5.2xlarge'),
  r5p4xlarge('r5.4xlarge'),
  r5p8xlarge('r5.8xlarge'),
  r5p12xlarge('r5.12xlarge'),
  r5p16xlarge('r5.16xlarge'),
  r5p24xlarge('r5.24xlarge'),
  r5aLarge('r5a.large'),
  r5aXlarge('r5a.xlarge'),
  r5a2xlarge('r5a.2xlarge'),
  r5a4xlarge('r5a.4xlarge'),
  r5a8xlarge('r5a.8xlarge'),
  r5a12xlarge('r5a.12xlarge'),
  r5a16xlarge('r5a.16xlarge'),
  r5a24xlarge('r5a.24xlarge'),
  r6gMedium('r6g.medium'),
  r6gLarge('r6g.large'),
  r6gXlarge('r6g.xlarge'),
  r6g2xlarge('r6g.2xlarge'),
  r6g4xlarge('r6g.4xlarge'),
  r6g8xlarge('r6g.8xlarge'),
  r6g12xlarge('r6g.12xlarge'),
  r6g16xlarge('r6g.16xlarge'),
  m4Large('m4.large'),
  m4Xlarge('m4.xlarge'),
  m4p2xlarge('m4.2xlarge'),
  m4p4xlarge('m4.4xlarge'),
  m4p10xlarge('m4.10xlarge'),
  m5Large('m5.large'),
  m5Xlarge('m5.xlarge'),
  m5p2xlarge('m5.2xlarge'),
  m5p4xlarge('m5.4xlarge'),
  m5p8xlarge('m5.8xlarge'),
  m5p12xlarge('m5.12xlarge'),
  m5p16xlarge('m5.16xlarge'),
  m5p24xlarge('m5.24xlarge'),
  m5aLarge('m5a.large'),
  m5aXlarge('m5a.xlarge'),
  m5a2xlarge('m5a.2xlarge'),
  m5a4xlarge('m5a.4xlarge'),
  m5a8xlarge('m5a.8xlarge'),
  m5a12xlarge('m5a.12xlarge'),
  m5a16xlarge('m5a.16xlarge'),
  m5a24xlarge('m5a.24xlarge'),
  m6gMedium('m6g.medium'),
  m6gLarge('m6g.large'),
  m6gXlarge('m6g.xlarge'),
  m6g2xlarge('m6g.2xlarge'),
  m6g4xlarge('m6g.4xlarge'),
  m6g8xlarge('m6g.8xlarge'),
  m6g12xlarge('m6g.12xlarge'),
  m6g16xlarge('m6g.16xlarge');

  const GameliftGameServerGroupInstanceDefinitionInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_template` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupLaunchTemplate {
  const GameliftGameServerGroupLaunchTemplate({this.idOrName, this.version});

  final GameliftGameServerGroupLaunchTemplateIdOrName? idOrName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...?idOrName?.encode(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_gamelift_game_server_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class GameliftGameServerGroupLaunchTemplateIdOrName {
  const GameliftGameServerGroupLaunchTemplateIdOrName();

  /// Sets `id`.
  const factory GameliftGameServerGroupLaunchTemplateIdOrName.id(
    TfArg<String> id,
  ) = GameliftGameServerGroupLaunchTemplateIdOrNameId;

  /// Sets `name`.
  const factory GameliftGameServerGroupLaunchTemplateIdOrName.name(
    TfArg<String> name,
  ) = GameliftGameServerGroupLaunchTemplateIdOrNameName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GameliftGameServerGroupLaunchTemplateIdOrName.id] choice: sets `id`.
final class GameliftGameServerGroupLaunchTemplateIdOrNameId
    extends GameliftGameServerGroupLaunchTemplateIdOrName {
  const GameliftGameServerGroupLaunchTemplateIdOrNameId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [GameliftGameServerGroupLaunchTemplateIdOrName.name] choice: sets `name`.
final class GameliftGameServerGroupLaunchTemplateIdOrNameName
    extends GameliftGameServerGroupLaunchTemplateIdOrName {
  const GameliftGameServerGroupLaunchTemplateIdOrNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_gamelift_game_server_group`.
final class AwsGameliftGameServerGroup extends Resource {
  static const String tfType = 'aws_gamelift_game_server_group';

  AwsGameliftGameServerGroup({
    required super.localName,
    TfArg<GameliftGameServerGroupBalancingStrategy>? balancingStrategy,
    required TfArg<String> gameServerGroupName,
    TfArg<GameliftGameServerGroupGameServerProtectionPolicy>?
    gameServerProtectionPolicy,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftGameServerGroup>`.
  RefTo<AwsGameliftGameServerGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_scaling_group_arn` attribute.
  TfRef<String> get autoScalingGroupArn =>
      TfRef.attribute<String>(this, 'auto_scaling_group_arn');
}

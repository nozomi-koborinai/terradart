// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_gamelift_game_server_group`.
const Set<String> _awsGameliftGameServerGroupSensitive = <String>{};

/// Gamelift Game Server Group Balancing enum for `balancing_strategy`.
extension type const GameliftGameServerGroupBalancingStrategy._(TfArg<String> _)
    implements TfArg<String> {
  GameliftGameServerGroupBalancingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  GameliftGameServerGroupBalancingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftGameServerGroupBalancingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const spotOnly = GameliftGameServerGroupBalancingStrategy._(
    TfArgLiteral('SPOT_ONLY'),
  );
  static const spotPreferred = GameliftGameServerGroupBalancingStrategy._(
    TfArgLiteral('SPOT_PREFERRED'),
  );
  static const onDemandOnly = GameliftGameServerGroupBalancingStrategy._(
    TfArgLiteral('ON_DEMAND_ONLY'),
  );

  static const List<GameliftGameServerGroupBalancingStrategy> values = [
    spotOnly,
    spotPreferred,
    onDemandOnly,
  ];
}

/// Gamelift Game Server Group Game Server Protection enum for `game_server_protection_policy`.
extension type const GameliftGameServerGroupGameServerProtectionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  GameliftGameServerGroupGameServerProtectionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  GameliftGameServerGroupGameServerProtectionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftGameServerGroupGameServerProtectionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const noProtection =
      GameliftGameServerGroupGameServerProtectionPolicy._(
        TfArgLiteral('NO_PROTECTION'),
      );
  static const fullProtection =
      GameliftGameServerGroupGameServerProtectionPolicy._(
        TfArgLiteral('FULL_PROTECTION'),
      );

  static const List<GameliftGameServerGroupGameServerProtectionPolicy> values =
      [noProtection, fullProtection];
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

  final GameliftGameServerGroupTargetTrackingConfiguration
  targetTrackingConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'estimated_instance_warmup': ?estimatedInstanceWarmup?.toTfJson(),
    'target_tracking_configuration': targetTrackingConfiguration.encode(),
  };
}

/// Typed helper for the `auto_scaling_policy.target_tracking_configuration` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupTargetTrackingConfiguration {
  const GameliftGameServerGroupTargetTrackingConfiguration({
    required this.targetValue,
  });

  final TfArg<num> targetValue;

  @internal
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

  final GameliftGameServerGroupInstanceType instanceType;

  final TfArg<String>? weightedCapacity;

  @internal
  Map<String, Object?> encode() => {
    'instance_type': instanceType.toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const GameliftGameServerGroupInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  GameliftGameServerGroupInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  GameliftGameServerGroupInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftGameServerGroupInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const c4Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c4.large'),
  );
  static const c4Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c4.xlarge'),
  );
  static const c4p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c4.2xlarge'),
  );
  static const c4p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c4.4xlarge'),
  );
  static const c4p8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c4.8xlarge'),
  );
  static const c5Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.large'),
  );
  static const c5Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.xlarge'),
  );
  static const c5p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.2xlarge'),
  );
  static const c5p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.4xlarge'),
  );
  static const c5p9xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.9xlarge'),
  );
  static const c5p12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.12xlarge'),
  );
  static const c5p18xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.18xlarge'),
  );
  static const c5p24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5.24xlarge'),
  );
  static const c5aLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.large'),
  );
  static const c5aXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.xlarge'),
  );
  static const c5a2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.2xlarge'),
  );
  static const c5a4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.4xlarge'),
  );
  static const c5a8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.8xlarge'),
  );
  static const c5a12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.12xlarge'),
  );
  static const c5a16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.16xlarge'),
  );
  static const c5a24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c5a.24xlarge'),
  );
  static const c6gMedium = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.medium'),
  );
  static const c6gLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.large'),
  );
  static const c6gXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.xlarge'),
  );
  static const c6g2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.2xlarge'),
  );
  static const c6g4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.4xlarge'),
  );
  static const c6g8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.8xlarge'),
  );
  static const c6g12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.12xlarge'),
  );
  static const c6g16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('c6g.16xlarge'),
  );
  static const r4Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.large'),
  );
  static const r4Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.xlarge'),
  );
  static const r4p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.2xlarge'),
  );
  static const r4p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.4xlarge'),
  );
  static const r4p8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.8xlarge'),
  );
  static const r4p16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r4.16xlarge'),
  );
  static const r5Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.large'),
  );
  static const r5Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.xlarge'),
  );
  static const r5p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.2xlarge'),
  );
  static const r5p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.4xlarge'),
  );
  static const r5p8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.8xlarge'),
  );
  static const r5p12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.12xlarge'),
  );
  static const r5p16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.16xlarge'),
  );
  static const r5p24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5.24xlarge'),
  );
  static const r5aLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.large'),
  );
  static const r5aXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.xlarge'),
  );
  static const r5a2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.2xlarge'),
  );
  static const r5a4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.4xlarge'),
  );
  static const r5a8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.8xlarge'),
  );
  static const r5a12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.12xlarge'),
  );
  static const r5a16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.16xlarge'),
  );
  static const r5a24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r5a.24xlarge'),
  );
  static const r6gMedium = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.medium'),
  );
  static const r6gLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.large'),
  );
  static const r6gXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.xlarge'),
  );
  static const r6g2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.2xlarge'),
  );
  static const r6g4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.4xlarge'),
  );
  static const r6g8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.8xlarge'),
  );
  static const r6g12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.12xlarge'),
  );
  static const r6g16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('r6g.16xlarge'),
  );
  static const m4Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m4.large'),
  );
  static const m4Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m4.xlarge'),
  );
  static const m4p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m4.2xlarge'),
  );
  static const m4p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m4.4xlarge'),
  );
  static const m4p10xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m4.10xlarge'),
  );
  static const m5Large = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.large'),
  );
  static const m5Xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.xlarge'),
  );
  static const m5p2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.2xlarge'),
  );
  static const m5p4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.4xlarge'),
  );
  static const m5p8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.8xlarge'),
  );
  static const m5p12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.12xlarge'),
  );
  static const m5p16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.16xlarge'),
  );
  static const m5p24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5.24xlarge'),
  );
  static const m5aLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.large'),
  );
  static const m5aXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.xlarge'),
  );
  static const m5a2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.2xlarge'),
  );
  static const m5a4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.4xlarge'),
  );
  static const m5a8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.8xlarge'),
  );
  static const m5a12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.12xlarge'),
  );
  static const m5a16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.16xlarge'),
  );
  static const m5a24xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m5a.24xlarge'),
  );
  static const m6gMedium = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.medium'),
  );
  static const m6gLarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.large'),
  );
  static const m6gXlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.xlarge'),
  );
  static const m6g2xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.2xlarge'),
  );
  static const m6g4xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.4xlarge'),
  );
  static const m6g8xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.8xlarge'),
  );
  static const m6g12xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.12xlarge'),
  );
  static const m6g16xlarge = GameliftGameServerGroupInstanceType._(
    TfArgLiteral('m6g.16xlarge'),
  );

  static const List<GameliftGameServerGroupInstanceType> values = [
    c4Large,
    c4Xlarge,
    c4p2xlarge,
    c4p4xlarge,
    c4p8xlarge,
    c5Large,
    c5Xlarge,
    c5p2xlarge,
    c5p4xlarge,
    c5p9xlarge,
    c5p12xlarge,
    c5p18xlarge,
    c5p24xlarge,
    c5aLarge,
    c5aXlarge,
    c5a2xlarge,
    c5a4xlarge,
    c5a8xlarge,
    c5a12xlarge,
    c5a16xlarge,
    c5a24xlarge,
    c6gMedium,
    c6gLarge,
    c6gXlarge,
    c6g2xlarge,
    c6g4xlarge,
    c6g8xlarge,
    c6g12xlarge,
    c6g16xlarge,
    r4Large,
    r4Xlarge,
    r4p2xlarge,
    r4p4xlarge,
    r4p8xlarge,
    r4p16xlarge,
    r5Large,
    r5Xlarge,
    r5p2xlarge,
    r5p4xlarge,
    r5p8xlarge,
    r5p12xlarge,
    r5p16xlarge,
    r5p24xlarge,
    r5aLarge,
    r5aXlarge,
    r5a2xlarge,
    r5a4xlarge,
    r5a8xlarge,
    r5a12xlarge,
    r5a16xlarge,
    r5a24xlarge,
    r6gMedium,
    r6gLarge,
    r6gXlarge,
    r6g2xlarge,
    r6g4xlarge,
    r6g8xlarge,
    r6g12xlarge,
    r6g16xlarge,
    m4Large,
    m4Xlarge,
    m4p2xlarge,
    m4p4xlarge,
    m4p10xlarge,
    m5Large,
    m5Xlarge,
    m5p2xlarge,
    m5p4xlarge,
    m5p8xlarge,
    m5p12xlarge,
    m5p16xlarge,
    m5p24xlarge,
    m5aLarge,
    m5aXlarge,
    m5a2xlarge,
    m5a4xlarge,
    m5a8xlarge,
    m5a12xlarge,
    m5a16xlarge,
    m5a24xlarge,
    m6gMedium,
    m6gLarge,
    m6gXlarge,
    m6g2xlarge,
    m6g4xlarge,
    m6g8xlarge,
    m6g12xlarge,
    m6g16xlarge,
  ];
}

/// Typed helper for the `launch_template` block of
/// `aws_gamelift_game_server_group` (derived from provider schema).
@immutable
final class GameliftGameServerGroupLaunchTemplate {
  const GameliftGameServerGroupLaunchTemplate({this.identifier, this.version});

  final GameliftGameServerGroupIdentifier? identifier;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    ...?identifier?.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_gamelift_game_server_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class GameliftGameServerGroupIdentifier {
  const GameliftGameServerGroupIdentifier();

  /// Sets `id`.
  const factory GameliftGameServerGroupIdentifier.id(TfArg<String> id) =
      GameliftGameServerGroupIdentifierId;

  /// Sets `name`.
  const factory GameliftGameServerGroupIdentifier.name(TfArg<String> name) =
      GameliftGameServerGroupIdentifierName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [GameliftGameServerGroupIdentifier.id] choice: sets `id`.
final class GameliftGameServerGroupIdentifierId
    extends GameliftGameServerGroupIdentifier {
  const GameliftGameServerGroupIdentifierId(this.id);

  final TfArg<String> id;

  @internal
  @override
  String get blockKey => 'id';

  @internal
  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [GameliftGameServerGroupIdentifier.name] choice: sets `name`.
final class GameliftGameServerGroupIdentifierName
    extends GameliftGameServerGroupIdentifier {
  const GameliftGameServerGroupIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_gamelift_game_server_group`.
final class AwsGameliftGameServerGroup extends Resource {
  static const String tfType = 'aws_gamelift_game_server_group';

  AwsGameliftGameServerGroup(
    super.localName, {
    GameliftGameServerGroupBalancingStrategy? balancingStrategy,
    required TfArg<String> gameServerGroupName,
    GameliftGameServerGroupGameServerProtectionPolicy?
    gameServerProtectionPolicy,
    required TfArg<num> maxSize,
    required TfArg<num> minSize,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'balancing_strategy': ?balancingStrategy,
           'game_server_group_name': gameServerGroupName,
           'game_server_protection_policy': ?gameServerProtectionPolicy,
           'max_size': maxSize,
           'min_size': minSize,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'vpc_subnets': ?vpcSubnets,
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

  /// Reference to `balancing_strategy` attribute.
  TfRef<String> get balancingStrategy =>
      TfRef.attribute<String>(this, 'balancing_strategy');

  /// Reference to `game_server_group_name` attribute.
  TfRef<String> get gameServerGroupName =>
      TfRef.attribute<String>(this, 'game_server_group_name');

  /// Reference to `game_server_protection_policy` attribute.
  TfRef<String> get gameServerProtectionPolicy =>
      TfRef.attribute<String>(this, 'game_server_protection_policy');

  /// Reference to `max_size` attribute.
  TfRef<num> get maxSize => TfRef.attribute<num>(this, 'max_size');

  /// Reference to `min_size` attribute.
  TfRef<num> get minSize => TfRef.attribute<num>(this, 'min_size');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_subnets` attribute.
  TfRef<List<String>> get vpcSubnets =>
      TfRef.attribute<List<String>>(this, 'vpc_subnets');
}

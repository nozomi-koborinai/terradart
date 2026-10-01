// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_gateway_rule`.
const Set<String> _awsBedrockagentcoreGatewayRuleSensitive = <String>{};

/// Exactly one of `configuration_bundle`, `route_to_target` on the `action` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.configurationBundle(...)`.
sealed class BedrockagentcoreGatewayRuleAction {
  const BedrockagentcoreGatewayRuleAction();

  /// Sets `configuration_bundle`.
  const factory BedrockagentcoreGatewayRuleAction.configurationBundle(
    List<BedrockagentcoreGatewayRuleConfigurationBundle> configurationBundle,
  ) = BedrockagentcoreGatewayRuleActionConfigurationBundle;

  /// Sets `route_to_target`.
  const factory BedrockagentcoreGatewayRuleAction.routeToTarget(
    List<BedrockagentcoreGatewayRuleRouteToTarget> routeToTarget,
  ) = BedrockagentcoreGatewayRuleActionRouteToTarget;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleAction.configurationBundle] choice: sets `configuration_bundle`.
final class BedrockagentcoreGatewayRuleActionConfigurationBundle
    extends BedrockagentcoreGatewayRuleAction {
  const BedrockagentcoreGatewayRuleActionConfigurationBundle(
    this.configurationBundle,
  );

  final List<BedrockagentcoreGatewayRuleConfigurationBundle>
  configurationBundle;

  @override
  String get blockKey => 'configuration_bundle';

  @override
  Map<String, Object?> encode() => {
    'configuration_bundle': [for (final e in configurationBundle) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleAction.routeToTarget] choice: sets `route_to_target`.
final class BedrockagentcoreGatewayRuleActionRouteToTarget
    extends BedrockagentcoreGatewayRuleAction {
  const BedrockagentcoreGatewayRuleActionRouteToTarget(this.routeToTarget);

  final List<BedrockagentcoreGatewayRuleRouteToTarget> routeToTarget;

  @override
  String get blockKey => 'route_to_target';

  @override
  Map<String, Object?> encode() => {
    'route_to_target': [for (final e in routeToTarget) e.encode()],
  };
}

/// Exactly one of `static_override`, `weighted_override` on the `action.configuration_bundle` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticOverride(...)`.
sealed class BedrockagentcoreGatewayRuleConfigurationBundle {
  const BedrockagentcoreGatewayRuleConfigurationBundle();

  /// Sets `static_override`.
  const factory BedrockagentcoreGatewayRuleConfigurationBundle.staticOverride(
    List<BedrockagentcoreGatewayRuleStaticOverride> staticOverride,
  ) = BedrockagentcoreGatewayRuleConfigurationBundleStaticOverride;

  /// Sets `weighted_override`.
  const factory BedrockagentcoreGatewayRuleConfigurationBundle.weightedOverride(
    List<BedrockagentcoreGatewayRuleWeightedOverride> weightedOverride,
  ) = BedrockagentcoreGatewayRuleConfigurationBundleWeightedOverride;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleConfigurationBundle.staticOverride] choice: sets `static_override`.
final class BedrockagentcoreGatewayRuleConfigurationBundleStaticOverride
    extends BedrockagentcoreGatewayRuleConfigurationBundle {
  const BedrockagentcoreGatewayRuleConfigurationBundleStaticOverride(
    this.staticOverride,
  );

  final List<BedrockagentcoreGatewayRuleStaticOverride> staticOverride;

  @override
  String get blockKey => 'static_override';

  @override
  Map<String, Object?> encode() => {
    'static_override': [for (final e in staticOverride) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleConfigurationBundle.weightedOverride] choice: sets `weighted_override`.
final class BedrockagentcoreGatewayRuleConfigurationBundleWeightedOverride
    extends BedrockagentcoreGatewayRuleConfigurationBundle {
  const BedrockagentcoreGatewayRuleConfigurationBundleWeightedOverride(
    this.weightedOverride,
  );

  final List<BedrockagentcoreGatewayRuleWeightedOverride> weightedOverride;

  @override
  String get blockKey => 'weighted_override';

  @override
  Map<String, Object?> encode() => {
    'weighted_override': [for (final e in weightedOverride) e.encode()],
  };
}

/// Typed helper for the `action.configuration_bundle.static_override` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleStaticOverride {
  const BedrockagentcoreGatewayRuleStaticOverride({
    required this.bundleArn,
    required this.bundleVersion,
  });

  final TfArg<String> bundleArn;

  final TfArg<String> bundleVersion;

  Map<String, Object?> encode() => {
    'bundle_arn': bundleArn.toTfJson(),
    'bundle_version': bundleVersion.toTfJson(),
  };
}

/// Typed helper for the `action.configuration_bundle.weighted_override` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleWeightedOverride {
  const BedrockagentcoreGatewayRuleWeightedOverride({this.trafficSplit});

  final List<BedrockagentcoreGatewayRuleWeightedOverrideTrafficSplit>?
  trafficSplit;

  Map<String, Object?> encode() => {
    if (trafficSplit != null)
      'traffic_split': [for (final e in trafficSplit!) e.encode()],
  };
}

/// Typed helper for the `action.configuration_bundle.weighted_override.traffic_split` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleWeightedOverrideTrafficSplit {
  const BedrockagentcoreGatewayRuleWeightedOverrideTrafficSplit({
    this.description,
    this.metadata,
    required this.name,
    required this.weight,
    this.configurationBundle,
  });

  final TfArg<String>? description;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String> name;

  final TfArg<num> weight;

  final List<BedrockagentcoreGatewayRuleTrafficSplitConfigurationBundle>?
  configurationBundle;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'name': name.toTfJson(),
    'weight': weight.toTfJson(),
    if (configurationBundle != null)
      'configuration_bundle': [
        for (final e in configurationBundle!) e.encode(),
      ],
  };
}

/// Typed helper for the `action.configuration_bundle.weighted_override.traffic_split.configuration_bundle` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleTrafficSplitConfigurationBundle {
  const BedrockagentcoreGatewayRuleTrafficSplitConfigurationBundle({
    required this.bundleArn,
    required this.bundleVersion,
  });

  final TfArg<String> bundleArn;

  final TfArg<String> bundleVersion;

  Map<String, Object?> encode() => {
    'bundle_arn': bundleArn.toTfJson(),
    'bundle_version': bundleVersion.toTfJson(),
  };
}

/// Exactly one of `static_route`, `weighted_route` on the `action.route_to_target` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticRoute(...)`.
sealed class BedrockagentcoreGatewayRuleRouteToTarget {
  const BedrockagentcoreGatewayRuleRouteToTarget();

  /// Sets `static_route`.
  const factory BedrockagentcoreGatewayRuleRouteToTarget.staticRoute(
    List<BedrockagentcoreGatewayRuleStaticRoute> staticRoute,
  ) = BedrockagentcoreGatewayRuleRouteToTargetStaticRoute;

  /// Sets `weighted_route`.
  const factory BedrockagentcoreGatewayRuleRouteToTarget.weightedRoute(
    List<BedrockagentcoreGatewayRuleWeightedRoute> weightedRoute,
  ) = BedrockagentcoreGatewayRuleRouteToTargetWeightedRoute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleRouteToTarget.staticRoute] choice: sets `static_route`.
final class BedrockagentcoreGatewayRuleRouteToTargetStaticRoute
    extends BedrockagentcoreGatewayRuleRouteToTarget {
  const BedrockagentcoreGatewayRuleRouteToTargetStaticRoute(this.staticRoute);

  final List<BedrockagentcoreGatewayRuleStaticRoute> staticRoute;

  @override
  String get blockKey => 'static_route';

  @override
  Map<String, Object?> encode() => {
    'static_route': [for (final e in staticRoute) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleRouteToTarget.weightedRoute] choice: sets `weighted_route`.
final class BedrockagentcoreGatewayRuleRouteToTargetWeightedRoute
    extends BedrockagentcoreGatewayRuleRouteToTarget {
  const BedrockagentcoreGatewayRuleRouteToTargetWeightedRoute(
    this.weightedRoute,
  );

  final List<BedrockagentcoreGatewayRuleWeightedRoute> weightedRoute;

  @override
  String get blockKey => 'weighted_route';

  @override
  Map<String, Object?> encode() => {
    'weighted_route': [for (final e in weightedRoute) e.encode()],
  };
}

/// Typed helper for the `action.route_to_target.static_route` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleStaticRoute {
  const BedrockagentcoreGatewayRuleStaticRoute({required this.targetName});

  final TfArg<String> targetName;

  Map<String, Object?> encode() => {'target_name': targetName.toTfJson()};
}

/// Typed helper for the `action.route_to_target.weighted_route` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleWeightedRoute {
  const BedrockagentcoreGatewayRuleWeightedRoute({this.trafficSplit});

  final List<BedrockagentcoreGatewayRuleWeightedRouteTrafficSplit>?
  trafficSplit;

  Map<String, Object?> encode() => {
    if (trafficSplit != null)
      'traffic_split': [for (final e in trafficSplit!) e.encode()],
  };
}

/// Typed helper for the `action.route_to_target.weighted_route.traffic_split` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleWeightedRouteTrafficSplit {
  const BedrockagentcoreGatewayRuleWeightedRouteTrafficSplit({
    this.description,
    this.metadata,
    required this.name,
    required this.targetName,
    required this.weight,
  });

  final TfArg<String>? description;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String> name;

  final TfArg<String> targetName;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'name': name.toTfJson(),
    'target_name': targetName.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Exactly one of `match_paths`, `match_principals` on the `condition` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.matchPaths(...)`.
sealed class BedrockagentcoreGatewayRuleCondition {
  const BedrockagentcoreGatewayRuleCondition();

  /// Sets `match_paths`.
  const factory BedrockagentcoreGatewayRuleCondition.matchPaths(
    List<BedrockagentcoreGatewayRuleMatchPaths> matchPaths,
  ) = BedrockagentcoreGatewayRuleConditionMatchPaths;

  /// Sets `match_principals`.
  const factory BedrockagentcoreGatewayRuleCondition.matchPrincipals(
    List<BedrockagentcoreGatewayRuleMatchPrincipals> matchPrincipals,
  ) = BedrockagentcoreGatewayRuleConditionMatchPrincipals;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleCondition.matchPaths] choice: sets `match_paths`.
final class BedrockagentcoreGatewayRuleConditionMatchPaths
    extends BedrockagentcoreGatewayRuleCondition {
  const BedrockagentcoreGatewayRuleConditionMatchPaths(this.matchPaths);

  final List<BedrockagentcoreGatewayRuleMatchPaths> matchPaths;

  @override
  String get blockKey => 'match_paths';

  @override
  Map<String, Object?> encode() => {
    'match_paths': [for (final e in matchPaths) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleCondition.matchPrincipals] choice: sets `match_principals`.
final class BedrockagentcoreGatewayRuleConditionMatchPrincipals
    extends BedrockagentcoreGatewayRuleCondition {
  const BedrockagentcoreGatewayRuleConditionMatchPrincipals(
    this.matchPrincipals,
  );

  final List<BedrockagentcoreGatewayRuleMatchPrincipals> matchPrincipals;

  @override
  String get blockKey => 'match_principals';

  @override
  Map<String, Object?> encode() => {
    'match_principals': [for (final e in matchPrincipals) e.encode()],
  };
}

/// Typed helper for the `condition.match_paths` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleMatchPaths {
  const BedrockagentcoreGatewayRuleMatchPaths({required this.anyOf});

  final TfArg<List<String>> anyOf;

  Map<String, Object?> encode() => {'any_of': anyOf.toTfJson()};
}

/// Typed helper for the `condition.match_principals` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleMatchPrincipals {
  const BedrockagentcoreGatewayRuleMatchPrincipals({this.anyOf});

  final List<BedrockagentcoreGatewayRuleAnyOf>? anyOf;

  Map<String, Object?> encode() => {
    if (anyOf != null) 'any_of': [for (final e in anyOf!) e.encode()],
  };
}

/// Typed helper for the `condition.match_principals.any_of` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleAnyOf {
  const BedrockagentcoreGatewayRuleAnyOf({this.iamPrincipal});

  final List<BedrockagentcoreGatewayRuleIamPrincipal>? iamPrincipal;

  Map<String, Object?> encode() => {
    if (iamPrincipal != null)
      'iam_principal': [for (final e in iamPrincipal!) e.encode()],
  };
}

/// Typed helper for the `condition.match_principals.any_of.iam_principal` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleIamPrincipal {
  const BedrockagentcoreGatewayRuleIamPrincipal({
    required this.arn,
    this.operator,
  });

  final TfArg<String> arn;

  final TfArg<BedrockagentcoreGatewayRuleOperator>? operator;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'operator': ?operator?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
enum BedrockagentcoreGatewayRuleOperator implements TerraformEnum {
  stringequals('StringEquals'),
  stringlike('StringLike');

  const BedrockagentcoreGatewayRuleOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagentcore_gateway_rule`.
final class AwsBedrockagentcoreGatewayRule extends Resource {
  static const String tfType = 'aws_bedrockagentcore_gateway_rule';

  AwsBedrockagentcoreGatewayRule({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> gatewayIdentifier,
    required TfArg<num> priority,
    TfArg<String>? region,
    List<BedrockagentcoreGatewayRuleAction>? action,
    List<BedrockagentcoreGatewayRuleCondition>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'gateway_identifier': gatewayIdentifier,
           'priority': priority,
           'region': ?region,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (condition != null)
             'condition': TfArg.literal([
               for (final e in condition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreGatewayRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreGatewayRule>`.
  RefTo<AwsBedrockagentcoreGatewayRule> get ref => RefTo.of(this);

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `system` attribute.
  TfRef<List<Map<String, Object?>>> get system =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'system');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `gateway_identifier` attribute.
  TfRef<String> get gatewayIdentifierRef =>
      TfRef.attribute<String>(this, 'gateway_identifier');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}

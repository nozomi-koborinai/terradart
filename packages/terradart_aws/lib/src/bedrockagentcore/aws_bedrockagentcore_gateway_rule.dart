// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_gateway_rule`.
const Set<String> _awsBedrockagentcoreGatewayRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleAction {
  const BedrockagentcoreGatewayRuleAction({
    required this.configurationBundleOrRouteToTarget,
  });

  final BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget
  configurationBundleOrRouteToTarget;

  Map<String, Object?> encode() => {
    ...configurationBundleOrRouteToTarget.encode(),
  };
}

/// Exactly one of `configuration_bundle`, `route_to_target` on the `action` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.configurationBundle(...)`.
sealed class BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget();

  /// Sets `configuration_bundle`.
  const factory BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget.configurationBundle(
    List<BedrockagentcoreGatewayRuleActionConfigurationBundle>
    configurationBundle,
  ) = BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetConfigurationBundle;

  /// Sets `route_to_target`.
  const factory BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget.routeToTarget(
    List<BedrockagentcoreGatewayRuleActionRouteToTarget> routeToTarget,
  ) = BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetRouteToTarget;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget.configurationBundle] choice: sets `configuration_bundle`.
final class BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetConfigurationBundle
    extends
        BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetConfigurationBundle(
    this.configurationBundle,
  );

  final List<BedrockagentcoreGatewayRuleActionConfigurationBundle>
  configurationBundle;

  @override
  String get blockKey => 'configuration_bundle';

  @override
  Map<String, Object?> encode() => {
    'configuration_bundle': [for (final e in configurationBundle) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget.routeToTarget] choice: sets `route_to_target`.
final class BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetRouteToTarget
    extends
        BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTarget {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleOrRouteToTargetRouteToTarget(
    this.routeToTarget,
  );

  final List<BedrockagentcoreGatewayRuleActionRouteToTarget> routeToTarget;

  @override
  String get blockKey => 'route_to_target';

  @override
  Map<String, Object?> encode() => {
    'route_to_target': [for (final e in routeToTarget) e.encode()],
  };
}

/// Typed helper for the `action.configuration_bundle` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleActionConfigurationBundle {
  const BedrockagentcoreGatewayRuleActionConfigurationBundle({
    required this.staticOverrideOrWeightedOverride,
  });

  final BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride
  staticOverrideOrWeightedOverride;

  Map<String, Object?> encode() => {
    ...staticOverrideOrWeightedOverride.encode(),
  };
}

/// Exactly one of `static_override`, `weighted_override` on the `action.configuration_bundle` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticOverride(...)`.
sealed class BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride();

  /// Sets `static_override`.
  const factory BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride.staticOverride(
    List<BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverride>
    staticOverride,
  ) = BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideStaticOverride;

  /// Sets `weighted_override`.
  const factory BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride.weightedOverride(
    List<BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverride>
    weightedOverride,
  ) = BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideWeightedOverride;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride.staticOverride] choice: sets `static_override`.
final class BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideStaticOverride
    extends
        BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideStaticOverride(
    this.staticOverride,
  );

  final List<BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverride>
  staticOverride;

  @override
  String get blockKey => 'static_override';

  @override
  Map<String, Object?> encode() => {
    'static_override': [for (final e in staticOverride) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride.weightedOverride] choice: sets `weighted_override`.
final class BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideWeightedOverride
    extends
        BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverride {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverrideOrWeightedOverrideWeightedOverride(
    this.weightedOverride,
  );

  final List<
    BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverride
  >
  weightedOverride;

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
final class BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverride {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleStaticOverride({
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
final class BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverride {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverride({
    this.trafficSplit,
  });

  final List<
    BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit
  >?
  trafficSplit;

  Map<String, Object?> encode() => {
    if (trafficSplit != null)
      'traffic_split': [for (final e in trafficSplit!) e.encode()],
  };
}

/// Typed helper for the `action.configuration_bundle.weighted_override.traffic_split` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplit({
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

  final List<
    BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle
  >?
  configurationBundle;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
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
final class BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle {
  const BedrockagentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle({
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

/// Typed helper for the `action.route_to_target` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleActionRouteToTarget {
  const BedrockagentcoreGatewayRuleActionRouteToTarget({
    required this.staticRouteOrWeightedRoute,
  });

  final BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute
  staticRouteOrWeightedRoute;

  Map<String, Object?> encode() => {...staticRouteOrWeightedRoute.encode()};
}

/// Exactly one of `static_route`, `weighted_route` on the `action.route_to_target` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticRoute(...)`.
sealed class BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute {
  const BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute();

  /// Sets `static_route`.
  const factory BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute.staticRoute(
    List<BedrockagentcoreGatewayRuleActionRouteToTargetStaticRoute> staticRoute,
  ) = BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteStaticRoute;

  /// Sets `weighted_route`.
  const factory BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute.weightedRoute(
    List<BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRoute>
    weightedRoute,
  ) = BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteWeightedRoute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute.staticRoute] choice: sets `static_route`.
final class BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteStaticRoute
    extends
        BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute {
  const BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteStaticRoute(
    this.staticRoute,
  );

  final List<BedrockagentcoreGatewayRuleActionRouteToTargetStaticRoute>
  staticRoute;

  @override
  String get blockKey => 'static_route';

  @override
  Map<String, Object?> encode() => {
    'static_route': [for (final e in staticRoute) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute.weightedRoute] choice: sets `weighted_route`.
final class BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteWeightedRoute
    extends
        BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRoute {
  const BedrockagentcoreGatewayRuleActionRouteToTargetStaticRouteOrWeightedRouteWeightedRoute(
    this.weightedRoute,
  );

  final List<BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRoute>
  weightedRoute;

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
final class BedrockagentcoreGatewayRuleActionRouteToTargetStaticRoute {
  const BedrockagentcoreGatewayRuleActionRouteToTargetStaticRoute({
    required this.targetName,
  });

  final TfArg<String> targetName;

  Map<String, Object?> encode() => {'target_name': targetName.toTfJson()};
}

/// Typed helper for the `action.route_to_target.weighted_route` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRoute {
  const BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRoute({
    this.trafficSplit,
  });

  final List<
    BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit
  >?
  trafficSplit;

  Map<String, Object?> encode() => {
    if (trafficSplit != null)
      'traffic_split': [for (final e in trafficSplit!) e.encode()],
  };
}

/// Typed helper for the `action.route_to_target.weighted_route.traffic_split` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit {
  const BedrockagentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplit({
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
    if (description != null) 'description': description!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    'name': name.toTfJson(),
    'target_name': targetName.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `condition` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleCondition {
  const BedrockagentcoreGatewayRuleCondition({
    required this.matchPathsOrMatchPrincipals,
  });

  final BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals
  matchPathsOrMatchPrincipals;

  Map<String, Object?> encode() => {...matchPathsOrMatchPrincipals.encode()};
}

/// Exactly one of `match_paths`, `match_principals` on the `condition` block of `aws_bedrockagentcore_gateway_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.matchPaths(...)`.
sealed class BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals {
  const BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals();

  /// Sets `match_paths`.
  const factory BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals.matchPaths(
    List<BedrockagentcoreGatewayRuleConditionMatchPaths> matchPaths,
  ) = BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPaths;

  /// Sets `match_principals`.
  const factory BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals.matchPrincipals(
    List<BedrockagentcoreGatewayRuleConditionMatchPrincipals> matchPrincipals,
  ) = BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPrincipals;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals.matchPaths] choice: sets `match_paths`.
final class BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPaths
    extends BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals {
  const BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPaths(
    this.matchPaths,
  );

  final List<BedrockagentcoreGatewayRuleConditionMatchPaths> matchPaths;

  @override
  String get blockKey => 'match_paths';

  @override
  Map<String, Object?> encode() => {
    'match_paths': [for (final e in matchPaths) e.encode()],
  };
}

/// The [BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals.matchPrincipals] choice: sets `match_principals`.
final class BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPrincipals
    extends BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipals {
  const BedrockagentcoreGatewayRuleConditionMatchPathsOrMatchPrincipalsMatchPrincipals(
    this.matchPrincipals,
  );

  final List<BedrockagentcoreGatewayRuleConditionMatchPrincipals>
  matchPrincipals;

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
final class BedrockagentcoreGatewayRuleConditionMatchPaths {
  const BedrockagentcoreGatewayRuleConditionMatchPaths({required this.anyOf});

  final TfArg<List<Object?>> anyOf;

  Map<String, Object?> encode() => {'any_of': anyOf.toTfJson()};
}

/// Typed helper for the `condition.match_principals` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleConditionMatchPrincipals {
  const BedrockagentcoreGatewayRuleConditionMatchPrincipals({this.anyOf});

  final List<BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOf>? anyOf;

  Map<String, Object?> encode() => {
    if (anyOf != null) 'any_of': [for (final e in anyOf!) e.encode()],
  };
}

/// Typed helper for the `condition.match_principals.any_of` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOf {
  const BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOf({
    this.iamPrincipal,
  });

  final List<
    BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal
  >?
  iamPrincipal;

  Map<String, Object?> encode() => {
    if (iamPrincipal != null)
      'iam_principal': [for (final e in iamPrincipal!) e.encode()],
  };
}

/// Typed helper for the `condition.match_principals.any_of.iam_principal` block of
/// `aws_bedrockagentcore_gateway_rule` (derived from provider schema).
@immutable
final class BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal {
  const BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal({
    required this.arn,
    this.operator,
  });

  final TfArg<String> arn;

  final TfArg<
    BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalOperator
  >?
  operator;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
enum BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalOperator
    implements TerraformEnum {
  stringequals('StringEquals'),
  stringlike('StringLike');

  const BedrockagentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalOperator(
    this.terraformValue,
  );
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
           if (description != null) 'description': description,
           'gateway_identifier': gatewayIdentifier,
           'priority': priority,
           if (region != null) 'region': region,
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
}

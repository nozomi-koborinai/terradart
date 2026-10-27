// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_route_map`.
const Set<String> _azurermRouteMapSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_route_map` (derived from provider schema).
@immutable
final class RouteMapRule {
  const RouteMapRule({
    required this.name,
    this.nextStepIfMatched,
    this.action,
    this.matchCriterion,
  });

  final TfArg<String> name;

  final RouteMapNextStepIfMatched? nextStepIfMatched;

  final List<RouteMapAction>? action;

  final List<RouteMapMatchCriterion>? matchCriterion;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'next_step_if_matched': ?nextStepIfMatched?.toTfJson(),
    if (action != null) 'action': [for (final e in action!) e.encode()],
    if (matchCriterion != null)
      'match_criterion': [for (final e in matchCriterion!) e.encode()],
  };
}

/// `next_step_if_matched` — derived from the provider schema description.
extension type const RouteMapNextStepIfMatched._(TfArg<String> _)
    implements TfArg<String> {
  RouteMapNextStepIfMatched.variable(String name)
    : this._(TfArg.variable(name));
  RouteMapNextStepIfMatched.expression(String template)
    : this._(TfArg.expression(template));
  const RouteMapNextStepIfMatched.arg(TfArg<String> arg) : this._(arg);

  static const continueCase = RouteMapNextStepIfMatched._(
    TfArgLiteral('Continue'),
  );
  static const terminate = RouteMapNextStepIfMatched._(
    TfArgLiteral('Terminate'),
  );
  static const unknown = RouteMapNextStepIfMatched._(TfArgLiteral('Unknown'));

  static const List<RouteMapNextStepIfMatched> values = [
    continueCase,
    terminate,
    unknown,
  ];
}

/// Typed helper for the `rule.action` block of
/// `azurerm_route_map` (derived from provider schema).
@immutable
final class RouteMapAction {
  const RouteMapAction({required this.type, this.parameter});

  final RouteMapType type;

  final List<RouteMapParameter>? parameter;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const RouteMapType._(TfArg<String> _) implements TfArg<String> {
  RouteMapType.variable(String name) : this._(TfArg.variable(name));
  RouteMapType.expression(String template) : this._(TfArg.expression(template));
  const RouteMapType.arg(TfArg<String> arg) : this._(arg);

  static const add = RouteMapType._(TfArgLiteral('Add'));
  static const drop = RouteMapType._(TfArgLiteral('Drop'));
  static const remove = RouteMapType._(TfArgLiteral('Remove'));
  static const replace = RouteMapType._(TfArgLiteral('Replace'));
  static const unknown = RouteMapType._(TfArgLiteral('Unknown'));

  static const List<RouteMapType> values = [
    add,
    drop,
    remove,
    replace,
    unknown,
  ];
}

/// Typed helper for the `rule.action.parameter` block of
/// `azurerm_route_map` (derived from provider schema).
@immutable
final class RouteMapParameter {
  const RouteMapParameter({this.asPath, this.community, this.routePrefix});

  final TfArg<List<String>>? asPath;

  final TfArg<List<String>>? community;

  final TfArg<List<String>>? routePrefix;

  @internal
  Map<String, Object?> encode() => {
    'as_path': ?asPath?.toTfJson(),
    'community': ?community?.toTfJson(),
    'route_prefix': ?routePrefix?.toTfJson(),
  };
}

/// Typed helper for the `rule.match_criterion` block of
/// `azurerm_route_map` (derived from provider schema).
@immutable
final class RouteMapMatchCriterion {
  const RouteMapMatchCriterion({
    this.asPath,
    this.community,
    required this.matchCondition,
    this.routePrefix,
  });

  final TfArg<List<String>>? asPath;

  final TfArg<List<String>>? community;

  final RouteMapMatchCondition matchCondition;

  final TfArg<List<String>>? routePrefix;

  @internal
  Map<String, Object?> encode() => {
    'as_path': ?asPath?.toTfJson(),
    'community': ?community?.toTfJson(),
    'match_condition': matchCondition.toTfJson(),
    'route_prefix': ?routePrefix?.toTfJson(),
  };
}

/// `match_condition` — derived from the provider schema description.
extension type const RouteMapMatchCondition._(TfArg<String> _)
    implements TfArg<String> {
  RouteMapMatchCondition.variable(String name) : this._(TfArg.variable(name));
  RouteMapMatchCondition.expression(String template)
    : this._(TfArg.expression(template));
  const RouteMapMatchCondition.arg(TfArg<String> arg) : this._(arg);

  static const contains = RouteMapMatchCondition._(TfArgLiteral('Contains'));
  static const equals = RouteMapMatchCondition._(TfArgLiteral('Equals'));
  static const notcontains = RouteMapMatchCondition._(
    TfArgLiteral('NotContains'),
  );
  static const notequals = RouteMapMatchCondition._(TfArgLiteral('NotEquals'));
  static const unknown = RouteMapMatchCondition._(TfArgLiteral('Unknown'));

  static const List<RouteMapMatchCondition> values = [
    contains,
    equals,
    notcontains,
    notequals,
    unknown,
  ];
}

/// Factory wrapper for `azurerm_route_map`.
final class AzurermRouteMap extends Resource {
  static const String tfType = 'azurerm_route_map';

  AzurermRouteMap(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> virtualHubId,
    List<RouteMapRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'virtual_hub_id': virtualHubId,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRouteMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRouteMap>`.
  RefTo<AzurermRouteMap> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}

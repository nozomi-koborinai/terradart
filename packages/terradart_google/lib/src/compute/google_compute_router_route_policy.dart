// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_router.dart' show GoogleComputeRouter;

/// Sensitive field paths for `google_compute_router_route_policy`.
const Set<String> _googleComputeRouterRoutePolicySensitive = <String>{};

/// Compute Router Route Policy enum for `type`.
extension type const ComputeRouterRoutePolicyType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRouterRoutePolicyType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRouterRoutePolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterRoutePolicyType.arg(TfArg<String> arg) : this._(arg);

  static const routePolicyTypeImport = ComputeRouterRoutePolicyType._(
    TfArgLiteral('ROUTE_POLICY_TYPE_IMPORT'),
  );
  static const routePolicyTypeExport = ComputeRouterRoutePolicyType._(
    TfArgLiteral('ROUTE_POLICY_TYPE_EXPORT'),
  );

  static const List<ComputeRouterRoutePolicyType> values = [
    routePolicyTypeImport,
    routePolicyTypeExport,
  ];
}

/// Typed helper for the `terms` block of
/// `google_compute_router_route_policy` (derived from provider schema).
@immutable
final class ComputeRouterRoutePolicyTerms {
  const ComputeRouterRoutePolicyTerms({
    required this.priority,
    this.actions,
    required this.match,
  });

  final TfArg<num> priority;

  final List<ComputeRouterRoutePolicyActions>? actions;

  final ComputeRouterRoutePolicyMatch match;

  @internal
  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'match': match.encode(),
  };
}

/// Typed helper for the `terms.actions` block of
/// `google_compute_router_route_policy` (derived from provider schema).
@immutable
final class ComputeRouterRoutePolicyActions {
  const ComputeRouterRoutePolicyActions({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `terms.match` block of
/// `google_compute_router_route_policy` (derived from provider schema).
@immutable
final class ComputeRouterRoutePolicyMatch {
  const ComputeRouterRoutePolicyMatch({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_router_route_policy`.
///
/// A route policy created in a router
///
/// BGP import/export route policy on a [GoogleComputeRouter]. [type] is
/// `ROUTE_POLICY_TYPE_IMPORT` or `ROUTE_POLICY_TYPE_EXPORT`; [terms]
/// are evaluated by priority.
final class GoogleComputeRouterRoutePolicy extends Resource {
  static const String tfType = 'google_compute_router_route_policy';

  GoogleComputeRouterRoutePolicy(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeRouter> router,
    TfArg<String>? region,
    ComputeRouterRoutePolicyType? type,
    required List<ComputeRouterRoutePolicyTerms> terms,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router.encodeAs('name'),
           'region': ?region,
           'type': ?type,
           'terms': TfArg.literal([for (final e in terms) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterRoutePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouterRoutePolicy>`.
  RefTo<GoogleComputeRouterRoutePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

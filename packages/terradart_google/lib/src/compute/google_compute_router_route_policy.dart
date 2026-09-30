// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_route_policy`.
const Set<String> _googleComputeRouterRoutePolicySensitive = <String>{};

/// Compute Router Route Policy enum for `type`.
enum ComputeRouterRoutePolicyType implements TerraformEnum {
  routePolicyTypeImport('ROUTE_POLICY_TYPE_IMPORT'),
  routePolicyTypeExport('ROUTE_POLICY_TYPE_EXPORT');

  const ComputeRouterRoutePolicyType(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleComputeRouterRoutePolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> router,
    TfArg<String>? region,
    TfArg<ComputeRouterRoutePolicyType>? type,
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
           'router': router,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get routerRef => TfRef.attribute<String>(this, 'router');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

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

  final List<ComputeRouterRoutePolicyTermsActions>? actions;

  final ComputeRouterRoutePolicyTermsMatch match;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'match': match.encode(),
  };
}

/// Typed helper for the `terms.actions` block of
/// `google_compute_router_route_policy` (derived from provider schema).
@immutable
final class ComputeRouterRoutePolicyTermsActions {
  const ComputeRouterRoutePolicyTermsActions({
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
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `terms.match` block of
/// `google_compute_router_route_policy` (derived from provider schema).
@immutable
final class ComputeRouterRoutePolicyTermsMatch {
  const ComputeRouterRoutePolicyTermsMatch({
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
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           'terms': TfArg.literal([for (final e in terms) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterRoutePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

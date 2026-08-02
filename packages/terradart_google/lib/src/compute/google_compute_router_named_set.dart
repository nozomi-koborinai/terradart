// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_named_set`.
const Set<String> _googleComputeRouterNamedSetSensitive = <String>{};

/// Compute Router Named Set enum for `type`.
enum ComputeRouterNamedSetType implements TerraformEnum {
  namedSetTypePrefix('NAMED_SET_TYPE_PREFIX'),
  namedSetTypeCommunity('NAMED_SET_TYPE_COMMUNITY');

  const ComputeRouterNamedSetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `elements` block of
/// `google_compute_router_named_set` (derived from provider schema).
@immutable
final class ComputeRouterNamedSetElements {
  const ComputeRouterNamedSetElements({
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

/// Factory wrapper for `google_compute_router_named_set`.
///
/// A Named Set is a collection of IP addresses or ranges (for PREFIX type) or
/// BGP communities (for COMMUNITY type) that can be used in route policies.
///
/// Cloud Router **Named Set** — a CEL collection of IP prefixes
/// (`NAMED_SET_TYPE_PREFIX`) or BGP communities
/// (`NAMED_SET_TYPE_COMMUNITY`) for use in route policies.
///
/// Requires an existing [GoogleComputeRouter]. Pair [type] with matching
/// [elements] expressions (quoted CIDRs for PREFIX, community literals
/// for COMMUNITY).
///
/// Example:
/// ```dart
/// GoogleComputeRouterNamedSet(
///   localName: 'prefixes',
///   name: TfArg.literal('terradart-prefixes'),
///   router: TfArg.ref(router.nameRef),
///   region: TfArg.literal('us-central1'),
///   type: TfArg.literal(ComputeRouterNamedSetType.namedSetTypePrefix),
///   elements: [
///     ComputeRouterNamedSetElements(
///       expression: TfArg.literal("'10.0.0.0/8'"),
///       title: TfArg.literal('rfc1918-10'),
///     ),
///   ],
/// );
/// ```
final class GoogleComputeRouterNamedSet extends Resource {
  static const String tfType = 'google_compute_router_named_set';

  GoogleComputeRouterNamedSet({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> router,
    required TfArg<ComputeRouterNamedSetType> type,
    TfArg<String>? region,
    TfArg<String>? description,
    List<ComputeRouterNamedSetElements>? elements,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           'type': type,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (elements != null)
             'elements': TfArg.literal([for (final e in elements) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNamedSetSensitive;

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_search_engine.dart'
    show GoogleDiscoveryEngineSearchEngine;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_discovery_engine_search_engine_iam_binding`.
const Set<String> _googleDiscoveryEngineSearchEngineIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_discovery_engine_search_engine_iam_binding` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineIamBindingCondition {
  const DiscoveryEngineSearchEngineIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_search_engine_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex AI Search
/// engine.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDiscoveryEngineSearchEngineIamMember] for additive grants.
final class GoogleDiscoveryEngineSearchEngineIamBinding extends Resource {
  static const String tfType =
      'google_discovery_engine_search_engine_iam_binding';

  GoogleDiscoveryEngineSearchEngineIamBinding(
    super.localName, {
    TfArg<String>? location,
    TfArg<String>? collectionId,
    required RefTo<GoogleDiscoveryEngineSearchEngine> engine,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DiscoveryEngineSearchEngineIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? engine.alsoAs('location')),
           'collection_id': ?(collectionId ?? engine.alsoAs('collection_id')),
           'engine_id': engine.encodeAs('engine_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? engine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSearchEngineIamBinding>`.
  RefTo<GoogleDiscoveryEngineSearchEngineIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}

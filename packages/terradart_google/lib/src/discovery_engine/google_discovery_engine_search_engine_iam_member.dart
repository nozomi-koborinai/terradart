// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_search_engine.dart'
    show GoogleDiscoveryEngineSearchEngine;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_discovery_engine_search_engine_iam_member`.
const Set<String> _googleDiscoveryEngineSearchEngineIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_discovery_engine_search_engine_iam_member` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineIamMemberCondition {
  const DiscoveryEngineSearchEngineIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_search_engine_iam_member`.
final class GoogleDiscoveryEngineSearchEngineIamMember extends Resource {
  static const String tfType =
      'google_discovery_engine_search_engine_iam_member';

  GoogleDiscoveryEngineSearchEngineIamMember({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? collectionId,
    required RefTo<GoogleDiscoveryEngineSearchEngine> engine,
    required TfArg<String> role,
    required IamPrincipal member,
    DiscoveryEngineSearchEngineIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? engine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSearchEngineIamMember>`.
  RefTo<GoogleDiscoveryEngineSearchEngineIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_search_engine_iam_binding`.
const Set<String> _googleDiscoveryEngineSearchEngineIamBindingSensitive =
    <String>{};

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

  GoogleDiscoveryEngineSearchEngineIamBinding({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

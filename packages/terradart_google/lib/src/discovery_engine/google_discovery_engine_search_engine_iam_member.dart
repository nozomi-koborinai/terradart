// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_search_engine_iam_member`.
const Set<String> _googleDiscoveryEngineSearchEngineIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_discovery_engine_search_engine_iam_member`.
final class GoogleDiscoveryEngineSearchEngineIamMember extends Resource {
  static const String tfType =
      'google_discovery_engine_search_engine_iam_member';

  GoogleDiscoveryEngineSearchEngineIamMember({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

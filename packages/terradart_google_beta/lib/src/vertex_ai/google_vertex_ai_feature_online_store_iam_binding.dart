// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_iam_binding`.
const Set<String> _googleVertexAiFeatureOnlineStoreIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_feature_online_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Feature Online Store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeatureOnlineStoreIamMember] for additive grants.
final class GoogleVertexAiFeatureOnlineStoreIamBinding extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_iam_binding';

  GoogleVertexAiFeatureOnlineStoreIamBinding({
    required super.localName,
    required TfArg<String> featureOnlineStore,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'feature_online_store': featureOnlineStore,
           'members': members,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreIamBindingSensitive;
}

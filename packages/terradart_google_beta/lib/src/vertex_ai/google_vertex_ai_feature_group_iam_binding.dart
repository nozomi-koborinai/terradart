// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_group_iam_binding`.
const Set<String> _googleVertexAiFeatureGroupIamBindingSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_feature_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Feature Group.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeatureGroupIamMember] for additive grants.
final class GoogleVertexAiFeatureGroupIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group_iam_binding';

  GoogleVertexAiFeatureGroupIamBinding({
    required super.localName,
    required TfArg<String> featureGroup,
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
           'feature_group': featureGroup,
           'members': members,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupIamBindingSensitive;
}

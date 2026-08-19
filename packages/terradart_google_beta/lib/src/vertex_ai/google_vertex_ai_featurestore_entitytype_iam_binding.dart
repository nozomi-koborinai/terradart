// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_iam_binding`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Featurestore Entitytype.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeaturestoreEntitytypeIamMember] for additive grants.
final class GoogleVertexAiFeaturestoreEntitytypeIamBinding extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_iam_binding';

  GoogleVertexAiFeaturestoreEntitytypeIamBinding({
    required super.localName,
    required TfArg<String> entitytype,
    required TfArg<String> featurestore,
    required TfArg<List<String>> members,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'entitytype': entitytype,
           'featurestore': featurestore,
           'members': members,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamBindingSensitive;
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_iam_member`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_iam_member`.
final class GoogleVertexAiFeaturestoreEntitytypeIamMember extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_iam_member';

  GoogleVertexAiFeaturestoreEntitytypeIamMember({
    required super.localName,
    required TfArg<String> entitytype,
    required TfArg<String> featurestore,
    required TfArg<String> member,
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
           'member': member,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamMemberSensitive;
}

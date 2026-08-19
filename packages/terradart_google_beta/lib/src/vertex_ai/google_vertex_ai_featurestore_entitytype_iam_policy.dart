// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_iam_policy`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Featurestore Entitytype.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiFeaturestoreEntitytypeIamMember] for additive grants.
final class GoogleVertexAiFeaturestoreEntitytypeIamPolicy extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_iam_policy';

  GoogleVertexAiFeaturestoreEntitytypeIamPolicy({
    required super.localName,
    required TfArg<String> entitytype,
    required TfArg<String> featurestore,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'entitytype': entitytype,
           'featurestore': featurestore,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamPolicySensitive;
}

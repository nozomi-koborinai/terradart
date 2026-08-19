// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_group_iam_policy`.
const Set<String> _googleVertexAiFeatureGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_feature_group_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Feature Group.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiFeatureGroupIamMember] for additive grants.
final class GoogleVertexAiFeatureGroupIamPolicy extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group_iam_policy';

  GoogleVertexAiFeatureGroupIamPolicy({
    required super.localName,
    required TfArg<String> featureGroup,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'feature_group': featureGroup,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupIamPolicySensitive;
}

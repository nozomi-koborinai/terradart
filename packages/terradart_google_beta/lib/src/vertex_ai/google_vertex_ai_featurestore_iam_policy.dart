// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_iam_policy`.
const Set<String> _googleVertexAiFeaturestoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_featurestore_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Featurestore.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiFeaturestoreIamMember] for additive grants.
final class GoogleVertexAiFeaturestoreIamPolicy extends Resource {
  static const String tfType = 'google_vertex_ai_featurestore_iam_policy';

  GoogleVertexAiFeaturestoreIamPolicy({
    required super.localName,
    required TfArg<String> featurestore,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'featurestore': featurestore,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreIamPolicySensitive;
}

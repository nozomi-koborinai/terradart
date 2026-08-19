// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_iam_policy`.
const Set<String> _googleVertexAiFeatureOnlineStoreIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_feature_online_store_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Feature Online Store.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiFeatureOnlineStoreIamMember] for additive grants.
final class GoogleVertexAiFeatureOnlineStoreIamPolicy extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_iam_policy';

  GoogleVertexAiFeatureOnlineStoreIamPolicy({
    required super.localName,
    required TfArg<String> featureOnlineStore,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'feature_online_store': featureOnlineStore,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreIamPolicySensitive;
}

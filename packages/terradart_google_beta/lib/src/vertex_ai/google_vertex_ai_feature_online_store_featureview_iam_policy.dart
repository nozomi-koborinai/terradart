// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_featureview_iam_policy`.
const Set<String>
_googleVertexAiFeatureOnlineStoreFeatureviewIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_feature_online_store_featureview_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Feature Online Store Featureview.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember] for additive grants.
final class GoogleVertexAiFeatureOnlineStoreFeatureviewIamPolicy
    extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_featureview_iam_policy';

  GoogleVertexAiFeatureOnlineStoreFeatureviewIamPolicy({
    required super.localName,
    required TfArg<String> featureOnlineStore,
    required TfArg<String> featureView,
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
           'feature_view': featureView,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreFeatureviewIamPolicySensitive;
}

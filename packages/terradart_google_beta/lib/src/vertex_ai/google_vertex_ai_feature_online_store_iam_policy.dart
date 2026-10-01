// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeatureOnlineStore;

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
    required RefTo<GoogleVertexAiFeatureOnlineStore> featureOnlineStore,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'feature_online_store': featureOnlineStore.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? featureOnlineStore.alsoAs('project')),
           'region': ?(region ?? featureOnlineStore.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureOnlineStoreIamPolicy>`.
  RefTo<GoogleVertexAiFeatureOnlineStoreIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_online_store` attribute.
  TfRef<String> get featureOnlineStore =>
      TfRef.attribute<String>(this, 'feature_online_store');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

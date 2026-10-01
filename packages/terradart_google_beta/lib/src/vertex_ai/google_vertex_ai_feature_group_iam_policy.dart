// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeatureGroup;

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
    required RefTo<GoogleVertexAiFeatureGroup> featureGroup,
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
           'feature_group': featureGroup.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? featureGroup.alsoAs('project')),
           'region': ?(region ?? featureGroup.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureGroupIamPolicy>`.
  RefTo<GoogleVertexAiFeatureGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_group` attribute.
  TfRef<String> get featureGroup =>
      TfRef.attribute<String>(this, 'feature_group');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

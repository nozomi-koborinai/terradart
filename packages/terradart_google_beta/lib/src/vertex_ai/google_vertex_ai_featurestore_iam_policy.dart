// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeaturestore;

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
    required RefTo<GoogleVertexAiFeaturestore> featurestore,
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
           'featurestore': featurestore.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? featurestore.alsoAs('project')),
           'region': ?(region ?? featurestore.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreIamPolicy>`.
  RefTo<GoogleVertexAiFeaturestoreIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `featurestore` attribute.
  TfRef<String> get featurestore =>
      TfRef.attribute<String>(this, 'featurestore');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

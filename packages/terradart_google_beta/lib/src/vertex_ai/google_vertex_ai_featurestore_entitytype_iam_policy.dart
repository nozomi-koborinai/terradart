// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeaturestoreEntitytype;

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
    required RefTo<GoogleVertexAiFeaturestoreEntitytype> entitytype,
    TfArg<String>? featurestore,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'entitytype': entitytype.encodeAs('name'),
           'featurestore': ?(featurestore ?? entitytype.alsoAs('featurestore')),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreEntitytypeIamPolicy>`.
  RefTo<GoogleVertexAiFeaturestoreEntitytypeIamPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entitytype` attribute.
  TfRef<String> get entitytype => TfRef.attribute<String>(this, 'entitytype');

  /// Reference to `featurestore` attribute.
  TfRef<String> get featurestore =>
      TfRef.attribute<String>(this, 'featurestore');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

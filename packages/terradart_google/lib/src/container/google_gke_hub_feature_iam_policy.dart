// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_feature.dart' show GoogleGkeHubFeature;

/// Sensitive field paths for `google_gke_hub_feature_iam_policy`.
const Set<String> _googleGkeHubFeatureIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gke_hub_feature_iam_policy`.
///
/// Authoritative IAM policy for a GKE Hub fleet feature.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubFeatureIamMember] for single-principal grants.
final class GoogleGkeHubFeatureIamPolicy extends Resource {
  static const String tfType = 'google_gke_hub_feature_iam_policy';

  GoogleGkeHubFeatureIamPolicy(
    super.localName, {
    required RefTo<GoogleGkeHubFeature> feature,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': feature.encodeAs('name'),
           'location': ?(location ?? feature.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? feature.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubFeatureIamPolicy>`.
  RefTo<GoogleGkeHubFeatureIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

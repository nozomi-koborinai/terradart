// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_scope_iam_policy`.
const Set<String> _googleGkeHubScopeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gke_hub_scope_iam_policy`.
///
/// Authoritative IAM policy for a GKE Hub fleet scope.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubScopeIamMember] for single-principal grants.
final class GoogleGkeHubScopeIamPolicy extends Resource {
  static const String tfType = 'google_gke_hub_scope_iam_policy';

  GoogleGkeHubScopeIamPolicy({
    required super.localName,
    required TfArg<String> scopeId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scopeId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_scope.dart' show GoogleGkeHubScope;

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
    required RefTo<GoogleGkeHubScope> scope,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scope.encodeAs('scope_id'),
           'policy_data': policyData,
           'project': ?(project ?? scope.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubScopeIamPolicy>`.
  RefTo<GoogleGkeHubScopeIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../agent/google_agent_identity_auth_provider.dart'
    show GoogleAgentIdentityAuthProvider;

/// Sensitive field paths for `google_agent_identity_auth_provider_iam_policy`.
const Set<String> _googleAgentIdentityAuthProviderIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_agent_identity_auth_provider_iam_policy`.
///
/// Authoritative IAM policy.
///
/// Replaces the entire IAM policy, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_agent_identity_auth_provider_iam_member` for single grants.
final class GoogleAgentIdentityAuthProviderIamPolicy extends Resource {
  static const String tfType = 'google_agent_identity_auth_provider_iam_policy';

  GoogleAgentIdentityAuthProviderIamPolicy(
    super.localName, {
    required RefTo<GoogleAgentIdentityAuthProvider> authProvider,
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
           'auth_provider_id': authProvider.encodeAs('auth_provider_id'),
           'location': ?(location ?? authProvider.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? authProvider.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgentIdentityAuthProviderIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentIdentityAuthProviderIamPolicy>`.
  RefTo<GoogleAgentIdentityAuthProviderIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderId =>
      TfRef.attribute<String>(this, 'auth_provider_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

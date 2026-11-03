// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../agent/google_agent_identity_auth_provider_iam_policy.dart';

/// Sensitive field paths for `google_agent_identity_auth_provider_iam_policy`.
const Set<String> _googleAgentIdentityAuthProviderIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_agent_identity_auth_provider_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAgentIdentityAuthProviderIamPolicy extends Data {
  static const String tfType = 'google_agent_identity_auth_provider_iam_policy';

  DataGoogleAgentIdentityAuthProviderIamPolicy(
    super.localName, {
    required TfArg<String> authProviderId,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_provider_id': authProviderId,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgentIdentityAuthProviderIamPolicySensitive;

  /// A reference to the `google_agent_identity_auth_provider_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleAgentIdentityAuthProviderIamPolicy>`.
  RefTo<GoogleAgentIdentityAuthProviderIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderId =>
      TfRef.attribute<String>(this, 'auth_provider_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

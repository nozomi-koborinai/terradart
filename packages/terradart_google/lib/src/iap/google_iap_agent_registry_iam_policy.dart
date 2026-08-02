// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_iam_policy`.
const Set<String> _googleIapAgentRegistryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_iam_policy`.
///
/// Authoritative IAM policy for the Identity-Aware Proxy **Agent Registry**
/// at a regional location.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAgentRegistryIamMember] for single-principal grants.
final class GoogleIapAgentRegistryIamPolicy extends Resource {
  static const String tfType = 'google_iap_agent_registry_iam_policy';

  GoogleIapAgentRegistryIamPolicy({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapAgentRegistryIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

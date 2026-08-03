// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_agent_iam_policy`.
const Set<String> _googleIapAgentRegistryAgentIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_agent_iam_policy`.
///
/// Authoritative IAM policy for an IAP Agent Registry **agent**.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAgentRegistryAgentIamMember] for single-principal grants.
/// Deferred with the Agent Identity registry agent parent (skip-noted).
final class GoogleIapAgentRegistryAgentIamPolicy extends Resource {
  static const String tfType = 'google_iap_agent_registry_agent_iam_policy';

  GoogleIapAgentRegistryAgentIamPolicy({
    required super.localName,
    required TfArg<String> agentId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryAgentIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

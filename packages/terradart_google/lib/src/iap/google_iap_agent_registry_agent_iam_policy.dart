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

  GoogleIapAgentRegistryAgentIamPolicy(
    super.localName, {
    required TfArg<String> agentId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryAgentIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryAgentIamPolicy>`.
  RefTo<GoogleIapAgentRegistryAgentIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_agent_iam_policy`.
const Set<String> _googleIapAgentRegistryAgentIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_agent_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapAgentRegistryAgentIamPolicy extends Data {
  static const String tfType = 'google_iap_agent_registry_agent_iam_policy';

  DataGoogleIapAgentRegistryAgentIamPolicy({
    required super.localName,
    required TfArg<String> agentId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
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

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

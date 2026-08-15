// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_mcp_server_iam_policy`.
const Set<String> _googleIapAgentRegistryMcpServerIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_mcp_server_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapAgentRegistryMcpServerIamPolicy extends Data {
  static const String tfType =
      'google_iap_agent_registry_mcp_server_iam_policy';

  DataGoogleIapAgentRegistryMcpServerIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> mcpServerId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'mcp_server_id': mcpServerId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryMcpServerIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

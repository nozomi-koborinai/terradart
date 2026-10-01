// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_mcp_server_iam_policy`.
const Set<String> _googleIapAgentRegistryMcpServerIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_mcp_server_iam_policy`.
///
/// Authoritative IAM policy for an IAP Agent Registry **MCP server**.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAgentRegistryMcpServerIamMember] for single-principal grants.
/// Deferred with the Agent Identity registry MCP server parent (skip-noted).
final class GoogleIapAgentRegistryMcpServerIamPolicy extends Resource {
  static const String tfType =
      'google_iap_agent_registry_mcp_server_iam_policy';

  GoogleIapAgentRegistryMcpServerIamPolicy({
    required super.localName,
    required TfArg<String> mcpServerId,
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
           'mcp_server_id': mcpServerId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryMcpServerIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryMcpServerIamPolicy>`.
  RefTo<GoogleIapAgentRegistryMcpServerIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mcp_server_id` attribute.
  TfRef<String> get mcpServerId =>
      TfRef.attribute<String>(this, 'mcp_server_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

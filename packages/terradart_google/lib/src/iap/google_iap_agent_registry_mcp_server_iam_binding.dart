// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_mcp_server_iam_binding`.
const Set<String> _googleIapAgentRegistryMcpServerIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_mcp_server_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP Agent Registry
/// **MCP server**.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapAgentRegistryMcpServerIamMember] for additive grants. Deferred
/// with the Agent Identity registry MCP server parent (skip-noted).
final class GoogleIapAgentRegistryMcpServerIamBinding extends Resource {
  static const String tfType =
      'google_iap_agent_registry_mcp_server_iam_binding';

  GoogleIapAgentRegistryMcpServerIamBinding({
    required super.localName,
    required TfArg<String> mcpServerId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mcp_server_id': mcpServerId,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryMcpServerIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

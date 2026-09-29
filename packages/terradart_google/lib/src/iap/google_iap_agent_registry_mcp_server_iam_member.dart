// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_mcp_server_iam_member`.
const Set<String> _googleIapAgentRegistryMcpServerIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_mcp_server_iam_member`.
///
/// Non-authoritative IAM member on an Identity-Aware Proxy Agent Registry
/// **MCP server**.
///
/// Requires an Agent Identity registry MCP server parent
/// (`google_agent_registry_*` — skip-noted); not standalone-project
/// applyable on terradart-validate.
final class GoogleIapAgentRegistryMcpServerIamMember extends Resource {
  static const String tfType =
      'google_iap_agent_registry_mcp_server_iam_member';

  GoogleIapAgentRegistryMcpServerIamMember({
    required super.localName,
    required TfArg<String> mcpServerId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mcp_server_id': mcpServerId,
           'role': role,
           'member': member,
           'location': ?location,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryMcpServerIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryMcpServerIamMember>`.
  RefTo<GoogleIapAgentRegistryMcpServerIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

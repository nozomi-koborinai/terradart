// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_agent_registry_mcp_server_iam_member`.
const Set<String> _googleIapAgentRegistryMcpServerIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_agent_registry_mcp_server_iam_member` (derived from provider schema).
@immutable
final class IapAgentRegistryMcpServerIamMemberCondition {
  const IapAgentRegistryMcpServerIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
    required IamPrincipal member,
    TfArg<String>? location,
    TfArg<String>? project,
    IapAgentRegistryMcpServerIamMemberCondition? condition,
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
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mcp_server_id` attribute.
  TfRef<String> get mcpServerId =>
      TfRef.attribute<String>(this, 'mcp_server_id');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}

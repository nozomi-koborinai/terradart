// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_portal`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive =
    <String>{};

/// Typed helper for the `servers` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_portal` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpPortalServers {
  const ZeroTrustAccessAiControlsMcpPortalServers({
    this.defaultDisabled,
    this.onBehalf,
    required this.serverId,
    this.updatedPrompts,
    this.updatedTools,
  });

  final TfArg<bool>? defaultDisabled;

  final TfArg<bool>? onBehalf;

  final TfArg<String> serverId;

  final List<ZeroTrustAccessAiControlsMcpPortalServersUpdatedPrompts>?
  updatedPrompts;

  final List<ZeroTrustAccessAiControlsMcpPortalServersUpdatedTools>?
  updatedTools;

  Map<String, Object?> encode() => {
    if (defaultDisabled != null)
      'default_disabled': defaultDisabled!.toTfJson(),
    if (onBehalf != null) 'on_behalf': onBehalf!.toTfJson(),
    'server_id': serverId.toTfJson(),
    if (updatedPrompts != null)
      'updated_prompts': [for (final e in updatedPrompts!) e.encode()],
    if (updatedTools != null)
      'updated_tools': [for (final e in updatedTools!) e.encode()],
  };
}

/// Typed helper for the `servers.updated_prompts` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_portal` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpPortalServersUpdatedPrompts {
  const ZeroTrustAccessAiControlsMcpPortalServersUpdatedPrompts({
    this.alias,
    this.description,
    this.enabled,
    required this.name,
  });

  final TfArg<String>? alias;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (alias != null) 'alias': alias!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `servers.updated_tools` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_portal` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpPortalServersUpdatedTools {
  const ZeroTrustAccessAiControlsMcpPortalServersUpdatedTools({
    this.alias,
    this.description,
    this.enabled,
    required this.name,
  });

  final TfArg<String>? alias;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (alias != null) 'alias': alias!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_ai_controls_mcp_portal`.
///
/// Accepted Permissions
///
/// - `MCP Portals Read` - `MCP Portals Write`
final class CloudflareZeroTrustAccessAiControlsMcpPortal extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_access_ai_controls_mcp_portal';

  CloudflareZeroTrustAccessAiControlsMcpPortal({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? allowCodeMode,
    TfArg<String>? description,
    required TfArg<String> hostname,
    required TfArg<String> id,
    required TfArg<String> name,
    TfArg<bool>? secureWebGateway,
    List<ZeroTrustAccessAiControlsMcpPortalServers>? servers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (allowCodeMode != null) 'allow_code_mode': allowCodeMode,
           if (description != null) 'description': description,
           'hostname': hostname,
           'id': id,
           'name': name,
           if (secureWebGateway != null) 'secure_web_gateway': secureWebGateway,
           if (servers != null)
             'servers': TfArg.literal([for (final e in servers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');
}

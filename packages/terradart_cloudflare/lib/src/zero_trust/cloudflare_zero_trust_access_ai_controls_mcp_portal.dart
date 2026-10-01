// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_portal`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive =
    <String>{};

/// Zero Trust Access Ai Controls Mcp Portal Code enum for `code_mode`.
enum ZeroTrustAccessAiControlsMcpPortalCodeMode implements TerraformEnum {
  off('off'),
  optIn('opt_in'),
  defaultOn('default_on'),
  enforced('enforced');

  const ZeroTrustAccessAiControlsMcpPortalCodeMode(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final List<ZeroTrustAccessAiControlsMcpPortalUpdatedPrompts>? updatedPrompts;

  final List<ZeroTrustAccessAiControlsMcpPortalUpdatedTools>? updatedTools;

  Map<String, Object?> encode() => {
    'default_disabled': ?defaultDisabled?.toTfJson(),
    'on_behalf': ?onBehalf?.toTfJson(),
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
final class ZeroTrustAccessAiControlsMcpPortalUpdatedPrompts {
  const ZeroTrustAccessAiControlsMcpPortalUpdatedPrompts({
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
    'alias': ?alias?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `servers.updated_tools` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_portal` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpPortalUpdatedTools {
  const ZeroTrustAccessAiControlsMcpPortalUpdatedTools({
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
    'alias': ?alias?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? allowCodeMode,
    TfArg<ZeroTrustAccessAiControlsMcpPortalCodeMode>? codeMode,
    TfArg<String>? description,
    required TfArg<String> hostname,
    required TfArg<String> id,
    required TfArg<String> name,
    TfArg<bool>? secureWebGateway,
    List<ZeroTrustAccessAiControlsMcpPortalServers>? servers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'allow_code_mode': ?allowCodeMode,
           'code_mode': ?codeMode,
           'description': ?description,
           'hostname': hostname,
           'id': id,
           'name': name,
           'secure_web_gateway': ?secureWebGateway,
           if (servers != null)
             'servers': TfArg.literal([for (final e in servers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessAiControlsMcpPortal>`.
  RefTo<CloudflareZeroTrustAccessAiControlsMcpPortal> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allow_code_mode` attribute.
  TfRef<bool> get allowCodeModeRef =>
      TfRef.attribute<bool>(this, 'allow_code_mode');

  /// Reference to `code_mode` attribute.
  TfRef<String> get codeModeRef => TfRef.attribute<String>(this, 'code_mode');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `secure_web_gateway` attribute.
  TfRef<bool> get secureWebGatewayRef =>
      TfRef.attribute<bool>(this, 'secure_web_gateway');
}

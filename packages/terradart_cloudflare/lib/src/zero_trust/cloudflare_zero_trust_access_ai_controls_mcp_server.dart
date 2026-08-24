// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_server`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpServerSensitive =
    <String>{'auth_credentials', 'client_secret'};

/// Typed helper for the `updated_prompts` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_server` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpServerUpdatedPrompts {
  const ZeroTrustAccessAiControlsMcpServerUpdatedPrompts({
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

/// Typed helper for the `updated_tools` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_server` (derived from provider schema).
@immutable
final class ZeroTrustAccessAiControlsMcpServerUpdatedTools {
  const ZeroTrustAccessAiControlsMcpServerUpdatedTools({
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

/// Factory wrapper for `cloudflare_zero_trust_access_ai_controls_mcp_server`.
///
/// Accepted Permissions
///
/// - `MCP Portals Read` - `MCP Portals Write`
final class CloudflareZeroTrustAccessAiControlsMcpServer extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_access_ai_controls_mcp_server';

  CloudflareZeroTrustAccessAiControlsMcpServer({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? authCredentials,
    required TfArg<String> authType,
    TfArg<String>? clientSecret,
    TfArg<String>? description,
    required TfArg<String> hostname,
    required TfArg<String> id,
    TfArg<bool>? isSharedOauthCallbackEnabled,
    required TfArg<String> name,
    TfArg<bool>? secureWebGateway,
    List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompts>? updatedPrompts,
    List<ZeroTrustAccessAiControlsMcpServerUpdatedTools>? updatedTools,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (authCredentials != null) 'auth_credentials': authCredentials,
           'auth_type': authType,
           if (clientSecret != null) 'client_secret': clientSecret,
           if (description != null) 'description': description,
           'hostname': hostname,
           'id': id,
           if (isSharedOauthCallbackEnabled != null)
             'is_shared_oauth_callback_enabled': isSharedOauthCallbackEnabled,
           'name': name,
           if (secureWebGateway != null) 'secure_web_gateway': secureWebGateway,
           if (updatedPrompts != null)
             'updated_prompts': TfArg.literal([
               for (final e in updatedPrompts) e.encode(),
             ]),
           if (updatedTools != null)
             'updated_tools': TfArg.literal([
               for (final e in updatedTools) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpServerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `error` attribute.
  TfRef<String> get error => TfRef.attribute<String>(this, 'error');

  /// Reference to `last_successful_sync` attribute.
  TfRef<String> get lastSuccessfulSync =>
      TfRef.attribute<String>(this, 'last_successful_sync');

  /// Reference to `last_synced` attribute.
  TfRef<String> get lastSynced => TfRef.attribute<String>(this, 'last_synced');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `prompts` attribute.
  TfRef<List<Map<String, String>>> get prompts =>
      TfRef.attribute<List<Map<String, String>>>(this, 'prompts');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tools` attribute.
  TfRef<List<Map<String, String>>> get tools =>
      TfRef.attribute<List<Map<String, String>>>(this, 'tools');
}

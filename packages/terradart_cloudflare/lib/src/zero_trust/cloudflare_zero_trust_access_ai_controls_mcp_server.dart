// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_server`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpServerSensitive =
    <String>{'auth_credentials', 'client_secret'};

/// Zero Trust Access Ai Controls Mcp Server Auth enum for `auth_type`.
enum ZeroTrustAccessAiControlsMcpServerAuthType implements TerraformEnum {
  oauth('oauth'),
  bearer('bearer'),
  unauthenticated('unauthenticated');

  const ZeroTrustAccessAiControlsMcpServerAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'alias': ?alias?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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
    'alias': ?alias?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? authCredentials,
    required TfArg<ZeroTrustAccessAiControlsMcpServerAuthType> authType,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'auth_credentials': ?authCredentials,
           'auth_type': authType,
           'client_secret': ?clientSecret,
           'description': ?description,
           'hostname': hostname,
           'id': id,
           'is_shared_oauth_callback_enabled': ?isSharedOauthCallbackEnabled,
           'name': name,
           'secure_web_gateway': ?secureWebGateway,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessAiControlsMcpServer>`.
  RefTo<CloudflareZeroTrustAccessAiControlsMcpServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_status` attribute.
  TfRef<String> get authenticationStatus =>
      TfRef.attribute<String>(this, 'authentication_status');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `auth_credentials` attribute.
  TfRef<String> get authCredentialsRef =>
      TfRef.attribute<String>(this, 'auth_credentials');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authTypeRef => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecretRef =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `is_shared_oauth_callback_enabled` attribute.
  TfRef<bool> get isSharedOauthCallbackEnabledRef =>
      TfRef.attribute<bool>(this, 'is_shared_oauth_callback_enabled');

  /// Reference to `secure_web_gateway` attribute.
  TfRef<bool> get secureWebGatewayRef =>
      TfRef.attribute<bool>(this, 'secure_web_gateway');
}

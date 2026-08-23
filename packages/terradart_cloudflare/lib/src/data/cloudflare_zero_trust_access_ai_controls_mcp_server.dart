// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_server`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpServerSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_server` (derived from provider schema).
@immutable
final class DataZeroTrustAccessAiControlsMcpServerFilter {
  const DataZeroTrustAccessAiControlsMcpServerFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_ai_controls_mcp_server`.
///
/// Accepted Permissions
///
/// - `MCP Portals Read` - `MCP Portals Write`
final class DataCloudflareZeroTrustAccessAiControlsMcpServer extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_ai_controls_mcp_server';

  DataCloudflareZeroTrustAccessAiControlsMcpServer({
    required super.localName,
    TfArg<String>? accountId,
    DataZeroTrustAccessAiControlsMcpServerFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpServerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `error` attribute.
  TfRef<String> get error => TfRef.attribute<String>(this, 'error');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `is_shared_oauth_callback_enabled` attribute.
  TfRef<bool> get isSharedOauthCallbackEnabled =>
      TfRef.attribute<bool>(this, 'is_shared_oauth_callback_enabled');

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

  /// Reference to `secure_web_gateway` attribute.
  TfRef<bool> get secureWebGateway =>
      TfRef.attribute<bool>(this, 'secure_web_gateway');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tools` attribute.
  TfRef<List<Map<String, String>>> get tools =>
      TfRef.attribute<List<Map<String, String>>>(this, 'tools');
}

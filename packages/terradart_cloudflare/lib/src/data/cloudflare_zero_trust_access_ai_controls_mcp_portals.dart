// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_portals`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpPortalsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_ai_controls_mcp_portals`.
///
/// Accepted Permissions
///
/// - `MCP Portals Read` - `MCP Portals Write`
final class DataCloudflareZeroTrustAccessAiControlsMcpPortals extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_ai_controls_mcp_portals';

  DataCloudflareZeroTrustAccessAiControlsMcpPortals({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpPortalsSensitive;
}

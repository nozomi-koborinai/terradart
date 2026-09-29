// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_ai_controls_mcp_portal.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_ai_controls_mcp_portal`.
const Set<String> _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_ai_controls_mcp_portal` (derived from provider schema).
@immutable
final class DataZeroTrustAccessAiControlsMcpPortalFilter {
  const DataZeroTrustAccessAiControlsMcpPortalFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {'search': ?search?.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_access_ai_controls_mcp_portal`.
///
/// Accepted Permissions
///
/// - `MCP Portals Read` - `MCP Portals Write`
final class DataCloudflareZeroTrustAccessAiControlsMcpPortal extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_ai_controls_mcp_portal';

  DataCloudflareZeroTrustAccessAiControlsMcpPortal({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    DataZeroTrustAccessAiControlsMcpPortalFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessAiControlsMcpPortalSensitive;

  /// A reference to the `cloudflare_zero_trust_access_ai_controls_mcp_portal` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessAiControlsMcpPortal>`.
  RefTo<CloudflareZeroTrustAccessAiControlsMcpPortal> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_code_mode` attribute.
  TfRef<bool> get allowCodeMode =>
      TfRef.attribute<bool>(this, 'allow_code_mode');

  /// Reference to `code_mode` attribute.
  TfRef<String> get codeMode => TfRef.attribute<String>(this, 'code_mode');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `secure_web_gateway` attribute.
  TfRef<bool> get secureWebGateway =>
      TfRef.attribute<bool>(this, 'secure_web_gateway');
}

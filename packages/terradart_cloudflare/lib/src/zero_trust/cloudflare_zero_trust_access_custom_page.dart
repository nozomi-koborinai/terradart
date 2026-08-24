// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_custom_page`.
const Set<String> _cloudflareZeroTrustAccessCustomPageSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_custom_page`.
///
/// Accepted Permissions
///
/// - `Access: Custom Pages Read` - `Access: Custom Pages Write`
final class CloudflareZeroTrustAccessCustomPage extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_custom_page';

  CloudflareZeroTrustAccessCustomPage({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> customHtml,
    required TfArg<String> name,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'custom_html': customHtml,
           'name': name,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessCustomPageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}

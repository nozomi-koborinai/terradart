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
final class DataCloudflareZeroTrustAccessCustomPage extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_custom_page';

  DataCloudflareZeroTrustAccessCustomPage({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> customPageId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'custom_page_id': customPageId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessCustomPageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_html` attribute.
  TfRef<String> get customHtml => TfRef.attribute<String>(this, 'custom_html');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}

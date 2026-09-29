// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_custom_page.dart';

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId, 'custom_page_id': customPageId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessCustomPageSensitive;

  /// A reference to the `cloudflare_zero_trust_access_custom_page` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessCustomPage>`.
  RefTo<CloudflareZeroTrustAccessCustomPage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `contract_version` attribute.
  TfRef<num> get contractVersion =>
      TfRef.attribute<num>(this, 'contract_version');

  /// Reference to `custom_html` attribute.
  TfRef<String> get customHtml => TfRef.attribute<String>(this, 'custom_html');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}

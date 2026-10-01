// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_custom_page`.
const Set<String> _cloudflareZeroTrustAccessCustomPageSensitive = <String>{};

/// Zero Trust Access Custom Page enum for `type`.
enum ZeroTrustAccessCustomPageType implements TerraformEnum {
  identityDenied('identity_denied'),
  forbidden('forbidden'),
  login('login'),
  interstitial('interstitial');

  const ZeroTrustAccessCustomPageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_access_custom_page`.
///
/// Accepted Permissions
///
/// - `Access: Custom Pages Read` - `Access: Custom Pages Write`
final class CloudflareZeroTrustAccessCustomPage extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_custom_page';

  CloudflareZeroTrustAccessCustomPage({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? contractVersion,
    required TfArg<String> customHtml,
    required TfArg<String> name,
    required TfArg<ZeroTrustAccessCustomPageType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'contract_version': ?contractVersion,
           'custom_html': customHtml,
           'name': name,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessCustomPageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessCustomPage>`.
  RefTo<CloudflareZeroTrustAccessCustomPage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `contract_version` attribute.
  TfRef<num> get contractVersion =>
      TfRef.attribute<num>(this, 'contract_version');

  /// Reference to `custom_html` attribute.
  TfRef<String> get customHtml => TfRef.attribute<String>(this, 'custom_html');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account_dns_settings.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_dns_settings`.
const Set<String> _cloudflareAccountDnsSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_dns_settings`.
///
/// Accepted Permissions
///
/// - `Account DNS Settings Read` - `Account DNS Settings Write`
final class DataCloudflareAccountDnsSettings extends Data {
  static const String tfType = 'cloudflare_account_dns_settings';

  DataCloudflareAccountDnsSettings({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountDnsSettingsSensitive;

  /// A reference to the `cloudflare_account_dns_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccountDnsSettings>`.
  RefTo<CloudflareAccountDnsSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enforce_dns_only` attribute.
  TfRef<bool> get enforceDnsOnly =>
      TfRef.attribute<bool>(this, 'enforce_dns_only');
}

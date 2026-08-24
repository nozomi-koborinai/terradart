// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountDnsSettingsSensitive;

  /// Reference to `enforce_dns_only` attribute.
  TfRef<bool> get enforceDnsOnly =>
      TfRef.attribute<bool>(this, 'enforce_dns_only');
}

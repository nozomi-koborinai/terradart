// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_hostname_tls_settings`.
const Set<String> _cloudflareHostnameTlsSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_hostname_tls_settings`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareHostnameTlsSettings extends Data {
  static const String tfType = 'cloudflare_hostname_tls_settings';

  DataCloudflareHostnameTlsSettings({
    required super.localName,
    TfArg<num>? maxItems,
    required TfArg<String> settingId,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_items': ?maxItems,
           'setting_id': settingId,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHostnameTlsSettingsSensitive;
}

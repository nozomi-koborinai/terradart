// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_hostname_tls_settings`.
const Set<String> _cloudflareHostnameTlsSettingsSensitive = <String>{};

/// Data Hostname Tls Settings enum for `setting_id`.
extension type const DataHostnameTlsSettingsName._(TfArg<String> _)
    implements TfArg<String> {
  DataHostnameTlsSettingsName.variable(String name)
    : this._(TfArg.variable(name));
  DataHostnameTlsSettingsName.expression(String template)
    : this._(TfArg.expression(template));
  const DataHostnameTlsSettingsName.arg(TfArg<String> arg) : this._(arg);

  static const ciphers = DataHostnameTlsSettingsName._(TfArgLiteral('ciphers'));
  static const minTlsVersion = DataHostnameTlsSettingsName._(
    TfArgLiteral('min_tls_version'),
  );
  static const http2 = DataHostnameTlsSettingsName._(TfArgLiteral('http2'));

  static const List<DataHostnameTlsSettingsName> values = [
    ciphers,
    minTlsVersion,
    http2,
  ];
}

/// Factory wrapper for `cloudflare_hostname_tls_settings`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareHostnameTlsSettings extends Data {
  static const String tfType = 'cloudflare_hostname_tls_settings';

  DataCloudflareHostnameTlsSettings(
    super.localName, {
    TfArg<num>? maxItems,
    required DataHostnameTlsSettingsName settingId,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_items': ?maxItems,
           'setting_id': settingId,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHostnameTlsSettingsSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `setting_id` attribute.
  TfRef<String> get settingId => TfRef.attribute<String>(this, 'setting_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

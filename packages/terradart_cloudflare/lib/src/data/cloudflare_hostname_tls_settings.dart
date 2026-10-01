// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

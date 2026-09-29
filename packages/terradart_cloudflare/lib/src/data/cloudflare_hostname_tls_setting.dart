// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_hostname_tls_setting.dart';

/// Sensitive field paths for `cloudflare_hostname_tls_setting`.
const Set<String> _cloudflareHostnameTlsSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_hostname_tls_setting`.
final class DataCloudflareHostnameTlsSetting extends Data {
  static const String tfType = 'cloudflare_hostname_tls_setting';

  DataCloudflareHostnameTlsSetting({
    required super.localName,
    required TfArg<String> hostname,
    required TfArg<String> settingId,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'setting_id': settingId,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHostnameTlsSettingSensitive;

  /// A reference to the `cloudflare_hostname_tls_setting` this data source reads, for
  /// arguments typed `RefTo<CloudflareHostnameTlsSetting>`.
  RefTo<CloudflareHostnameTlsSetting> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}

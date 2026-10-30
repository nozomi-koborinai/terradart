// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_hostname_tls_setting.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_hostname_tls_setting`.
const Set<String> _cloudflareHostnameTlsSettingSensitive = <String>{};

/// Data Hostname Tls Setting enum for `setting_id`.
extension type const DataHostnameTlsSettingName._(TfArg<String> _)
    implements TfArg<String> {
  DataHostnameTlsSettingName.variable(String name)
    : this._(TfArg.variable(name));
  DataHostnameTlsSettingName.expression(String template)
    : this._(TfArg.expression(template));
  const DataHostnameTlsSettingName.arg(TfArg<String> arg) : this._(arg);

  static const ciphers = DataHostnameTlsSettingName._(TfArgLiteral('ciphers'));
  static const minTlsVersion = DataHostnameTlsSettingName._(
    TfArgLiteral('min_tls_version'),
  );
  static const http2 = DataHostnameTlsSettingName._(TfArgLiteral('http2'));

  static const List<DataHostnameTlsSettingName> values = [
    ciphers,
    minTlsVersion,
    http2,
  ];
}

/// Factory wrapper for `cloudflare_hostname_tls_setting`.
final class DataCloudflareHostnameTlsSetting extends Data {
  static const String tfType = 'cloudflare_hostname_tls_setting';

  DataCloudflareHostnameTlsSetting(
    super.localName, {
    required TfArg<String> hostname,
    required DataHostnameTlsSettingName settingId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'setting_id': settingId,
           'zone_id': ?zoneId?.encodeAs('id'),
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

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `setting_id` attribute.
  TfRef<String> get settingId => TfRef.attribute<String>(this, 'setting_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

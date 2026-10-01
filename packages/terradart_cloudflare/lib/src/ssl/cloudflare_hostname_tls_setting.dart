// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_hostname_tls_setting`.
const Set<String> _cloudflareHostnameTlsSettingSensitive = <String>{};

/// Hostname Tls Setting Setting enum for `setting_id`.
extension type const HostnameTlsSettingSettingId._(TfArg<String> _)
    implements TfArg<String> {
  HostnameTlsSettingSettingId.variable(String name)
    : this._(TfArg.variable(name));
  HostnameTlsSettingSettingId.expression(String template)
    : this._(TfArg.expression(template));
  const HostnameTlsSettingSettingId.arg(TfArg<String> arg) : this._(arg);

  static const ciphers = HostnameTlsSettingSettingId._(TfArgLiteral('ciphers'));
  static const minTlsVersion = HostnameTlsSettingSettingId._(
    TfArgLiteral('min_tls_version'),
  );
  static const http2 = HostnameTlsSettingSettingId._(TfArgLiteral('http2'));

  static const List<HostnameTlsSettingSettingId> values = [
    ciphers,
    minTlsVersion,
    http2,
  ];
}

/// Factory wrapper for `cloudflare_hostname_tls_setting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Write`
final class CloudflareHostnameTlsSetting extends Resource {
  static const String tfType = 'cloudflare_hostname_tls_setting';

  CloudflareHostnameTlsSetting(
    super.localName, {
    required TfArg<String> hostname,
    required HostnameTlsSettingSettingId settingId,
    required TfArg<Object?> value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'setting_id': settingId,
           'value': value,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHostnameTlsSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareHostnameTlsSetting>`.
  RefTo<CloudflareHostnameTlsSetting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `setting_id` attribute.
  TfRef<String> get settingId => TfRef.attribute<String>(this, 'setting_id');

  /// Reference to `value` attribute.
  TfRef<Object?> get value => TfRef.attribute<Object?>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

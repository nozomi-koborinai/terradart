// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_hostname_tls_setting`.
const Set<String> _cloudflareHostnameTlsSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_hostname_tls_setting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareHostnameTlsSetting extends Resource {
  static const String tfType = 'cloudflare_hostname_tls_setting';

  CloudflareHostnameTlsSetting({
    required super.localName,
    required TfArg<String> hostname,
    required TfArg<String> settingId,
    required TfArg<Object?> value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'setting_id': settingId,
           'value': value,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHostnameTlsSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}

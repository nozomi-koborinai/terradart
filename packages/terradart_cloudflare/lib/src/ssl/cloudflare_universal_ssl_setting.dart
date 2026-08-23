// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_universal_ssl_setting`.
const Set<String> _cloudflareUniversalSslSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_universal_ssl_setting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareUniversalSslSetting extends Resource {
  static const String tfType = 'cloudflare_universal_ssl_setting';

  CloudflareUniversalSslSetting({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {if (enabled != null) 'enabled': enabled, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUniversalSslSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

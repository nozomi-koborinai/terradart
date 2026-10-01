// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': ?enabled, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUniversalSslSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareUniversalSslSetting>`.
  RefTo<CloudflareUniversalSslSetting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

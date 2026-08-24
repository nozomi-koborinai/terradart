// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_auto_origin_tls_kex`.
const Set<String> _cloudflareZoneAutoOriginTlsKexSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_auto_origin_tls_kex`.
final class CloudflareZoneAutoOriginTlsKex extends Resource {
  static const String tfType = 'cloudflare_zone_auto_origin_tls_kex';

  CloudflareZoneAutoOriginTlsKex({
    required super.localName,
    required TfArg<bool> enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': enabled, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneAutoOriginTlsKexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

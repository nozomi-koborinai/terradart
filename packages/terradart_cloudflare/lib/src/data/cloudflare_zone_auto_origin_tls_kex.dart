// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_auto_origin_tls_kex.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_auto_origin_tls_kex`.
const Set<String> _cloudflareZoneAutoOriginTlsKexSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_auto_origin_tls_kex`.
final class DataCloudflareZoneAutoOriginTlsKex extends Data {
  static const String tfType = 'cloudflare_zone_auto_origin_tls_kex';

  DataCloudflareZoneAutoOriginTlsKex({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareZoneAutoOriginTlsKexSensitive;

  /// A reference to the `cloudflare_zone_auto_origin_tls_kex` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneAutoOriginTlsKex>`.
  RefTo<CloudflareZoneAutoOriginTlsKex> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

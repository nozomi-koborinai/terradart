// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_cache_reserve`.
const Set<String> _cloudflareZoneCacheReserveSensitive = <String>{};

/// Zone Cache Reserve enum for `value`.
enum ZoneCacheReserveValue implements TerraformEnum {
  on('on'),
  off('off');

  const ZoneCacheReserveValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zone_cache_reserve`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareZoneCacheReserve extends Resource {
  static const String tfType = 'cloudflare_zone_cache_reserve';

  CloudflareZoneCacheReserve(
    super.localName, {
    TfArg<ZoneCacheReserveValue>? value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'value': ?value, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneCacheReserveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneCacheReserve>`.
  RefTo<CloudflareZoneCacheReserve> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

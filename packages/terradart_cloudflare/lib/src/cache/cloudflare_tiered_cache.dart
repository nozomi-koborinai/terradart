// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_tiered_cache`.
const Set<String> _cloudflareTieredCacheSensitive = <String>{};

/// Tiered Cache enum for `value`.
extension type const TieredCacheValue._(TfArg<String> _)
    implements TfArg<String> {
  TieredCacheValue.variable(String name) : this._(TfArg.variable(name));
  TieredCacheValue.expression(String template)
    : this._(TfArg.expression(template));
  const TieredCacheValue.arg(TfArg<String> arg) : this._(arg);

  static const on = TieredCacheValue._(TfArgLiteral('on'));
  static const off = TieredCacheValue._(TfArgLiteral('off'));

  static const List<TieredCacheValue> values = [on, off];
}

/// Factory wrapper for `cloudflare_tiered_cache`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareTieredCache extends Resource {
  static const String tfType = 'cloudflare_tiered_cache';

  CloudflareTieredCache(
    super.localName, {
    required TieredCacheValue value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTieredCacheSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTieredCache>`.
  RefTo<CloudflareTieredCache> get ref => RefTo.of(this);

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

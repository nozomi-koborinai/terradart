// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_regional_tiered_cache`.
const Set<String> _cloudflareRegionalTieredCacheSensitive = <String>{};

/// Regional Tiered Cache enum for `value`.
enum RegionalTieredCacheValue implements TerraformEnum {
  on('on'),
  off('off');

  const RegionalTieredCacheValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_regional_tiered_cache`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareRegionalTieredCache extends Resource {
  static const String tfType = 'cloudflare_regional_tiered_cache';

  CloudflareRegionalTieredCache({
    required super.localName,
    TfArg<RegionalTieredCacheValue>? value,
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
  Set<String> get sensitiveFields => _cloudflareRegionalTieredCacheSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareRegionalTieredCache>`.
  RefTo<CloudflareRegionalTieredCache> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

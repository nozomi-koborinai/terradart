// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_cache_reserve`.
const Set<String> _cloudflareZoneCacheReserveSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_cache_reserve`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareZoneCacheReserve extends Resource {
  static const String tfType = 'cloudflare_zone_cache_reserve';

  CloudflareZoneCacheReserve({
    required super.localName,
    TfArg<String>? value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {if (value != null) 'value': value, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneCacheReserveSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_cache_variants.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_cache_variants`.
const Set<String> _cloudflareZoneCacheVariantsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_cache_variants`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class DataCloudflareZoneCacheVariants extends Data {
  static const String tfType = 'cloudflare_zone_cache_variants';

  DataCloudflareZoneCacheVariants({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneCacheVariantsSensitive;

  /// A reference to the `cloudflare_zone_cache_variants` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneCacheVariants>`.
  RefTo<CloudflareZoneCacheVariants> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

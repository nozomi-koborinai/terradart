// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneCacheVariantsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

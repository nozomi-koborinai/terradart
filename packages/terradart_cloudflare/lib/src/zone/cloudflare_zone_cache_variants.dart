// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_cache_variants`.
const Set<String> _cloudflareZoneCacheVariantsSensitive = <String>{};

/// Typed helper for the `value` block of
/// `cloudflare_zone_cache_variants` (derived from provider schema).
@immutable
final class ZoneCacheVariantsValue {
  const ZoneCacheVariantsValue({
    this.avif,
    this.bmp,
    this.gif,
    this.jp2,
    this.jpeg,
    this.jpg,
    this.jpg2,
    this.png,
    this.tif,
    this.tiff,
    this.webp,
  });

  final TfArg<List<Object?>>? avif;

  final TfArg<List<Object?>>? bmp;

  final TfArg<List<Object?>>? gif;

  final TfArg<List<Object?>>? jp2;

  final TfArg<List<Object?>>? jpeg;

  final TfArg<List<Object?>>? jpg;

  final TfArg<List<Object?>>? jpg2;

  final TfArg<List<Object?>>? png;

  final TfArg<List<Object?>>? tif;

  final TfArg<List<Object?>>? tiff;

  final TfArg<List<Object?>>? webp;

  Map<String, Object?> encode() => {
    if (avif != null) 'avif': avif!.toTfJson(),
    if (bmp != null) 'bmp': bmp!.toTfJson(),
    if (gif != null) 'gif': gif!.toTfJson(),
    if (jp2 != null) 'jp2': jp2!.toTfJson(),
    if (jpeg != null) 'jpeg': jpeg!.toTfJson(),
    if (jpg != null) 'jpg': jpg!.toTfJson(),
    if (jpg2 != null) 'jpg2': jpg2!.toTfJson(),
    if (png != null) 'png': png!.toTfJson(),
    if (tif != null) 'tif': tif!.toTfJson(),
    if (tiff != null) 'tiff': tiff!.toTfJson(),
    if (webp != null) 'webp': webp!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_cache_variants`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareZoneCacheVariants extends Resource {
  static const String tfType = 'cloudflare_zone_cache_variants';

  CloudflareZoneCacheVariants({
    required super.localName,
    required TfArg<String> zoneId,
    required ZoneCacheVariantsValue value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': zoneId, 'value': TfArg.literal(value.encode())},
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

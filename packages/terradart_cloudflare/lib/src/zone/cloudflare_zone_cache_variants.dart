// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  final TfArg<List<String>>? avif;

  final TfArg<List<String>>? bmp;

  final TfArg<List<String>>? gif;

  final TfArg<List<String>>? jp2;

  final TfArg<List<String>>? jpeg;

  final TfArg<List<String>>? jpg;

  final TfArg<List<String>>? jpg2;

  final TfArg<List<String>>? png;

  final TfArg<List<String>>? tif;

  final TfArg<List<String>>? tiff;

  final TfArg<List<String>>? webp;

  Map<String, Object?> encode() => {
    'avif': ?avif?.toTfJson(),
    'bmp': ?bmp?.toTfJson(),
    'gif': ?gif?.toTfJson(),
    'jp2': ?jp2?.toTfJson(),
    'jpeg': ?jpeg?.toTfJson(),
    'jpg': ?jpg?.toTfJson(),
    'jpg2': ?jpg2?.toTfJson(),
    'png': ?png?.toTfJson(),
    'tif': ?tif?.toTfJson(),
    'tiff': ?tiff?.toTfJson(),
    'webp': ?webp?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_cache_variants`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class CloudflareZoneCacheVariants extends Resource {
  static const String tfType = 'cloudflare_zone_cache_variants';

  CloudflareZoneCacheVariants(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    required ZoneCacheVariantsValue value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'value': TfArg.literal(value.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneCacheVariantsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneCacheVariants>`.
  RefTo<CloudflareZoneCacheVariants> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

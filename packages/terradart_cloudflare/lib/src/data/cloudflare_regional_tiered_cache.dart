// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cache/cloudflare_regional_tiered_cache.dart';

/// Sensitive field paths for `cloudflare_regional_tiered_cache`.
const Set<String> _cloudflareRegionalTieredCacheSensitive = <String>{};

/// Factory wrapper for `cloudflare_regional_tiered_cache`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class DataCloudflareRegionalTieredCache extends Data {
  static const String tfType = 'cloudflare_regional_tiered_cache';

  DataCloudflareRegionalTieredCache({
    required super.localName,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': ?zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareRegionalTieredCacheSensitive;

  /// A reference to the `cloudflare_regional_tiered_cache` this data source reads, for
  /// arguments typed `RefTo<CloudflareRegionalTieredCache>`.
  RefTo<CloudflareRegionalTieredCache> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}

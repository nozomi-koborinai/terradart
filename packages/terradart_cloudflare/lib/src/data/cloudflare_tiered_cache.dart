// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_tiered_cache`.
const Set<String> _cloudflareTieredCacheSensitive = <String>{};

/// Factory wrapper for `cloudflare_tiered_cache`.
///
/// Accepted Permissions
///
/// - `Zone Read` - `Zone Settings Read` - `Zone Settings Write` - `Zone Write`
final class DataCloudflareTieredCache extends Data {
  static const String tfType = 'cloudflare_tiered_cache';

  DataCloudflareTieredCache({required super.localName, TfArg<String>? zoneId})
    : super(
        terraformType: tfType,
        argMap: {if (zoneId != null) 'zone_id': zoneId},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareTieredCacheSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}

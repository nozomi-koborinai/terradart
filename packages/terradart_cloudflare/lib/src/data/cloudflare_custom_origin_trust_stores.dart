// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_origin_trust_stores`.
const Set<String> _cloudflareCustomOriginTrustStoresSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_origin_trust_stores`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomOriginTrustStores extends Data {
  static const String tfType = 'cloudflare_custom_origin_trust_stores';

  DataCloudflareCustomOriginTrustStores({
    required super.localName,
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'limit': ?limit,
           'max_items': ?maxItems,
           'offset': ?offset,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCustomOriginTrustStoresSensitive;

  /// Reference to `limit` attribute.
  TfRef<num> get limitRef => TfRef.attribute<num>(this, 'limit');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `offset` attribute.
  TfRef<num> get offsetRef => TfRef.attribute<num>(this, 'offset');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

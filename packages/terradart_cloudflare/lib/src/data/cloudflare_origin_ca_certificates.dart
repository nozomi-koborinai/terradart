// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_ca_certificates`.
const Set<String> _cloudflareOriginCaCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_ca_certificates`.
final class DataCloudflareOriginCaCertificates extends Data {
  static const String tfType = 'cloudflare_origin_ca_certificates';

  DataCloudflareOriginCaCertificates(
    super.localName, {
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'limit': ?limit,
           'max_items': ?maxItems,
           'offset': ?offset,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificatesSensitive;

  /// Reference to `limit` attribute.
  TfRef<num> get limit => TfRef.attribute<num>(this, 'limit');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `offset` attribute.
  TfRef<num> get offset => TfRef.attribute<num>(this, 'offset');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

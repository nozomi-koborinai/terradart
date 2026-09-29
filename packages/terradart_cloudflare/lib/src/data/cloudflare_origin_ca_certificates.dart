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

  DataCloudflareOriginCaCertificates({
    required super.localName,
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
}

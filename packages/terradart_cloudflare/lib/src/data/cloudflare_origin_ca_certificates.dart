// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (limit != null) 'limit': limit,
           if (maxItems != null) 'max_items': maxItems,
           if (offset != null) 'offset': offset,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificatesSensitive;
}

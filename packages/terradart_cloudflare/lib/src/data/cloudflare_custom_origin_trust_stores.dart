// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (limit != null) 'limit': limit,
           if (maxItems != null) 'max_items': maxItems,
           if (offset != null) 'offset': offset,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCustomOriginTrustStoresSensitive;
}

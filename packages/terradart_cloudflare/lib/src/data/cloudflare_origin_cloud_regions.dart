// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_cloud_regions`.
const Set<String> _cloudflareOriginCloudRegionsSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_cloud_regions`.
final class DataCloudflareOriginCloudRegions extends Data {
  static const String tfType = 'cloudflare_origin_cloud_regions';

  DataCloudflareOriginCloudRegions({
    required super.localName,
    TfArg<num>? maxItems,
    required TfArg<String> zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCloudRegionsSensitive;
}

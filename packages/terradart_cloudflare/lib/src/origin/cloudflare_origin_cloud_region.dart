// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_cloud_region`.
const Set<String> _cloudflareOriginCloudRegionSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_cloud_region`.
final class CloudflareOriginCloudRegion extends Resource {
  static const String tfType = 'cloudflare_origin_cloud_region';

  CloudflareOriginCloudRegion({
    required super.localName,
    required TfArg<String> originIp,
    required TfArg<String> region,
    required TfArg<String> vendor,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'origin_ip': originIp,
           'region': region,
           'vendor': vendor,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCloudRegionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

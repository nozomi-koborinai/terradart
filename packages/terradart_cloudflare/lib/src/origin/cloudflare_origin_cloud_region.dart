// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_cloud_region`.
const Set<String> _cloudflareOriginCloudRegionSensitive = <String>{};

/// Origin Cloud Region enum for `vendor`.
enum OriginCloudRegionVendor implements TerraformEnum {
  aws('aws'),
  azure('azure'),
  gcp('gcp'),
  oci('oci');

  const OriginCloudRegionVendor(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_origin_cloud_region`.
final class CloudflareOriginCloudRegion extends Resource {
  static const String tfType = 'cloudflare_origin_cloud_region';

  CloudflareOriginCloudRegion({
    required super.localName,
    required TfArg<String> originIp,
    required TfArg<String> region,
    required TfArg<OriginCloudRegionVendor> vendor,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'origin_ip': originIp,
           'region': region,
           'vendor': vendor,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCloudRegionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareOriginCloudRegion>`.
  RefTo<CloudflareOriginCloudRegion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}

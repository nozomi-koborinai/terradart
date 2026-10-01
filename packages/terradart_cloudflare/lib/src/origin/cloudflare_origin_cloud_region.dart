// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_cloud_region`.
const Set<String> _cloudflareOriginCloudRegionSensitive = <String>{};

/// Origin Cloud Region enum for `vendor`.
extension type const OriginCloudRegionVendor._(TfArg<String> _)
    implements TfArg<String> {
  OriginCloudRegionVendor.variable(String name) : this._(TfArg.variable(name));
  OriginCloudRegionVendor.expression(String template)
    : this._(TfArg.expression(template));
  const OriginCloudRegionVendor.arg(TfArg<String> arg) : this._(arg);

  static const aws = OriginCloudRegionVendor._(TfArgLiteral('aws'));
  static const azure = OriginCloudRegionVendor._(TfArgLiteral('azure'));
  static const gcp = OriginCloudRegionVendor._(TfArgLiteral('gcp'));
  static const oci = OriginCloudRegionVendor._(TfArgLiteral('oci'));

  static const List<OriginCloudRegionVendor> values = [aws, azure, gcp, oci];
}

/// Factory wrapper for `cloudflare_origin_cloud_region`.
final class CloudflareOriginCloudRegion extends Resource {
  static const String tfType = 'cloudflare_origin_cloud_region';

  CloudflareOriginCloudRegion(
    super.localName, {
    required TfArg<String> originIp,
    required TfArg<String> region,
    required OriginCloudRegionVendor vendor,
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

  /// Reference to `origin_ip` attribute.
  TfRef<String> get originIp => TfRef.attribute<String>(this, 'origin_ip');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vendor` attribute.
  TfRef<String> get vendor => TfRef.attribute<String>(this, 'vendor');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

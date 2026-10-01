// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_certificates`.
const Set<String> _cloudflareAuthenticatedOriginPullsCertificatesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_certificates`.
final class DataCloudflareAuthenticatedOriginPullsCertificates extends Data {
  static const String tfType =
      'cloudflare_authenticated_origin_pulls_certificates';

  DataCloudflareAuthenticatedOriginPullsCertificates(
    super.localName, {
    TfArg<num>? maxItems,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsCertificatesSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

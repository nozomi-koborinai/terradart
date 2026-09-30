// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_certificate_packs`.
const Set<String> _cloudflareCertificatePacksSensitive = <String>{};

/// Factory wrapper for `cloudflare_certificate_packs`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCertificatePacks extends Data {
  static const String tfType = 'cloudflare_certificate_packs';

  DataCloudflareCertificatePacks({
    required super.localName,
    TfArg<String>? deploy,
    TfArg<num>? maxItems,
    TfArg<String>? status,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deploy': ?deploy,
           'max_items': ?maxItems,
           'status': ?status,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCertificatePacksSensitive;

  /// Reference to `deploy` attribute.
  TfRef<String> get deployRef => TfRef.attribute<String>(this, 'deploy');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_client_certificates`.
const Set<String> _cloudflareClientCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_client_certificates`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareClientCertificates extends Data {
  static const String tfType = 'cloudflare_client_certificates';

  DataCloudflareClientCertificates(
    super.localName, {
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
    TfArg<String>? status,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'limit': ?limit,
           'max_items': ?maxItems,
           'offset': ?offset,
           'status': ?status,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareClientCertificatesSensitive;

  /// Reference to `limit` attribute.
  TfRef<num> get limit => TfRef.attribute<num>(this, 'limit');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `offset` attribute.
  TfRef<num> get offset => TfRef.attribute<num>(this, 'offset');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

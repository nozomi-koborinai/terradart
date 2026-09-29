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

  DataCloudflareClientCertificates({
    required super.localName,
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
}

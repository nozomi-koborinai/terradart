// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_hostname_certificates`.
const Set<String>
_cloudflareAuthenticatedOriginPullsHostnameCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_hostname_certificates`.
final class DataCloudflareAuthenticatedOriginPullsHostnameCertificates
    extends Data {
  static const String tfType =
      'cloudflare_authenticated_origin_pulls_hostname_certificates';

  DataCloudflareAuthenticatedOriginPullsHostnameCertificates({
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
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsHostnameCertificatesSensitive;
}

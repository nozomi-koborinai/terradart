// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_keyless_certificates`.
const Set<String> _cloudflareKeylessCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_keyless_certificates`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareKeylessCertificates extends Data {
  static const String tfType = 'cloudflare_keyless_certificates';

  DataCloudflareKeylessCertificates({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareKeylessCertificatesSensitive;
}

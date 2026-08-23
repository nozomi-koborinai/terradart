// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deploy != null) 'deploy': deploy,
           if (maxItems != null) 'max_items': maxItems,
           if (status != null) 'status': status,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCertificatePacksSensitive;
}

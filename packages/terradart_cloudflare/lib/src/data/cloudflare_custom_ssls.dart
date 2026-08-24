// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_ssls`.
const Set<String> _cloudflareCustomSslsSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_ssls`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomSsls extends Data {
  static const String tfType = 'cloudflare_custom_ssls';

  DataCloudflareCustomSsls({
    required super.localName,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? status,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (match != null) 'match': match,
           if (maxItems != null) 'max_items': maxItems,
           if (status != null) 'status': status,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomSslsSensitive;
}

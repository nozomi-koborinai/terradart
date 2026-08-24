// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_content_scanning_expressions`.
const Set<String> _cloudflareContentScanningExpressionsSensitive = <String>{};

/// Factory wrapper for `cloudflare_content_scanning_expressions`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class DataCloudflareContentScanningExpressions extends Data {
  static const String tfType = 'cloudflare_content_scanning_expressions';

  DataCloudflareContentScanningExpressions({
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
  Set<String> get sensitiveFields =>
      _cloudflareContentScanningExpressionsSensitive;
}

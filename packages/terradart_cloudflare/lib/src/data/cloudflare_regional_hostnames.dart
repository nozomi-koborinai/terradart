// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_regional_hostnames`.
const Set<String> _cloudflareRegionalHostnamesSensitive = <String>{};

/// Factory wrapper for `cloudflare_regional_hostnames`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareRegionalHostnames extends Data {
  static const String tfType = 'cloudflare_regional_hostnames';

  DataCloudflareRegionalHostnames({
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
  Set<String> get sensitiveFields => _cloudflareRegionalHostnamesSensitive;
}

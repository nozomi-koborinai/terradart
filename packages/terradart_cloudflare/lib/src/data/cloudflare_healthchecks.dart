// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_healthchecks`.
const Set<String> _cloudflareHealthchecksSensitive = <String>{};

/// Factory wrapper for `cloudflare_healthchecks`.
///
/// Accepted Permissions
///
/// - `Health Checks Read` - `Health Checks Write`
final class DataCloudflareHealthchecks extends Data {
  static const String tfType = 'cloudflare_healthchecks';

  DataCloudflareHealthchecks({
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
  Set<String> get sensitiveFields => _cloudflareHealthchecksSensitive;
}

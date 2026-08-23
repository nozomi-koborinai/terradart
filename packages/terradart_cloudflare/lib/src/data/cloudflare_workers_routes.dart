// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_routes`.
const Set<String> _cloudflareWorkersRoutesSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_routes`.
///
/// Accepted Permissions
///
/// - `Workers Routes Read` - `Workers Routes Write`
final class DataCloudflareWorkersRoutes extends Data {
  static const String tfType = 'cloudflare_workers_routes';

  DataCloudflareWorkersRoutes({
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
  Set<String> get sensitiveFields => _cloudflareWorkersRoutesSensitive;
}

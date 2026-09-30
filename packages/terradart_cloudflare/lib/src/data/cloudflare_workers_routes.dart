// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersRoutesSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

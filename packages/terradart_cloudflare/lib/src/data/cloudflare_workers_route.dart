// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_route`.
const Set<String> _cloudflareWorkersRouteSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_route`.
///
/// Accepted Permissions
///
/// - `Workers Routes Read` - `Workers Routes Write`
final class DataCloudflareWorkersRoute extends Data {
  static const String tfType = 'cloudflare_workers_route';

  DataCloudflareWorkersRoute({
    required super.localName,
    required TfArg<String> routeId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'route_id': routeId, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');
}

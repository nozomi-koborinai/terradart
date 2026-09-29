// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_workers_route`.
const Set<String> _cloudflareWorkersRouteSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_route`.
///
/// Accepted Permissions
///
/// - `Workers Routes Read` - `Workers Routes Write`
final class CloudflareWorkersRoute extends Resource {
  static const String tfType = 'cloudflare_workers_route';

  CloudflareWorkersRoute({
    required super.localName,
    required TfArg<String> pattern,
    TfArg<String>? script,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pattern': pattern,
           'script': ?script,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersRoute>`.
  RefTo<CloudflareWorkersRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

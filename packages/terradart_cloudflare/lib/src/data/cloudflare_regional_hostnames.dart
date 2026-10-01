// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_regional_hostnames`.
const Set<String> _cloudflareRegionalHostnamesSensitive = <String>{};

/// Factory wrapper for `cloudflare_regional_hostnames`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareRegionalHostnames extends Data {
  static const String tfType = 'cloudflare_regional_hostnames';

  DataCloudflareRegionalHostnames(
    super.localName, {
    TfArg<num>? maxItems,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegionalHostnamesSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

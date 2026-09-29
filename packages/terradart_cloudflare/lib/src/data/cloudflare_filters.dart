// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_filters`.
const Set<String> _cloudflareFiltersSensitive = <String>{};

/// Factory wrapper for `cloudflare_filters`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareFilters extends Data {
  static const String tfType = 'cloudflare_filters';

  DataCloudflareFilters({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? expression,
    TfArg<num>? maxItems,
    TfArg<bool>? paused,
    TfArg<String>? ref,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'expression': ?expression,
           'max_items': ?maxItems,
           'paused': ?paused,
           'ref': ?ref,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFiltersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

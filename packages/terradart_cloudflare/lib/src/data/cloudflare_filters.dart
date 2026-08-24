// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (expression != null) 'expression': expression,
           if (maxItems != null) 'max_items': maxItems,
           if (paused != null) 'paused': paused,
           if (ref != null) 'ref': ref,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFiltersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

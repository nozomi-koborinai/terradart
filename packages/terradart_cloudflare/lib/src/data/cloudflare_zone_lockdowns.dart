// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_lockdowns`.
const Set<String> _cloudflareZoneLockdownsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_lockdowns`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareZoneLockdowns extends Data {
  static const String tfType = 'cloudflare_zone_lockdowns';

  DataCloudflareZoneLockdowns({
    required super.localName,
    TfArg<String>? createdOn,
    TfArg<String>? description,
    TfArg<String>? descriptionSearch,
    TfArg<String>? ip,
    TfArg<String>? ipRangeSearch,
    TfArg<String>? ipSearch,
    TfArg<num>? maxItems,
    TfArg<String>? modifiedOn,
    TfArg<num>? priority,
    TfArg<String>? uriSearch,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'created_on': ?createdOn,
           'description': ?description,
           'description_search': ?descriptionSearch,
           'ip': ?ip,
           'ip_range_search': ?ipRangeSearch,
           'ip_search': ?ipSearch,
           'max_items': ?maxItems,
           'modified_on': ?modifiedOn,
           'priority': ?priority,
           'uri_search': ?uriSearch,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownsSensitive;
}

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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (createdOn != null) 'created_on': createdOn,
           if (description != null) 'description': description,
           if (descriptionSearch != null)
             'description_search': descriptionSearch,
           if (ip != null) 'ip': ip,
           if (ipRangeSearch != null) 'ip_range_search': ipRangeSearch,
           if (ipSearch != null) 'ip_search': ipSearch,
           if (maxItems != null) 'max_items': maxItems,
           if (modifiedOn != null) 'modified_on': modifiedOn,
           if (priority != null) 'priority': priority,
           if (uriSearch != null) 'uri_search': uriSearch,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownsSensitive;
}

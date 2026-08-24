// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_rules`.
const Set<String> _cloudflareEmailRoutingRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_rules`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class DataCloudflareEmailRoutingRules extends Data {
  static const String tfType = 'cloudflare_email_routing_rules';

  DataCloudflareEmailRoutingRules({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingRulesSensitive;
}

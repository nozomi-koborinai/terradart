// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_agent_blocking_rules`.
const Set<String> _cloudflareUserAgentBlockingRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_user_agent_blocking_rules`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareUserAgentBlockingRules extends Data {
  static const String tfType = 'cloudflare_user_agent_blocking_rules';

  DataCloudflareUserAgentBlockingRules({
    required super.localName,
    TfArg<String>? description,
    TfArg<num>? maxItems,
    TfArg<bool>? paused,
    TfArg<String>? userAgent,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (maxItems != null) 'max_items': maxItems,
           if (paused != null) 'paused': paused,
           if (userAgent != null) 'user_agent': userAgent,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserAgentBlockingRulesSensitive;
}

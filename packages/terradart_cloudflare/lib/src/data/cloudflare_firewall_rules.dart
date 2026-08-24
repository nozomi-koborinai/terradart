// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_firewall_rules`.
const Set<String> _cloudflareFirewallRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_firewall_rules`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareFirewallRules extends Data {
  static const String tfType = 'cloudflare_firewall_rules';

  DataCloudflareFirewallRules({
    required super.localName,
    TfArg<String>? action,
    TfArg<String>? description,
    TfArg<num>? maxItems,
    TfArg<bool>? paused,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (action != null) 'action': action,
           if (description != null) 'description': description,
           if (maxItems != null) 'max_items': maxItems,
           if (paused != null) 'paused': paused,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFirewallRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

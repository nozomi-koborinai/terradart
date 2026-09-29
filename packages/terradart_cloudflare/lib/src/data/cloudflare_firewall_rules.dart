// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': ?action,
           'description': ?description,
           'max_items': ?maxItems,
           'paused': ?paused,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFirewallRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

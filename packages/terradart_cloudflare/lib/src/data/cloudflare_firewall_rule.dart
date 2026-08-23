// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_firewall_rule`.
const Set<String> _cloudflareFirewallRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_firewall_rule`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareFirewallRule extends Data {
  static const String tfType = 'cloudflare_firewall_rule';

  DataCloudflareFirewallRule({
    required super.localName,
    TfArg<String>? ruleId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ruleId != null) 'rule_id': ruleId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFirewallRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `products` attribute.
  TfRef<List<String>> get products =>
      TfRef.attribute<List<String>>(this, 'products');

  /// Reference to `ref` attribute.
  TfRef<String> get ref => TfRef.attribute<String>(this, 'ref');
}

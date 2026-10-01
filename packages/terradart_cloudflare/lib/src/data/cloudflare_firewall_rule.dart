// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../security/cloudflare_firewall_rule.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'rule_id': ?ruleId, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFirewallRuleSensitive;

  /// A reference to the `cloudflare_firewall_rule` this data source reads, for
  /// arguments typed `RefTo<CloudflareFirewallRule>`.
  RefTo<CloudflareFirewallRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
  TfRef<String> get refAttr => TfRef.attribute<String>(this, 'ref');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

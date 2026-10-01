// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_routing_rule.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_routing_rule`.
const Set<String> _cloudflareEmailRoutingRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class DataEmailRoutingRuleFilter {
  const DataEmailRoutingRuleFilter({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `cloudflare_email_routing_rule`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class DataCloudflareEmailRoutingRule extends Data {
  static const String tfType = 'cloudflare_email_routing_rule';

  DataCloudflareEmailRoutingRule(
    super.localName, {
    TfArg<String>? ruleIdentifier,
    RefTo<CloudflareZone>? zoneId,
    DataEmailRoutingRuleFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rule_identifier': ?ruleIdentifier,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingRuleSensitive;

  /// A reference to the `cloudflare_email_routing_rule` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailRoutingRule>`.
  RefTo<CloudflareEmailRoutingRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `rule_identifier` attribute.
  TfRef<String> get ruleIdentifier =>
      TfRef.attribute<String>(this, 'rule_identifier');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

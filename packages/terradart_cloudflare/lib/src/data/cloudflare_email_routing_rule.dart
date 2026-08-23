// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_rule`.
const Set<String> _cloudflareEmailRoutingRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class DataEmailRoutingRuleFilter {
  const DataEmailRoutingRuleFilter({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_routing_rule`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class DataCloudflareEmailRoutingRule extends Data {
  static const String tfType = 'cloudflare_email_routing_rule';

  DataCloudflareEmailRoutingRule({
    required super.localName,
    TfArg<String>? ruleIdentifier,
    TfArg<String>? zoneId,
    DataEmailRoutingRuleFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ruleIdentifier != null) 'rule_identifier': ruleIdentifier,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

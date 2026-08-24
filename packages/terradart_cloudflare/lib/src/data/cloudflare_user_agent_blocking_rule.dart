// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_agent_blocking_rule`.
const Set<String> _cloudflareUserAgentBlockingRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_user_agent_blocking_rule` (derived from provider schema).
@immutable
final class DataUserAgentBlockingRuleFilter {
  const DataUserAgentBlockingRuleFilter({
    this.description,
    this.paused,
    this.userAgent,
  });

  final TfArg<String>? description;

  final TfArg<bool>? paused;

  final TfArg<String>? userAgent;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (paused != null) 'paused': paused!.toTfJson(),
    if (userAgent != null) 'user_agent': userAgent!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_user_agent_blocking_rule`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareUserAgentBlockingRule extends Data {
  static const String tfType = 'cloudflare_user_agent_blocking_rule';

  DataCloudflareUserAgentBlockingRule({
    required super.localName,
    TfArg<String>? uaRuleId,
    TfArg<String>? zoneId,
    DataUserAgentBlockingRuleFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (uaRuleId != null) 'ua_rule_id': uaRuleId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserAgentBlockingRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'max_items': ?maxItems,
           'paused': ?paused,
           'user_agent': ?userAgent,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserAgentBlockingRulesSensitive;

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `user_agent` attribute.
  TfRef<String> get userAgent => TfRef.attribute<String>(this, 'user_agent');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

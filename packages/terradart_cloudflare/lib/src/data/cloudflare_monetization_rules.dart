// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monetization/cloudflare_monetization_rules.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_monetization_rules`.
const Set<String> _cloudflareMonetizationRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_monetization_rules`.
final class DataCloudflareMonetizationRules extends Data {
  static const String tfType = 'cloudflare_monetization_rules';

  DataCloudflareMonetizationRules(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareMonetizationRulesSensitive;

  /// A reference to the `cloudflare_monetization_rules` this data source reads, for
  /// arguments typed `RefTo<CloudflareMonetizationRules>`.
  RefTo<CloudflareMonetizationRules> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

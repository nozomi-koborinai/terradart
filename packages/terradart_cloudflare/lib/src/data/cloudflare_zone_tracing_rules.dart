// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_tracing_rules.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_tracing_rules`.
const Set<String> _cloudflareZoneTracingRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_tracing_rules`.
final class DataCloudflareZoneTracingRules extends Data {
  static const String tfType = 'cloudflare_zone_tracing_rules';

  DataCloudflareZoneTracingRules({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingRulesSensitive;

  /// A reference to the `cloudflare_zone_tracing_rules` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneTracingRules>`.
  RefTo<CloudflareZoneTracingRules> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

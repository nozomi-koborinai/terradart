// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_tracing_rules`.
const Set<String> _cloudflareZoneTracingRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_tracing_rules`.
final class DataCloudflareZoneTracingRules extends Data {
  static const String tfType = 'cloudflare_zone_tracing_rules';

  DataCloudflareZoneTracingRules({
    required super.localName,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

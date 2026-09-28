// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_tracing`.
const Set<String> _cloudflareZoneTracingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_tracing`.
final class CloudflareZoneTracing extends Resource {
  static const String tfType = 'cloudflare_zone_tracing';

  CloudflareZoneTracing({
    required super.localName,
    TfArg<List<String>>? destinations,
    TfArg<bool>? enabled,
    TfArg<bool>? forwardContext,
    TfArg<bool>? persist,
    TfArg<String>? propagationPolicy,
    TfArg<num>? samplingRatio,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (destinations != null) 'destinations': destinations,
           if (enabled != null) 'enabled': enabled,
           if (forwardContext != null) 'forward_context': forwardContext,
           if (persist != null) 'persist': persist,
           if (propagationPolicy != null)
             'propagation_policy': propagationPolicy,
           if (samplingRatio != null) 'sampling_ratio': samplingRatio,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

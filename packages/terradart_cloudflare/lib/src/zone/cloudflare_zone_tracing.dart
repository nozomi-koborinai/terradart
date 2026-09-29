// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_tracing`.
const Set<String> _cloudflareZoneTracingSensitive = <String>{};

/// Zone Tracing Propagation enum for `propagation_policy`.
enum ZoneTracingPropagationPolicy implements TerraformEnum {
  accept('accept'),
  authenticated('authenticated'),
  reject('reject');

  const ZoneTracingPropagationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zone_tracing`.
final class CloudflareZoneTracing extends Resource {
  static const String tfType = 'cloudflare_zone_tracing';

  CloudflareZoneTracing({
    required super.localName,
    TfArg<List<String>>? destinations,
    TfArg<bool>? enabled,
    TfArg<bool>? forwardContext,
    TfArg<bool>? persist,
    TfArg<ZoneTracingPropagationPolicy>? propagationPolicy,
    TfArg<num>? samplingRatio,
    required RefTo<CloudflareZone> zoneId,
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
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneTracing>`.
  RefTo<CloudflareZoneTracing> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

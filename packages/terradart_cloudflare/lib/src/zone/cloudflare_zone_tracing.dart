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
///
/// Cloudflare Traces for a zone: samples `samplingRatio` (0 to 1) of
/// requests and sends the traces to up to 100 OpenTelemetry
/// `destinations`. Per-request overrides live on
/// `CloudflareZoneTracingRules`.
final class CloudflareZoneTracing extends Resource {
  static const String tfType = 'cloudflare_zone_tracing';

  CloudflareZoneTracing({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    TfArg<bool>? enabled,
    TfArg<num>? samplingRatio,
    TfArg<List<String>>? destinations,
    TfArg<ZoneTracingPropagationPolicy>? propagationPolicy,
    TfArg<bool>? forwardContext,
    TfArg<bool>? persist,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'enabled': ?enabled,
           'sampling_ratio': ?samplingRatio,
           'destinations': ?destinations,
           'propagation_policy': ?propagationPolicy,
           'forward_context': ?forwardContext,
           'persist': ?persist,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneTracing>`.
  RefTo<CloudflareZoneTracing> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destinations` attribute.
  TfRef<List<String>> get destinationsRef =>
      TfRef.attribute<List<String>>(this, 'destinations');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `forward_context` attribute.
  TfRef<bool> get forwardContextRef =>
      TfRef.attribute<bool>(this, 'forward_context');

  /// Reference to `persist` attribute.
  TfRef<bool> get persistRef => TfRef.attribute<bool>(this, 'persist');

  /// Reference to `propagation_policy` attribute.
  TfRef<String> get propagationPolicyRef =>
      TfRef.attribute<String>(this, 'propagation_policy');

  /// Reference to `sampling_ratio` attribute.
  TfRef<num> get samplingRatioRef =>
      TfRef.attribute<num>(this, 'sampling_ratio');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

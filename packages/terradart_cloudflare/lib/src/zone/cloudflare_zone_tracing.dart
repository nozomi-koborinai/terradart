// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_tracing`.
const Set<String> _cloudflareZoneTracingSensitive = <String>{};

/// Zone Tracing Propagation enum for `propagation_policy`.
extension type const ZoneTracingPropagationPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ZoneTracingPropagationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ZoneTracingPropagationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ZoneTracingPropagationPolicy.arg(TfArg<String> arg) : this._(arg);

  static const accept = ZoneTracingPropagationPolicy._(TfArgLiteral('accept'));
  static const authenticated = ZoneTracingPropagationPolicy._(
    TfArgLiteral('authenticated'),
  );
  static const reject = ZoneTracingPropagationPolicy._(TfArgLiteral('reject'));

  static const List<ZoneTracingPropagationPolicy> values = [
    accept,
    authenticated,
    reject,
  ];
}

/// Factory wrapper for `cloudflare_zone_tracing`.
///
/// Cloudflare Traces for a zone: samples `samplingRatio` (0 to 1) of
/// requests and sends the traces to up to 100 OpenTelemetry
/// `destinations`. Per-request overrides live on
/// `CloudflareZoneTracingRules`.
final class CloudflareZoneTracing extends Resource {
  static const String tfType = 'cloudflare_zone_tracing';

  CloudflareZoneTracing(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    TfArg<bool>? enabled,
    TfArg<num>? samplingRatio,
    TfArg<List<String>>? destinations,
    ZoneTracingPropagationPolicy? propagationPolicy,
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
  TfRef<List<String>> get destinations =>
      TfRef.attribute<List<String>>(this, 'destinations');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `forward_context` attribute.
  TfRef<bool> get forwardContext =>
      TfRef.attribute<bool>(this, 'forward_context');

  /// Reference to `persist` attribute.
  TfRef<bool> get persist => TfRef.attribute<bool>(this, 'persist');

  /// Reference to `propagation_policy` attribute.
  TfRef<String> get propagationPolicy =>
      TfRef.attribute<String>(this, 'propagation_policy');

  /// Reference to `sampling_ratio` attribute.
  TfRef<num> get samplingRatio => TfRef.attribute<num>(this, 'sampling_ratio');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

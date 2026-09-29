// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_tracing.dart';

/// Sensitive field paths for `cloudflare_zone_tracing`.
const Set<String> _cloudflareZoneTracingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_tracing`.
final class DataCloudflareZoneTracing extends Data {
  static const String tfType = 'cloudflare_zone_tracing';

  DataCloudflareZoneTracing({
    required super.localName,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingSensitive;

  /// A reference to the `cloudflare_zone_tracing` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneTracing>`.
  RefTo<CloudflareZoneTracing> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
}

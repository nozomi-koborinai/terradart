// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_origin_group`.
const Set<String> _azurermCdnFrontdoorOriginGroupSensitive = <String>{};

/// Typed helper for the `health_probe` block of
/// `azurerm_cdn_frontdoor_origin_group` (derived from provider schema).
@immutable
final class CdnFrontdoorOriginGroupHealthProbe {
  const CdnFrontdoorOriginGroupHealthProbe({
    required this.intervalInSeconds,
    this.path,
    required this.protocol,
    this.requestType,
  });

  final TfArg<num> intervalInSeconds;

  final TfArg<String>? path;

  final TfArg<String> protocol;

  final TfArg<String>? requestType;

  @internal
  Map<String, Object?> encode() => {
    'interval_in_seconds': intervalInSeconds.toTfJson(),
    'path': ?path?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'request_type': ?requestType?.toTfJson(),
  };
}

/// Typed helper for the `load_balancing` block of
/// `azurerm_cdn_frontdoor_origin_group` (derived from provider schema).
@immutable
final class CdnFrontdoorOriginGroupLoadBalancing {
  const CdnFrontdoorOriginGroupLoadBalancing({
    this.additionalLatencyInMilliseconds,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  final TfArg<num>? additionalLatencyInMilliseconds;

  final TfArg<num>? sampleSize;

  final TfArg<num>? successfulSamplesRequired;

  @internal
  Map<String, Object?> encode() => {
    'additional_latency_in_milliseconds': ?additionalLatencyInMilliseconds
        ?.toTfJson(),
    'sample_size': ?sampleSize?.toTfJson(),
    'successful_samples_required': ?successfulSamplesRequired?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_frontdoor_origin_group`.
final class AzurermCdnFrontdoorOriginGroup extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_origin_group';

  AzurermCdnFrontdoorOriginGroup(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    required TfArg<String> name,
    TfArg<num>? restoreTrafficTimeToHealedOrNewEndpointInMinutes,
    TfArg<bool>? sessionAffinityEnabled,
    CdnFrontdoorOriginGroupHealthProbe? healthProbe,
    required CdnFrontdoorOriginGroupLoadBalancing loadBalancing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'name': name,
           'restore_traffic_time_to_healed_or_new_endpoint_in_minutes':
               ?restoreTrafficTimeToHealedOrNewEndpointInMinutes,
           'session_affinity_enabled': ?sessionAffinityEnabled,
           if (healthProbe != null)
             'health_probe': TfArg.literal(healthProbe.encode()),
           'load_balancing': TfArg.literal(loadBalancing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorOriginGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorOriginGroup>`.
  RefTo<AzurermCdnFrontdoorOriginGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `restore_traffic_time_to_healed_or_new_endpoint_in_minutes` attribute.
  TfRef<num> get restoreTrafficTimeToHealedOrNewEndpointInMinutes =>
      TfRef.attribute<num>(
        this,
        'restore_traffic_time_to_healed_or_new_endpoint_in_minutes',
      );

  /// Reference to `session_affinity_enabled` attribute.
  TfRef<bool> get sessionAffinityEnabled =>
      TfRef.attribute<bool>(this, 'session_affinity_enabled');
}

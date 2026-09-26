// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_record`.
const Set<String> _awsRoute53RecordSensitive = <String>{};

/// Typed helper for the `alias` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordAlias {
  const Route53RecordAlias({
    required this.evaluateTargetHealth,
    required this.name,
    required this.zoneId,
  });

  final TfArg<bool> evaluateTargetHealth;

  final TfArg<String> name;

  final TfArg<String> zoneId;

  Map<String, Object?> encode() => {
    'evaluate_target_health': evaluateTargetHealth.toTfJson(),
    'name': name.toTfJson(),
    'zone_id': zoneId.toTfJson(),
  };
}

/// Typed helper for the `cidr_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordCidrRoutingPolicy {
  const Route53RecordCidrRoutingPolicy({
    required this.collectionId,
    required this.locationName,
  });

  final TfArg<String> collectionId;

  final TfArg<String> locationName;

  Map<String, Object?> encode() => {
    'collection_id': collectionId.toTfJson(),
    'location_name': locationName.toTfJson(),
  };
}

/// Typed helper for the `failover_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordFailoverRoutingPolicy {
  const Route53RecordFailoverRoutingPolicy({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `geolocation_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordGeolocationRoutingPolicy {
  const Route53RecordGeolocationRoutingPolicy({
    this.continent,
    this.country,
    this.subdivision,
  });

  final TfArg<String>? continent;

  final TfArg<String>? country;

  final TfArg<String>? subdivision;

  Map<String, Object?> encode() => {
    if (continent != null) 'continent': continent!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (subdivision != null) 'subdivision': subdivision!.toTfJson(),
  };
}

/// Typed helper for the `geoproximity_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordGeoproximityRoutingPolicy {
  const Route53RecordGeoproximityRoutingPolicy({
    this.awsRegion,
    this.bias,
    this.localZoneGroup,
    this.coordinates,
  });

  final TfArg<String>? awsRegion;

  final TfArg<num>? bias;

  final TfArg<String>? localZoneGroup;

  final List<Route53RecordGeoproximityRoutingPolicyCoordinates>? coordinates;

  Map<String, Object?> encode() => {
    if (awsRegion != null) 'aws_region': awsRegion!.toTfJson(),
    if (bias != null) 'bias': bias!.toTfJson(),
    if (localZoneGroup != null) 'local_zone_group': localZoneGroup!.toTfJson(),
    if (coordinates != null)
      'coordinates': [for (final e in coordinates!) e.encode()],
  };
}

/// Typed helper for the `geoproximity_routing_policy.coordinates` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordGeoproximityRoutingPolicyCoordinates {
  const Route53RecordGeoproximityRoutingPolicyCoordinates({
    required this.latitude,
    required this.longitude,
  });

  final TfArg<String> latitude;

  final TfArg<String> longitude;

  Map<String, Object?> encode() => {
    'latitude': latitude.toTfJson(),
    'longitude': longitude.toTfJson(),
  };
}

/// Typed helper for the `latency_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordLatencyRoutingPolicy {
  const Route53RecordLatencyRoutingPolicy({required this.region});

  final TfArg<String> region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// Typed helper for the `weighted_routing_policy` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordWeightedRoutingPolicy {
  const Route53RecordWeightedRoutingPolicy({required this.weight});

  final TfArg<num> weight;

  Map<String, Object?> encode() => {'weight': weight.toTfJson()};
}

/// Factory wrapper for `aws_route53_record`.
final class AwsRoute53Record extends Resource {
  static const String tfType = 'aws_route53_record';

  AwsRoute53Record({
    required super.localName,
    TfArg<bool>? allowOverwrite,
    TfArg<String>? healthCheckId,
    TfArg<bool>? multivalueAnswerRoutingPolicy,
    required TfArg<String> name,
    TfArg<List<String>>? records,
    TfArg<String>? setIdentifier,
    TfArg<num>? ttl,
    required TfArg<String> type,
    required TfArg<String> zoneId,
    Route53RecordAlias? alias,
    Route53RecordCidrRoutingPolicy? cidrRoutingPolicy,
    Route53RecordFailoverRoutingPolicy? failoverRoutingPolicy,
    Route53RecordGeolocationRoutingPolicy? geolocationRoutingPolicy,
    Route53RecordGeoproximityRoutingPolicy? geoproximityRoutingPolicy,
    Route53RecordLatencyRoutingPolicy? latencyRoutingPolicy,
    Route53RecordWeightedRoutingPolicy? weightedRoutingPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowOverwrite != null) 'allow_overwrite': allowOverwrite,
           if (healthCheckId != null) 'health_check_id': healthCheckId,
           if (multivalueAnswerRoutingPolicy != null)
             'multivalue_answer_routing_policy': multivalueAnswerRoutingPolicy,
           'name': name,
           if (records != null) 'records': records,
           if (setIdentifier != null) 'set_identifier': setIdentifier,
           if (ttl != null) 'ttl': ttl,
           'type': type,
           'zone_id': zoneId,
           if (alias != null) 'alias': TfArg.literal(alias.encode()),
           if (cidrRoutingPolicy != null)
             'cidr_routing_policy': TfArg.literal(cidrRoutingPolicy.encode()),
           if (failoverRoutingPolicy != null)
             'failover_routing_policy': TfArg.literal(
               failoverRoutingPolicy.encode(),
             ),
           if (geolocationRoutingPolicy != null)
             'geolocation_routing_policy': TfArg.literal(
               geolocationRoutingPolicy.encode(),
             ),
           if (geoproximityRoutingPolicy != null)
             'geoproximity_routing_policy': TfArg.literal(
               geoproximityRoutingPolicy.encode(),
             ),
           if (latencyRoutingPolicy != null)
             'latency_routing_policy': TfArg.literal(
               latencyRoutingPolicy.encode(),
             ),
           if (weightedRoutingPolicy != null)
             'weighted_routing_policy': TfArg.literal(
               weightedRoutingPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');
}

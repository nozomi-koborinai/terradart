// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_records_exclusive`.
const Set<String> _awsRoute53RecordsExclusiveSensitive = <String>{};

/// Typed helper for the `resource_record_set` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSet {
  const Route53RecordsExclusiveResourceRecordSet({
    this.failover,
    this.healthCheckId,
    this.multiValueAnswer,
    required this.name,
    this.region,
    this.setIdentifier,
    this.trafficPolicyInstanceId,
    this.ttl,
    this.type,
    this.weight,
    this.aliasTarget,
    this.cidrRoutingConfig,
    this.geolocation,
    this.geoproximityLocation,
    this.resourceRecords,
  });

  final TfArg<String>? failover;

  final TfArg<String>? healthCheckId;

  final TfArg<bool>? multiValueAnswer;

  final TfArg<String> name;

  final TfArg<String>? region;

  final TfArg<String>? setIdentifier;

  final TfArg<String>? trafficPolicyInstanceId;

  final TfArg<num>? ttl;

  final TfArg<String>? type;

  final TfArg<num>? weight;

  final List<Route53RecordsExclusiveResourceRecordSetAliasTarget>? aliasTarget;

  final List<Route53RecordsExclusiveResourceRecordSetCidrRoutingConfig>?
  cidrRoutingConfig;

  final List<Route53RecordsExclusiveResourceRecordSetGeolocation>? geolocation;

  final List<Route53RecordsExclusiveResourceRecordSetGeoproximityLocation>?
  geoproximityLocation;

  final List<Route53RecordsExclusiveResourceRecordSetResourceRecords>?
  resourceRecords;

  Map<String, Object?> encode() => {
    if (failover != null) 'failover': failover!.toTfJson(),
    if (healthCheckId != null) 'health_check_id': healthCheckId!.toTfJson(),
    if (multiValueAnswer != null)
      'multi_value_answer': multiValueAnswer!.toTfJson(),
    'name': name.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (setIdentifier != null) 'set_identifier': setIdentifier!.toTfJson(),
    if (trafficPolicyInstanceId != null)
      'traffic_policy_instance_id': trafficPolicyInstanceId!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
    if (aliasTarget != null)
      'alias_target': [for (final e in aliasTarget!) e.encode()],
    if (cidrRoutingConfig != null)
      'cidr_routing_config': [for (final e in cidrRoutingConfig!) e.encode()],
    if (geolocation != null)
      'geolocation': [for (final e in geolocation!) e.encode()],
    if (geoproximityLocation != null)
      'geoproximity_location': [
        for (final e in geoproximityLocation!) e.encode(),
      ],
    if (resourceRecords != null)
      'resource_records': [for (final e in resourceRecords!) e.encode()],
  };
}

/// Typed helper for the `resource_record_set.alias_target` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetAliasTarget {
  const Route53RecordsExclusiveResourceRecordSetAliasTarget({
    required this.dnsName,
    required this.evaluateTargetHealth,
    required this.hostedZoneId,
  });

  final TfArg<String> dnsName;

  final TfArg<bool> evaluateTargetHealth;

  final TfArg<String> hostedZoneId;

  Map<String, Object?> encode() => {
    'dns_name': dnsName.toTfJson(),
    'evaluate_target_health': evaluateTargetHealth.toTfJson(),
    'hosted_zone_id': hostedZoneId.toTfJson(),
  };
}

/// Typed helper for the `resource_record_set.cidr_routing_config` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetCidrRoutingConfig {
  const Route53RecordsExclusiveResourceRecordSetCidrRoutingConfig({
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

/// Typed helper for the `resource_record_set.geolocation` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetGeolocation {
  const Route53RecordsExclusiveResourceRecordSetGeolocation({
    this.continentCode,
    this.countryCode,
    this.subdivisionCode,
  });

  final TfArg<String>? continentCode;

  final TfArg<String>? countryCode;

  final TfArg<String>? subdivisionCode;

  Map<String, Object?> encode() => {
    if (continentCode != null) 'continent_code': continentCode!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (subdivisionCode != null)
      'subdivision_code': subdivisionCode!.toTfJson(),
  };
}

/// Typed helper for the `resource_record_set.geoproximity_location` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetGeoproximityLocation {
  const Route53RecordsExclusiveResourceRecordSetGeoproximityLocation({
    this.awsRegion,
    this.bias,
    this.localZoneGroup,
    this.coordinates,
  });

  final TfArg<String>? awsRegion;

  final TfArg<num>? bias;

  final TfArg<String>? localZoneGroup;

  final List<
    Route53RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates
  >?
  coordinates;

  Map<String, Object?> encode() => {
    if (awsRegion != null) 'aws_region': awsRegion!.toTfJson(),
    if (bias != null) 'bias': bias!.toTfJson(),
    if (localZoneGroup != null) 'local_zone_group': localZoneGroup!.toTfJson(),
    if (coordinates != null)
      'coordinates': [for (final e in coordinates!) e.encode()],
  };
}

/// Typed helper for the `resource_record_set.geoproximity_location.coordinates` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates {
  const Route53RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates({
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

/// Typed helper for the `resource_record_set.resource_records` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveResourceRecordSetResourceRecords {
  const Route53RecordsExclusiveResourceRecordSetResourceRecords({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_route53_records_exclusive`.
final class AwsRoute53RecordsExclusive extends Resource {
  static const String tfType = 'aws_route53_records_exclusive';

  AwsRoute53RecordsExclusive({
    required super.localName,
    required TfArg<String> zoneId,
    List<Route53RecordsExclusiveResourceRecordSet>? resourceRecordSet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           if (resourceRecordSet != null)
             'resource_record_set': TfArg.literal([
               for (final e in resourceRecordSet) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordsExclusiveSensitive;
}

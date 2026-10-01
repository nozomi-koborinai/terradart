// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../route53/aws_route53_zone.dart' show AwsRoute53Zone;

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

  final TfArg<Route53RecordsExclusiveFailover>? failover;

  final TfArg<String>? healthCheckId;

  final TfArg<bool>? multiValueAnswer;

  final TfArg<String> name;

  final TfArg<Route53RecordsExclusiveRegion>? region;

  final TfArg<String>? setIdentifier;

  final TfArg<String>? trafficPolicyInstanceId;

  final TfArg<num>? ttl;

  final TfArg<Route53RecordsExclusiveType>? type;

  final TfArg<num>? weight;

  final List<Route53RecordsExclusiveAliasTarget>? aliasTarget;

  final List<Route53RecordsExclusiveCidrRoutingConfig>? cidrRoutingConfig;

  final List<Route53RecordsExclusiveGeolocation>? geolocation;

  final List<Route53RecordsExclusiveGeoproximityLocation>? geoproximityLocation;

  final List<Route53RecordsExclusiveResourceRecords>? resourceRecords;

  Map<String, Object?> encode() => {
    'failover': ?failover?.toTfJson(),
    'health_check_id': ?healthCheckId?.toTfJson(),
    'multi_value_answer': ?multiValueAnswer?.toTfJson(),
    'name': name.toTfJson(),
    'region': ?region?.toTfJson(),
    'set_identifier': ?setIdentifier?.toTfJson(),
    'traffic_policy_instance_id': ?trafficPolicyInstanceId?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'type': ?type?.toTfJson(),
    'weight': ?weight?.toTfJson(),
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

/// `failover` — derived from the provider schema description.
enum Route53RecordsExclusiveFailover implements TerraformEnum {
  primary('PRIMARY'),
  secondary('SECONDARY');

  const Route53RecordsExclusiveFailover(this.terraformValue);
  @override
  final String terraformValue;
}

/// `region` — derived from the provider schema description.
enum Route53RecordsExclusiveRegion implements TerraformEnum {
  usEast1('us-east-1'),
  usEast2('us-east-2'),
  usWest1('us-west-1'),
  usWest2('us-west-2'),
  caCentral1('ca-central-1'),
  euWest1('eu-west-1'),
  euWest2('eu-west-2'),
  euWest3('eu-west-3'),
  euCentral1('eu-central-1'),
  euCentral2('eu-central-2'),
  apSoutheast1('ap-southeast-1'),
  apSoutheast2('ap-southeast-2'),
  apSoutheast3('ap-southeast-3'),
  apNortheast1('ap-northeast-1'),
  apNortheast2('ap-northeast-2'),
  apNortheast3('ap-northeast-3'),
  euNorth1('eu-north-1'),
  saEast1('sa-east-1'),
  cnNorth1('cn-north-1'),
  cnNorthwest1('cn-northwest-1'),
  apEast1('ap-east-1'),
  meSouth1('me-south-1'),
  meCentral1('me-central-1'),
  apSouth1('ap-south-1'),
  apSouth2('ap-south-2'),
  afSouth1('af-south-1'),
  euSouth1('eu-south-1'),
  euSouth2('eu-south-2'),
  apSoutheast4('ap-southeast-4'),
  ilCentral1('il-central-1'),
  caWest1('ca-west-1'),
  apSoutheast5('ap-southeast-5'),
  mxCentral1('mx-central-1'),
  apSoutheast7('ap-southeast-7'),
  usGovEast1('us-gov-east-1'),
  usGovWest1('us-gov-west-1'),
  apEast2('ap-east-2'),
  apSoutheast6('ap-southeast-6'),
  euscDeEast1('eusc-de-east-1');

  const Route53RecordsExclusiveRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum Route53RecordsExclusiveType implements TerraformEnum {
  soa('SOA'),
  a('A'),
  txt('TXT'),
  ns('NS'),
  cname('CNAME'),
  mx('MX'),
  naptr('NAPTR'),
  ptr('PTR'),
  srv('SRV'),
  spf('SPF'),
  aaaa('AAAA'),
  caa('CAA'),
  ds('DS'),
  tlsa('TLSA'),
  sshfp('SSHFP'),
  svcb('SVCB'),
  https('HTTPS');

  const Route53RecordsExclusiveType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `resource_record_set.alias_target` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveAliasTarget {
  const Route53RecordsExclusiveAliasTarget({
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
final class Route53RecordsExclusiveCidrRoutingConfig {
  const Route53RecordsExclusiveCidrRoutingConfig({
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
final class Route53RecordsExclusiveGeolocation {
  const Route53RecordsExclusiveGeolocation({
    this.continentCode,
    this.countryCode,
    this.subdivisionCode,
  });

  final TfArg<String>? continentCode;

  final TfArg<String>? countryCode;

  final TfArg<String>? subdivisionCode;

  Map<String, Object?> encode() => {
    'continent_code': ?continentCode?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'subdivision_code': ?subdivisionCode?.toTfJson(),
  };
}

/// Typed helper for the `resource_record_set.geoproximity_location` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveGeoproximityLocation {
  const Route53RecordsExclusiveGeoproximityLocation({
    this.awsRegion,
    this.bias,
    this.localZoneGroup,
    this.coordinates,
  });

  final TfArg<String>? awsRegion;

  final TfArg<num>? bias;

  final TfArg<String>? localZoneGroup;

  final List<Route53RecordsExclusiveCoordinates>? coordinates;

  Map<String, Object?> encode() => {
    'aws_region': ?awsRegion?.toTfJson(),
    'bias': ?bias?.toTfJson(),
    'local_zone_group': ?localZoneGroup?.toTfJson(),
    if (coordinates != null)
      'coordinates': [for (final e in coordinates!) e.encode()],
  };
}

/// Typed helper for the `resource_record_set.geoproximity_location.coordinates` block of
/// `aws_route53_records_exclusive` (derived from provider schema).
@immutable
final class Route53RecordsExclusiveCoordinates {
  const Route53RecordsExclusiveCoordinates({
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
final class Route53RecordsExclusiveResourceRecords {
  const Route53RecordsExclusiveResourceRecords({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_route53_records_exclusive`.
final class AwsRoute53RecordsExclusive extends Resource {
  static const String tfType = 'aws_route53_records_exclusive';

  AwsRoute53RecordsExclusive({
    required super.localName,
    required RefTo<AwsRoute53Zone> zoneId,
    List<Route53RecordsExclusiveResourceRecordSet>? resourceRecordSet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('zone_id'),
           if (resourceRecordSet != null)
             'resource_record_set': TfArg.literal([
               for (final e in resourceRecordSet) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordsExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53RecordsExclusive>`.
  RefTo<AwsRoute53RecordsExclusive> get ref => RefTo.of(this);

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}

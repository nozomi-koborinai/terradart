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

  final Route53RecordsExclusiveFailover? failover;

  final TfArg<String>? healthCheckId;

  final TfArg<bool>? multiValueAnswer;

  final TfArg<String> name;

  final Route53RecordsExclusiveRegion? region;

  final TfArg<String>? setIdentifier;

  final TfArg<String>? trafficPolicyInstanceId;

  final TfArg<num>? ttl;

  final Route53RecordsExclusiveType? type;

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
extension type const Route53RecordsExclusiveFailover._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordsExclusiveFailover.variable(String name)
    : this._(TfArg.variable(name));
  Route53RecordsExclusiveFailover.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordsExclusiveFailover.arg(TfArg<String> arg) : this._(arg);

  static const primary = Route53RecordsExclusiveFailover._(
    TfArgLiteral('PRIMARY'),
  );
  static const secondary = Route53RecordsExclusiveFailover._(
    TfArgLiteral('SECONDARY'),
  );

  static const List<Route53RecordsExclusiveFailover> values = [
    primary,
    secondary,
  ];
}

/// `region` — derived from the provider schema description.
extension type const Route53RecordsExclusiveRegion._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordsExclusiveRegion.variable(String name)
    : this._(TfArg.variable(name));
  Route53RecordsExclusiveRegion.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordsExclusiveRegion.arg(TfArg<String> arg) : this._(arg);

  static const usEast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-east-1'),
  );
  static const usEast2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-east-2'),
  );
  static const usWest1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-west-1'),
  );
  static const usWest2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-west-2'),
  );
  static const caCentral1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ca-central-1'),
  );
  static const euWest1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-west-1'),
  );
  static const euWest2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-west-2'),
  );
  static const euWest3 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-west-3'),
  );
  static const euCentral1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-central-1'),
  );
  static const euCentral2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-central-2'),
  );
  static const apSoutheast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-2'),
  );
  static const apSoutheast3 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-3'),
  );
  static const apNortheast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const apNortheast2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-northeast-2'),
  );
  static const apNortheast3 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-northeast-3'),
  );
  static const euNorth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-north-1'),
  );
  static const saEast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('sa-east-1'),
  );
  static const cnNorth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('cn-north-1'),
  );
  static const cnNorthwest1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('cn-northwest-1'),
  );
  static const apEast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-east-1'),
  );
  static const meSouth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('me-south-1'),
  );
  static const meCentral1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('me-central-1'),
  );
  static const apSouth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-south-1'),
  );
  static const apSouth2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-south-2'),
  );
  static const afSouth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('af-south-1'),
  );
  static const euSouth1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-south-1'),
  );
  static const euSouth2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eu-south-2'),
  );
  static const apSoutheast4 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-4'),
  );
  static const ilCentral1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('il-central-1'),
  );
  static const caWest1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ca-west-1'),
  );
  static const apSoutheast5 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-5'),
  );
  static const mxCentral1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('mx-central-1'),
  );
  static const apSoutheast7 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-7'),
  );
  static const usGovEast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-gov-east-1'),
  );
  static const usGovWest1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('us-gov-west-1'),
  );
  static const apEast2 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-east-2'),
  );
  static const apSoutheast6 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('ap-southeast-6'),
  );
  static const euscDeEast1 = Route53RecordsExclusiveRegion._(
    TfArgLiteral('eusc-de-east-1'),
  );

  static const List<Route53RecordsExclusiveRegion> values = [
    usEast1,
    usEast2,
    usWest1,
    usWest2,
    caCentral1,
    euWest1,
    euWest2,
    euWest3,
    euCentral1,
    euCentral2,
    apSoutheast1,
    apSoutheast2,
    apSoutheast3,
    apNortheast1,
    apNortheast2,
    apNortheast3,
    euNorth1,
    saEast1,
    cnNorth1,
    cnNorthwest1,
    apEast1,
    meSouth1,
    meCentral1,
    apSouth1,
    apSouth2,
    afSouth1,
    euSouth1,
    euSouth2,
    apSoutheast4,
    ilCentral1,
    caWest1,
    apSoutheast5,
    mxCentral1,
    apSoutheast7,
    usGovEast1,
    usGovWest1,
    apEast2,
    apSoutheast6,
    euscDeEast1,
  ];
}

/// `type` — derived from the provider schema description.
extension type const Route53RecordsExclusiveType._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordsExclusiveType.variable(String name)
    : this._(TfArg.variable(name));
  Route53RecordsExclusiveType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordsExclusiveType.arg(TfArg<String> arg) : this._(arg);

  static const soa = Route53RecordsExclusiveType._(TfArgLiteral('SOA'));
  static const a = Route53RecordsExclusiveType._(TfArgLiteral('A'));
  static const txt = Route53RecordsExclusiveType._(TfArgLiteral('TXT'));
  static const ns = Route53RecordsExclusiveType._(TfArgLiteral('NS'));
  static const cname = Route53RecordsExclusiveType._(TfArgLiteral('CNAME'));
  static const mx = Route53RecordsExclusiveType._(TfArgLiteral('MX'));
  static const naptr = Route53RecordsExclusiveType._(TfArgLiteral('NAPTR'));
  static const ptr = Route53RecordsExclusiveType._(TfArgLiteral('PTR'));
  static const srv = Route53RecordsExclusiveType._(TfArgLiteral('SRV'));
  static const spf = Route53RecordsExclusiveType._(TfArgLiteral('SPF'));
  static const aaaa = Route53RecordsExclusiveType._(TfArgLiteral('AAAA'));
  static const caa = Route53RecordsExclusiveType._(TfArgLiteral('CAA'));
  static const ds = Route53RecordsExclusiveType._(TfArgLiteral('DS'));
  static const tlsa = Route53RecordsExclusiveType._(TfArgLiteral('TLSA'));
  static const sshfp = Route53RecordsExclusiveType._(TfArgLiteral('SSHFP'));
  static const svcb = Route53RecordsExclusiveType._(TfArgLiteral('SVCB'));
  static const https = Route53RecordsExclusiveType._(TfArgLiteral('HTTPS'));

  static const List<Route53RecordsExclusiveType> values = [
    soa,
    a,
    txt,
    ns,
    cname,
    mx,
    naptr,
    ptr,
    srv,
    spf,
    aaaa,
    caa,
    ds,
    tlsa,
    sshfp,
    svcb,
    https,
  ];
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

  AwsRoute53RecordsExclusive(
    super.localName, {
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
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

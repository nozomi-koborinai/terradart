// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../route53/aws_route53_zone.dart' show AwsRoute53Zone;

/// Sensitive field paths for `aws_route53_record`.
const Set<String> _awsRoute53RecordSensitive = <String>{};

/// Route53 Record enum for `type`.
extension type const Route53RecordType._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordType.variable(String name) : this._(TfArg.variable(name));
  Route53RecordType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordType.arg(TfArg<String> arg) : this._(arg);

  static const soa = Route53RecordType._(TfArgLiteral('SOA'));
  static const a = Route53RecordType._(TfArgLiteral('A'));
  static const txt = Route53RecordType._(TfArgLiteral('TXT'));
  static const ns = Route53RecordType._(TfArgLiteral('NS'));
  static const cname = Route53RecordType._(TfArgLiteral('CNAME'));
  static const mx = Route53RecordType._(TfArgLiteral('MX'));
  static const naptr = Route53RecordType._(TfArgLiteral('NAPTR'));
  static const ptr = Route53RecordType._(TfArgLiteral('PTR'));
  static const srv = Route53RecordType._(TfArgLiteral('SRV'));
  static const spf = Route53RecordType._(TfArgLiteral('SPF'));
  static const aaaa = Route53RecordType._(TfArgLiteral('AAAA'));
  static const caa = Route53RecordType._(TfArgLiteral('CAA'));
  static const ds = Route53RecordType._(TfArgLiteral('DS'));
  static const tlsa = Route53RecordType._(TfArgLiteral('TLSA'));
  static const sshfp = Route53RecordType._(TfArgLiteral('SSHFP'));
  static const svcb = Route53RecordType._(TfArgLiteral('SVCB'));
  static const https = Route53RecordType._(TfArgLiteral('HTTPS'));

  static const List<Route53RecordType> values = [
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

/// Exactly one of `alias`, `records` on `aws_route53_record`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.alias(...)`.
sealed class Route53RecordTarget {
  const Route53RecordTarget();

  /// Sets `alias`.
  const factory Route53RecordTarget.alias(Route53RecordAlias alias) =
      Route53RecordTargetAlias;

  /// Sets `records`.
  const factory Route53RecordTarget.records(TfArg<List<String>> records) =
      Route53RecordTargetRecords;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53RecordTarget.alias] choice: sets `alias`.
final class Route53RecordTargetAlias extends Route53RecordTarget {
  const Route53RecordTargetAlias(this.alias);

  final Route53RecordAlias alias;

  @override
  String get blockKey => 'alias';

  @override
  Map<String, Object?> encode() => {'alias': alias.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'alias': TfArg.literal(alias.encode()),
  };
}

/// The [Route53RecordTarget.records] choice: sets `records`.
final class Route53RecordTargetRecords extends Route53RecordTarget {
  const Route53RecordTargetRecords(this.records);

  final TfArg<List<String>> records;

  @override
  String get blockKey => 'records';

  @override
  Map<String, Object?> encode() => {'records': records.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'records': records};
}

/// At most one of `cidr_routing_policy`, `failover_routing_policy`, `geolocation_routing_policy`, `geoproximity_routing_policy`, `latency_routing_policy`, `multivalue_answer_routing_policy`, `weighted_routing_policy` on `aws_route53_record`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cidrRoutingPolicy(...)`.
sealed class Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicy();

  /// Sets `cidr_routing_policy`.
  const factory Route53RecordRoutingPolicy.cidrRoutingPolicy(
    Route53RecordCidrRoutingPolicy cidrRoutingPolicy,
  ) = Route53RecordCidrRoutingPolicyChoice;

  /// Sets `failover_routing_policy`.
  const factory Route53RecordRoutingPolicy.failoverRoutingPolicy(
    Route53RecordFailoverRoutingPolicy failoverRoutingPolicy,
  ) = Route53RecordFailoverRoutingPolicyChoice;

  /// Sets `geolocation_routing_policy`.
  const factory Route53RecordRoutingPolicy.geolocationRoutingPolicy(
    Route53RecordGeolocationRoutingPolicy geolocationRoutingPolicy,
  ) = Route53RecordGeolocationRoutingPolicyChoice;

  /// Sets `geoproximity_routing_policy`.
  const factory Route53RecordRoutingPolicy.geoproximityRoutingPolicy(
    Route53RecordGeoproximityRoutingPolicy geoproximityRoutingPolicy,
  ) = Route53RecordGeoproximityRoutingPolicyChoice;

  /// Sets `latency_routing_policy`.
  const factory Route53RecordRoutingPolicy.latencyRoutingPolicy(
    Route53RecordLatencyRoutingPolicy latencyRoutingPolicy,
  ) = Route53RecordLatencyRoutingPolicyChoice;

  /// Sets `multivalue_answer_routing_policy`.
  const factory Route53RecordRoutingPolicy.multivalueAnswerRoutingPolicy(
    TfArg<bool> multivalueAnswerRoutingPolicy,
  ) = Route53RecordMultivalueAnswerRoutingPolicy;

  /// Sets `weighted_routing_policy`.
  const factory Route53RecordRoutingPolicy.weightedRoutingPolicy(
    Route53RecordWeightedRoutingPolicy weightedRoutingPolicy,
  ) = Route53RecordWeightedRoutingPolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53RecordRoutingPolicy.cidrRoutingPolicy] choice: sets `cidr_routing_policy`.
final class Route53RecordCidrRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordCidrRoutingPolicyChoice(this.cidrRoutingPolicy);

  final Route53RecordCidrRoutingPolicy cidrRoutingPolicy;

  @override
  String get blockKey => 'cidr_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'cidr_routing_policy': cidrRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cidr_routing_policy': TfArg.literal(cidrRoutingPolicy.encode()),
  };
}

/// The [Route53RecordRoutingPolicy.failoverRoutingPolicy] choice: sets `failover_routing_policy`.
final class Route53RecordFailoverRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordFailoverRoutingPolicyChoice(this.failoverRoutingPolicy);

  final Route53RecordFailoverRoutingPolicy failoverRoutingPolicy;

  @override
  String get blockKey => 'failover_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'failover_routing_policy': failoverRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'failover_routing_policy': TfArg.literal(failoverRoutingPolicy.encode()),
  };
}

/// The [Route53RecordRoutingPolicy.geolocationRoutingPolicy] choice: sets `geolocation_routing_policy`.
final class Route53RecordGeolocationRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordGeolocationRoutingPolicyChoice(
    this.geolocationRoutingPolicy,
  );

  final Route53RecordGeolocationRoutingPolicy geolocationRoutingPolicy;

  @override
  String get blockKey => 'geolocation_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'geolocation_routing_policy': geolocationRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'geolocation_routing_policy': TfArg.literal(
      geolocationRoutingPolicy.encode(),
    ),
  };
}

/// The [Route53RecordRoutingPolicy.geoproximityRoutingPolicy] choice: sets `geoproximity_routing_policy`.
final class Route53RecordGeoproximityRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordGeoproximityRoutingPolicyChoice(
    this.geoproximityRoutingPolicy,
  );

  final Route53RecordGeoproximityRoutingPolicy geoproximityRoutingPolicy;

  @override
  String get blockKey => 'geoproximity_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'geoproximity_routing_policy': geoproximityRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'geoproximity_routing_policy': TfArg.literal(
      geoproximityRoutingPolicy.encode(),
    ),
  };
}

/// The [Route53RecordRoutingPolicy.latencyRoutingPolicy] choice: sets `latency_routing_policy`.
final class Route53RecordLatencyRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordLatencyRoutingPolicyChoice(this.latencyRoutingPolicy);

  final Route53RecordLatencyRoutingPolicy latencyRoutingPolicy;

  @override
  String get blockKey => 'latency_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'latency_routing_policy': latencyRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'latency_routing_policy': TfArg.literal(latencyRoutingPolicy.encode()),
  };
}

/// The [Route53RecordRoutingPolicy.multivalueAnswerRoutingPolicy] choice: sets `multivalue_answer_routing_policy`.
final class Route53RecordMultivalueAnswerRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordMultivalueAnswerRoutingPolicy(
    this.multivalueAnswerRoutingPolicy,
  );

  final TfArg<bool> multivalueAnswerRoutingPolicy;

  @override
  String get blockKey => 'multivalue_answer_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'multivalue_answer_routing_policy': multivalueAnswerRoutingPolicy
        .toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'multivalue_answer_routing_policy': multivalueAnswerRoutingPolicy,
  };
}

/// The [Route53RecordRoutingPolicy.weightedRoutingPolicy] choice: sets `weighted_routing_policy`.
final class Route53RecordWeightedRoutingPolicyChoice
    extends Route53RecordRoutingPolicy {
  const Route53RecordWeightedRoutingPolicyChoice(this.weightedRoutingPolicy);

  final Route53RecordWeightedRoutingPolicy weightedRoutingPolicy;

  @override
  String get blockKey => 'weighted_routing_policy';

  @override
  Map<String, Object?> encode() => {
    'weighted_routing_policy': weightedRoutingPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'weighted_routing_policy': TfArg.literal(weightedRoutingPolicy.encode()),
  };
}

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

  final Route53RecordFailoverRoutingPolicyType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const Route53RecordFailoverRoutingPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordFailoverRoutingPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  Route53RecordFailoverRoutingPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordFailoverRoutingPolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const primary = Route53RecordFailoverRoutingPolicyType._(
    TfArgLiteral('PRIMARY'),
  );
  static const secondary = Route53RecordFailoverRoutingPolicyType._(
    TfArgLiteral('SECONDARY'),
  );

  static const List<Route53RecordFailoverRoutingPolicyType> values = [
    primary,
    secondary,
  ];
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
    'continent': ?continent?.toTfJson(),
    'country': ?country?.toTfJson(),
    'subdivision': ?subdivision?.toTfJson(),
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

  final List<Route53RecordCoordinates>? coordinates;

  Map<String, Object?> encode() => {
    'aws_region': ?awsRegion?.toTfJson(),
    'bias': ?bias?.toTfJson(),
    'local_zone_group': ?localZoneGroup?.toTfJson(),
    if (coordinates != null)
      'coordinates': [for (final e in coordinates!) e.encode()],
  };
}

/// Typed helper for the `geoproximity_routing_policy.coordinates` block of
/// `aws_route53_record` (derived from provider schema).
@immutable
final class Route53RecordCoordinates {
  const Route53RecordCoordinates({
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

  final Route53RecordRegion region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// `region` — derived from the provider schema description.
extension type const Route53RecordRegion._(TfArg<String> _)
    implements TfArg<String> {
  Route53RecordRegion.variable(String name) : this._(TfArg.variable(name));
  Route53RecordRegion.expression(String template)
    : this._(TfArg.expression(template));
  const Route53RecordRegion.arg(TfArg<String> arg) : this._(arg);

  static const usEast1 = Route53RecordRegion._(TfArgLiteral('us-east-1'));
  static const usEast2 = Route53RecordRegion._(TfArgLiteral('us-east-2'));
  static const usWest1 = Route53RecordRegion._(TfArgLiteral('us-west-1'));
  static const usWest2 = Route53RecordRegion._(TfArgLiteral('us-west-2'));
  static const caCentral1 = Route53RecordRegion._(TfArgLiteral('ca-central-1'));
  static const euWest1 = Route53RecordRegion._(TfArgLiteral('eu-west-1'));
  static const euWest2 = Route53RecordRegion._(TfArgLiteral('eu-west-2'));
  static const euWest3 = Route53RecordRegion._(TfArgLiteral('eu-west-3'));
  static const euCentral1 = Route53RecordRegion._(TfArgLiteral('eu-central-1'));
  static const euCentral2 = Route53RecordRegion._(TfArgLiteral('eu-central-2'));
  static const apSoutheast1 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-2'),
  );
  static const apSoutheast3 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-3'),
  );
  static const apNortheast1 = Route53RecordRegion._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const apNortheast2 = Route53RecordRegion._(
    TfArgLiteral('ap-northeast-2'),
  );
  static const apNortheast3 = Route53RecordRegion._(
    TfArgLiteral('ap-northeast-3'),
  );
  static const euNorth1 = Route53RecordRegion._(TfArgLiteral('eu-north-1'));
  static const saEast1 = Route53RecordRegion._(TfArgLiteral('sa-east-1'));
  static const cnNorth1 = Route53RecordRegion._(TfArgLiteral('cn-north-1'));
  static const cnNorthwest1 = Route53RecordRegion._(
    TfArgLiteral('cn-northwest-1'),
  );
  static const apEast1 = Route53RecordRegion._(TfArgLiteral('ap-east-1'));
  static const meSouth1 = Route53RecordRegion._(TfArgLiteral('me-south-1'));
  static const meCentral1 = Route53RecordRegion._(TfArgLiteral('me-central-1'));
  static const apSouth1 = Route53RecordRegion._(TfArgLiteral('ap-south-1'));
  static const apSouth2 = Route53RecordRegion._(TfArgLiteral('ap-south-2'));
  static const afSouth1 = Route53RecordRegion._(TfArgLiteral('af-south-1'));
  static const euSouth1 = Route53RecordRegion._(TfArgLiteral('eu-south-1'));
  static const euSouth2 = Route53RecordRegion._(TfArgLiteral('eu-south-2'));
  static const apSoutheast4 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-4'),
  );
  static const ilCentral1 = Route53RecordRegion._(TfArgLiteral('il-central-1'));
  static const caWest1 = Route53RecordRegion._(TfArgLiteral('ca-west-1'));
  static const apSoutheast5 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-5'),
  );
  static const mxCentral1 = Route53RecordRegion._(TfArgLiteral('mx-central-1'));
  static const apSoutheast7 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-7'),
  );
  static const usGovEast1 = Route53RecordRegion._(
    TfArgLiteral('us-gov-east-1'),
  );
  static const usGovWest1 = Route53RecordRegion._(
    TfArgLiteral('us-gov-west-1'),
  );
  static const apEast2 = Route53RecordRegion._(TfArgLiteral('ap-east-2'));
  static const apSoutheast6 = Route53RecordRegion._(
    TfArgLiteral('ap-southeast-6'),
  );
  static const euscDeEast1 = Route53RecordRegion._(
    TfArgLiteral('eusc-de-east-1'),
  );

  static const List<Route53RecordRegion> values = [
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

  AwsRoute53Record(
    super.localName, {
    TfArg<bool>? allowOverwrite,
    TfArg<String>? healthCheckId,
    Route53RecordRoutingPolicy? routingPolicy,
    required TfArg<String> name,
    required Route53RecordTarget target,
    TfArg<String>? setIdentifier,
    TfArg<num>? ttl,
    required Route53RecordType type,
    required RefTo<AwsRoute53Zone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_overwrite': ?allowOverwrite,
           'health_check_id': ?healthCheckId,
           ...?routingPolicy?.argMap,
           'name': name,
           ...target.argMap,
           'set_identifier': ?setIdentifier,
           'ttl': ?ttl,
           'type': type,
           'zone_id': zoneId.encodeAs('zone_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53Record>`.
  RefTo<AwsRoute53Record> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `allow_overwrite` attribute.
  TfRef<bool> get allowOverwrite =>
      TfRef.attribute<bool>(this, 'allow_overwrite');

  /// Reference to `health_check_id` attribute.
  TfRef<String> get healthCheckId =>
      TfRef.attribute<String>(this, 'health_check_id');

  /// Reference to `multivalue_answer_routing_policy` attribute.
  TfRef<bool> get multivalueAnswerRoutingPolicy =>
      TfRef.attribute<bool>(this, 'multivalue_answer_routing_policy');

  /// Reference to `records` attribute.
  TfRef<List<String>> get records =>
      TfRef.attribute<List<String>>(this, 'records');

  /// Reference to `set_identifier` attribute.
  TfRef<String> get setIdentifier =>
      TfRef.attribute<String>(this, 'set_identifier');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_record`.
const Set<String> _awsRoute53RecordSensitive = <String>{};

/// Route53 Record enum for `type`.
enum Route53RecordType implements TerraformEnum {
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

  const Route53RecordType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `alias`, `records` on `aws_route53_record`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.alias(...)`.
sealed class Route53RecordAliasOrRecords {
  const Route53RecordAliasOrRecords();

  /// Sets `alias`.
  const factory Route53RecordAliasOrRecords.alias(Route53RecordAlias alias) =
      Route53RecordAliasOrRecordsAlias;

  /// Sets `records`.
  const factory Route53RecordAliasOrRecords.records(
    TfArg<List<String>> records,
  ) = Route53RecordAliasOrRecordsRecords;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53RecordAliasOrRecords.alias] choice: sets `alias`.
final class Route53RecordAliasOrRecordsAlias
    extends Route53RecordAliasOrRecords {
  const Route53RecordAliasOrRecordsAlias(this.alias);

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

/// The [Route53RecordAliasOrRecords.records] choice: sets `records`.
final class Route53RecordAliasOrRecordsRecords
    extends Route53RecordAliasOrRecords {
  const Route53RecordAliasOrRecordsRecords(this.records);

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
  ) = Route53RecordRoutingPolicyCidrRoutingPolicy;

  /// Sets `failover_routing_policy`.
  const factory Route53RecordRoutingPolicy.failoverRoutingPolicy(
    Route53RecordFailoverRoutingPolicy failoverRoutingPolicy,
  ) = Route53RecordRoutingPolicyFailoverRoutingPolicy;

  /// Sets `geolocation_routing_policy`.
  const factory Route53RecordRoutingPolicy.geolocationRoutingPolicy(
    Route53RecordGeolocationRoutingPolicy geolocationRoutingPolicy,
  ) = Route53RecordRoutingPolicyGeolocationRoutingPolicy;

  /// Sets `geoproximity_routing_policy`.
  const factory Route53RecordRoutingPolicy.geoproximityRoutingPolicy(
    Route53RecordGeoproximityRoutingPolicy geoproximityRoutingPolicy,
  ) = Route53RecordRoutingPolicyGeoproximityRoutingPolicy;

  /// Sets `latency_routing_policy`.
  const factory Route53RecordRoutingPolicy.latencyRoutingPolicy(
    Route53RecordLatencyRoutingPolicy latencyRoutingPolicy,
  ) = Route53RecordRoutingPolicyLatencyRoutingPolicy;

  /// Sets `multivalue_answer_routing_policy`.
  const factory Route53RecordRoutingPolicy.multivalueAnswerRoutingPolicy(
    TfArg<bool> multivalueAnswerRoutingPolicy,
  ) = Route53RecordRoutingPolicyMultivalueAnswerRoutingPolicy;

  /// Sets `weighted_routing_policy`.
  const factory Route53RecordRoutingPolicy.weightedRoutingPolicy(
    Route53RecordWeightedRoutingPolicy weightedRoutingPolicy,
  ) = Route53RecordRoutingPolicyWeightedRoutingPolicy;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53RecordRoutingPolicy.cidrRoutingPolicy] choice: sets `cidr_routing_policy`.
final class Route53RecordRoutingPolicyCidrRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyCidrRoutingPolicy(this.cidrRoutingPolicy);

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
final class Route53RecordRoutingPolicyFailoverRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyFailoverRoutingPolicy(
    this.failoverRoutingPolicy,
  );

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
final class Route53RecordRoutingPolicyGeolocationRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyGeolocationRoutingPolicy(
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
final class Route53RecordRoutingPolicyGeoproximityRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyGeoproximityRoutingPolicy(
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
final class Route53RecordRoutingPolicyLatencyRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyLatencyRoutingPolicy(
    this.latencyRoutingPolicy,
  );

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
final class Route53RecordRoutingPolicyMultivalueAnswerRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyMultivalueAnswerRoutingPolicy(
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
final class Route53RecordRoutingPolicyWeightedRoutingPolicy
    extends Route53RecordRoutingPolicy {
  const Route53RecordRoutingPolicyWeightedRoutingPolicy(
    this.weightedRoutingPolicy,
  );

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

  final TfArg<Route53RecordFailoverRoutingPolicyType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum Route53RecordFailoverRoutingPolicyType implements TerraformEnum {
  primary('PRIMARY'),
  secondary('SECONDARY');

  const Route53RecordFailoverRoutingPolicyType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<Route53RecordLatencyRoutingPolicyRegion> region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// `region` — derived from the provider schema description.
enum Route53RecordLatencyRoutingPolicyRegion implements TerraformEnum {
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

  const Route53RecordLatencyRoutingPolicyRegion(this.terraformValue);
  @override
  final String terraformValue;
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
    Route53RecordRoutingPolicy? routingPolicy,
    required TfArg<String> name,
    required Route53RecordAliasOrRecords aliasOrRecords,
    TfArg<String>? setIdentifier,
    TfArg<num>? ttl,
    required TfArg<Route53RecordType> type,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowOverwrite != null) 'allow_overwrite': allowOverwrite,
           if (healthCheckId != null) 'health_check_id': healthCheckId,
           ...?routingPolicy?.argMap,
           'name': name,
           ...aliasOrRecords.argMap,
           if (setIdentifier != null) 'set_identifier': setIdentifier,
           if (ttl != null) 'ttl': ttl,
           'type': type,
           'zone_id': zoneId,
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

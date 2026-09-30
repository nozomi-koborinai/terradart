// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_elb`.
const Set<String> _awsElbSensitive = <String>{};

/// Elb Desync Mitigation enum for `desync_mitigation_mode`.
enum ElbDesyncMitigationMode implements TerraformEnum {
  monitor('monitor'),
  defensive('defensive'),
  strictest('strictest');

  const ElbDesyncMitigationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_elb`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class ElbName {
  const ElbName();

  /// Sets `name`.
  const factory ElbName.name(TfArg<String> name) = ElbNameChoice;

  /// Sets `name_prefix`.
  const factory ElbName.namePrefix(TfArg<String> namePrefix) = ElbNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ElbName.name] choice: sets `name`.
final class ElbNameChoice extends ElbName {
  const ElbNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [ElbName.namePrefix] choice: sets `name_prefix`.
final class ElbNamePrefix extends ElbName {
  const ElbNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `access_logs` block of
/// `aws_elb` (derived from provider schema).
@immutable
final class ElbAccessLogs {
  const ElbAccessLogs({
    required this.bucket,
    this.bucketPrefix,
    this.enabled,
    this.interval,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? enabled;

  final TfArg<num>? interval;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'interval': ?interval?.toTfJson(),
  };
}

/// Typed helper for the `health_check` block of
/// `aws_elb` (derived from provider schema).
@immutable
final class ElbHealthCheck {
  const ElbHealthCheck({
    required this.healthyThreshold,
    required this.interval,
    required this.target,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  final TfArg<num> healthyThreshold;

  final TfArg<num> interval;

  final TfArg<String> target;

  final TfArg<num> timeout;

  final TfArg<num> unhealthyThreshold;

  Map<String, Object?> encode() => {
    'healthy_threshold': healthyThreshold.toTfJson(),
    'interval': interval.toTfJson(),
    'target': target.toTfJson(),
    'timeout': timeout.toTfJson(),
    'unhealthy_threshold': unhealthyThreshold.toTfJson(),
  };
}

/// Typed helper for the `listener` block of
/// `aws_elb` (derived from provider schema).
@immutable
final class ElbListener {
  const ElbListener({
    required this.instancePort,
    required this.instanceProtocol,
    required this.lbPort,
    required this.lbProtocol,
    this.sslCertificateId,
  });

  final TfArg<num> instancePort;

  final TfArg<String> instanceProtocol;

  final TfArg<num> lbPort;

  final TfArg<String> lbProtocol;

  final TfArg<String>? sslCertificateId;

  Map<String, Object?> encode() => {
    'instance_port': instancePort.toTfJson(),
    'instance_protocol': instanceProtocol.toTfJson(),
    'lb_port': lbPort.toTfJson(),
    'lb_protocol': lbProtocol.toTfJson(),
    'ssl_certificate_id': ?sslCertificateId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_elb`.
final class AwsElb extends Resource {
  static const String tfType = 'aws_elb';

  AwsElb({
    required super.localName,
    TfArg<List<String>>? availabilityZones,
    TfArg<bool>? connectionDraining,
    TfArg<num>? connectionDrainingTimeout,
    TfArg<bool>? crossZoneLoadBalancing,
    TfArg<ElbDesyncMitigationMode>? desyncMitigationMode,
    TfArg<num>? idleTimeout,
    TfArg<List<String>>? instances,
    TfArg<bool>? internal,
    ElbName? name,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<String>? sourceSecurityGroup,
    TfArg<List<RefTo<AwsSubnet>>>? subnets,
    TfArg<Map<String, String>>? tags,
    ElbAccessLogs? accessLogs,
    ElbHealthCheck? healthCheck,
    required List<ElbListener> listener,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zones': ?availabilityZones,
           'connection_draining': ?connectionDraining,
           'connection_draining_timeout': ?connectionDrainingTimeout,
           'cross_zone_load_balancing': ?crossZoneLoadBalancing,
           'desync_mitigation_mode': ?desyncMitigationMode,
           'idle_timeout': ?idleTimeout,
           'instances': ?instances,
           'internal': ?internal,
           ...?name?.argMap,
           'region': ?region,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'source_security_group': ?sourceSecurityGroup,
           'subnets': ?subnets?.encodeAs('id'),
           'tags': ?tags,
           if (accessLogs != null)
             'access_logs': TfArg.literal(accessLogs.encode()),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
           'listener': TfArg.literal([for (final e in listener) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElb>`.
  RefTo<AwsElb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `source_security_group_id` attribute.
  TfRef<String> get sourceSecurityGroupId =>
      TfRef.attribute<String>(this, 'source_security_group_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZonesRef =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `connection_draining` attribute.
  TfRef<bool> get connectionDrainingRef =>
      TfRef.attribute<bool>(this, 'connection_draining');

  /// Reference to `connection_draining_timeout` attribute.
  TfRef<num> get connectionDrainingTimeoutRef =>
      TfRef.attribute<num>(this, 'connection_draining_timeout');

  /// Reference to `cross_zone_load_balancing` attribute.
  TfRef<bool> get crossZoneLoadBalancingRef =>
      TfRef.attribute<bool>(this, 'cross_zone_load_balancing');

  /// Reference to `desync_mitigation_mode` attribute.
  TfRef<String> get desyncMitigationModeRef =>
      TfRef.attribute<String>(this, 'desync_mitigation_mode');

  /// Reference to `idle_timeout` attribute.
  TfRef<num> get idleTimeoutRef => TfRef.attribute<num>(this, 'idle_timeout');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instancesRef =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `internal` attribute.
  TfRef<bool> get internalRef => TfRef.attribute<bool>(this, 'internal');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroupsRef =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_security_group` attribute.
  TfRef<String> get sourceSecurityGroupRef =>
      TfRef.attribute<String>(this, 'source_security_group');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnetsRef =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

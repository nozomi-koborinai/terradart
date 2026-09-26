// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elb`.
const Set<String> _awsElbSensitive = <String>{};

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

  final TfArg<String> bucket;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? enabled;

  final TfArg<num>? interval;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
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
    if (sslCertificateId != null)
      'ssl_certificate_id': sslCertificateId!.toTfJson(),
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
    TfArg<String>? desyncMitigationMode,
    TfArg<num>? idleTimeout,
    TfArg<List<String>>? instances,
    TfArg<bool>? internal,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroups,
    TfArg<String>? sourceSecurityGroup,
    TfArg<List<String>>? subnets,
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
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (connectionDraining != null)
             'connection_draining': connectionDraining,
           if (connectionDrainingTimeout != null)
             'connection_draining_timeout': connectionDrainingTimeout,
           if (crossZoneLoadBalancing != null)
             'cross_zone_load_balancing': crossZoneLoadBalancing,
           if (desyncMitigationMode != null)
             'desync_mitigation_mode': desyncMitigationMode,
           if (idleTimeout != null) 'idle_timeout': idleTimeout,
           if (instances != null) 'instances': instances,
           if (internal != null) 'internal': internal,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (sourceSecurityGroup != null)
             'source_security_group': sourceSecurityGroup,
           if (subnets != null) 'subnets': subnets,
           if (tags != null) 'tags': tags,
           if (accessLogs != null)
             'access_logs': TfArg.literal(accessLogs.encode()),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
           'listener': TfArg.literal([for (final e in listener) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElbSensitive;

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
}

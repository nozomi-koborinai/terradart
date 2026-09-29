// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_alb_target_group`.
const Set<String> _awsAlbTargetGroupSensitive = <String>{};

/// Alb Target Group Ip Address enum for `ip_address_type`.
enum AlbTargetGroupIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const AlbTargetGroupIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group Load Balancing Algorithm enum for `load_balancing_algorithm_type`.
enum AlbTargetGroupLoadBalancingAlgorithmType implements TerraformEnum {
  roundRobin('round_robin'),
  leastOutstandingRequests('least_outstanding_requests'),
  weightedRandom('weighted_random');

  const AlbTargetGroupLoadBalancingAlgorithmType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group Load Balancing Anomaly enum for `load_balancing_anomaly_mitigation`.
enum AlbTargetGroupLoadBalancingAnomalyMitigation implements TerraformEnum {
  on('on'),
  off('off');

  const AlbTargetGroupLoadBalancingAnomalyMitigation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group Load Balancing Cross Zone enum for `load_balancing_cross_zone_enabled`.
enum AlbTargetGroupLoadBalancingCrossZoneEnabled implements TerraformEnum {
  trueCase('true'),
  falseCase('false'),
  useLoadBalancerConfiguration('use_load_balancer_configuration');

  const AlbTargetGroupLoadBalancingCrossZoneEnabled(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group enum for `protocol`.
enum AlbTargetGroupProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP'),
  tls('TLS'),
  udp('UDP'),
  tcpUdp('TCP_UDP'),
  geneve('GENEVE'),
  quic('QUIC'),
  tcpQuic('TCP_QUIC');

  const AlbTargetGroupProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group Protocol enum for `protocol_version`.
enum AlbTargetGroupProtocolVersion implements TerraformEnum {
  grpc('GRPC'),
  http1('HTTP1'),
  http2('HTTP2');

  const AlbTargetGroupProtocolVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Target Group Target enum for `target_type`.
enum AlbTargetGroupTargetType implements TerraformEnum {
  instance('instance'),
  ip('ip'),
  lambda('lambda'),
  alb('alb');

  const AlbTargetGroupTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_alb_target_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class AlbTargetGroupName {
  const AlbTargetGroupName();

  /// Sets `name`.
  const factory AlbTargetGroupName.name(TfArg<String> name) =
      AlbTargetGroupNameChoice;

  /// Sets `name_prefix`.
  const factory AlbTargetGroupName.namePrefix(TfArg<String> namePrefix) =
      AlbTargetGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AlbTargetGroupName.name] choice: sets `name`.
final class AlbTargetGroupNameChoice extends AlbTargetGroupName {
  const AlbTargetGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [AlbTargetGroupName.namePrefix] choice: sets `name_prefix`.
final class AlbTargetGroupNamePrefix extends AlbTargetGroupName {
  const AlbTargetGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `health_check` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupHealthCheck {
  const AlbTargetGroupHealthCheck({
    this.enabled,
    this.healthyThreshold,
    this.interval,
    this.matcher,
    this.path,
    this.port,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? healthyThreshold;

  final TfArg<num>? interval;

  final TfArg<String>? matcher;

  final TfArg<String>? path;

  final TfArg<String>? port;

  final TfArg<String>? protocol;

  final TfArg<num>? timeout;

  final TfArg<num>? unhealthyThreshold;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (healthyThreshold != null)
      'healthy_threshold': healthyThreshold!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (matcher != null) 'matcher': matcher!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (unhealthyThreshold != null)
      'unhealthy_threshold': unhealthyThreshold!.toTfJson(),
  };
}

/// Typed helper for the `stickiness` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupStickiness {
  const AlbTargetGroupStickiness({
    this.cookieDuration,
    this.cookieName,
    this.enabled,
    required this.type,
  });

  final TfArg<num>? cookieDuration;

  final TfArg<String>? cookieName;

  final TfArg<bool>? enabled;

  final TfArg<AlbTargetGroupStickinessType> type;

  Map<String, Object?> encode() => {
    if (cookieDuration != null) 'cookie_duration': cookieDuration!.toTfJson(),
    if (cookieName != null) 'cookie_name': cookieName!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum AlbTargetGroupStickinessType implements TerraformEnum {
  lbCookie('lb_cookie'),
  appCookie('app_cookie'),
  sourceIp('source_ip'),
  sourceIpDestIp('source_ip_dest_ip'),
  sourceIpDestIpProto('source_ip_dest_ip_proto');

  const AlbTargetGroupStickinessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_failover` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetFailover {
  const AlbTargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  final TfArg<AlbTargetGroupTargetFailoverOnDeregistration> onDeregistration;

  final TfArg<AlbTargetGroupTargetFailoverOnUnhealthy> onUnhealthy;

  Map<String, Object?> encode() => {
    'on_deregistration': onDeregistration.toTfJson(),
    'on_unhealthy': onUnhealthy.toTfJson(),
  };
}

/// `on_deregistration` — derived from the provider schema description.
enum AlbTargetGroupTargetFailoverOnDeregistration implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const AlbTargetGroupTargetFailoverOnDeregistration(this.terraformValue);
  @override
  final String terraformValue;
}

/// `on_unhealthy` — derived from the provider schema description.
enum AlbTargetGroupTargetFailoverOnUnhealthy implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const AlbTargetGroupTargetFailoverOnUnhealthy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_group_health` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetGroupHealth {
  const AlbTargetGroupTargetGroupHealth({
    this.dnsFailover,
    this.unhealthyStateRouting,
  });

  final AlbTargetGroupTargetGroupHealthDnsFailover? dnsFailover;

  final AlbTargetGroupTargetGroupHealthUnhealthyStateRouting?
  unhealthyStateRouting;

  Map<String, Object?> encode() => {
    if (dnsFailover != null) 'dns_failover': dnsFailover!.encode(),
    if (unhealthyStateRouting != null)
      'unhealthy_state_routing': unhealthyStateRouting!.encode(),
  };
}

/// Typed helper for the `target_group_health.dns_failover` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetGroupHealthDnsFailover {
  const AlbTargetGroupTargetGroupHealthDnsFailover({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  final TfArg<String>? minimumHealthyTargetsCount;

  final TfArg<String>? minimumHealthyTargetsPercentage;

  Map<String, Object?> encode() => {
    if (minimumHealthyTargetsCount != null)
      'minimum_healthy_targets_count': minimumHealthyTargetsCount!.toTfJson(),
    if (minimumHealthyTargetsPercentage != null)
      'minimum_healthy_targets_percentage': minimumHealthyTargetsPercentage!
          .toTfJson(),
  };
}

/// Typed helper for the `target_group_health.unhealthy_state_routing` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetGroupHealthUnhealthyStateRouting {
  const AlbTargetGroupTargetGroupHealthUnhealthyStateRouting({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  final TfArg<num>? minimumHealthyTargetsCount;

  final TfArg<String>? minimumHealthyTargetsPercentage;

  Map<String, Object?> encode() => {
    if (minimumHealthyTargetsCount != null)
      'minimum_healthy_targets_count': minimumHealthyTargetsCount!.toTfJson(),
    if (minimumHealthyTargetsPercentage != null)
      'minimum_healthy_targets_percentage': minimumHealthyTargetsPercentage!
          .toTfJson(),
  };
}

/// Typed helper for the `target_health_state` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetHealthState {
  const AlbTargetGroupTargetHealthState({
    required this.enableUnhealthyConnectionTermination,
    this.unhealthyDrainingInterval,
  });

  final TfArg<bool> enableUnhealthyConnectionTermination;

  final TfArg<num>? unhealthyDrainingInterval;

  Map<String, Object?> encode() => {
    'enable_unhealthy_connection_termination':
        enableUnhealthyConnectionTermination.toTfJson(),
    if (unhealthyDrainingInterval != null)
      'unhealthy_draining_interval': unhealthyDrainingInterval!.toTfJson(),
  };
}

/// Factory wrapper for `aws_alb_target_group`.
final class AwsAlbTargetGroup extends Resource {
  static const String tfType = 'aws_alb_target_group';

  AwsAlbTargetGroup({
    required super.localName,
    TfArg<bool>? connectionTermination,
    TfArg<String>? deregistrationDelay,
    TfArg<AlbTargetGroupIpAddressType>? ipAddressType,
    TfArg<bool>? lambdaMultiValueHeadersEnabled,
    TfArg<AlbTargetGroupLoadBalancingAlgorithmType>? loadBalancingAlgorithmType,
    TfArg<AlbTargetGroupLoadBalancingAnomalyMitigation>?
    loadBalancingAnomalyMitigation,
    TfArg<AlbTargetGroupLoadBalancingCrossZoneEnabled>?
    loadBalancingCrossZoneEnabled,
    AlbTargetGroupName? name,
    TfArg<num>? port,
    TfArg<String>? preserveClientIp,
    TfArg<AlbTargetGroupProtocol>? protocol,
    TfArg<AlbTargetGroupProtocolVersion>? protocolVersion,
    TfArg<bool>? proxyProtocolV2,
    TfArg<String>? region,
    TfArg<num>? slowStart,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? targetControlPort,
    TfArg<AlbTargetGroupTargetType>? targetType,
    RefTo<AwsVpc>? vpcId,
    AlbTargetGroupHealthCheck? healthCheck,
    AlbTargetGroupStickiness? stickiness,
    List<AlbTargetGroupTargetFailover>? targetFailover,
    AlbTargetGroupTargetGroupHealth? targetGroupHealth,
    List<AlbTargetGroupTargetHealthState>? targetHealthState,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (connectionTermination != null)
             'connection_termination': connectionTermination,
           if (deregistrationDelay != null)
             'deregistration_delay': deregistrationDelay,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (lambdaMultiValueHeadersEnabled != null)
             'lambda_multi_value_headers_enabled':
                 lambdaMultiValueHeadersEnabled,
           if (loadBalancingAlgorithmType != null)
             'load_balancing_algorithm_type': loadBalancingAlgorithmType,
           if (loadBalancingAnomalyMitigation != null)
             'load_balancing_anomaly_mitigation':
                 loadBalancingAnomalyMitigation,
           if (loadBalancingCrossZoneEnabled != null)
             'load_balancing_cross_zone_enabled': loadBalancingCrossZoneEnabled,
           ...?name?.argMap,
           if (port != null) 'port': port,
           if (preserveClientIp != null) 'preserve_client_ip': preserveClientIp,
           if (protocol != null) 'protocol': protocol,
           if (protocolVersion != null) 'protocol_version': protocolVersion,
           if (proxyProtocolV2 != null) 'proxy_protocol_v2': proxyProtocolV2,
           if (region != null) 'region': region,
           if (slowStart != null) 'slow_start': slowStart,
           if (tags != null) 'tags': tags,
           if (targetControlPort != null)
             'target_control_port': targetControlPort,
           if (targetType != null) 'target_type': targetType,
           if (vpcId != null) 'vpc_id': vpcId.encodeAs('id'),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
           if (stickiness != null)
             'stickiness': TfArg.literal(stickiness.encode()),
           if (targetFailover != null)
             'target_failover': TfArg.literal([
               for (final e in targetFailover) e.encode(),
             ]),
           if (targetGroupHealth != null)
             'target_group_health': TfArg.literal(targetGroupHealth.encode()),
           if (targetHealthState != null)
             'target_health_state': TfArg.literal([
               for (final e in targetHealthState) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAlbTargetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAlbTargetGroup>`.
  RefTo<AwsAlbTargetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');

  /// Reference to `load_balancer_arns` attribute.
  TfRef<List<String>> get loadBalancerArns =>
      TfRef.attribute<List<String>>(this, 'load_balancer_arns');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_target_group`.
const Set<String> _awsLbTargetGroupSensitive = <String>{};

/// Lb Target Group Ip Address enum for `ip_address_type`.
enum LbTargetGroupIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const LbTargetGroupIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group Load Balancing Algorithm enum for `load_balancing_algorithm_type`.
enum LbTargetGroupLoadBalancingAlgorithmType implements TerraformEnum {
  roundRobin('round_robin'),
  leastOutstandingRequests('least_outstanding_requests'),
  weightedRandom('weighted_random');

  const LbTargetGroupLoadBalancingAlgorithmType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group Load Balancing Anomaly enum for `load_balancing_anomaly_mitigation`.
enum LbTargetGroupLoadBalancingAnomalyMitigation implements TerraformEnum {
  on('on'),
  off('off');

  const LbTargetGroupLoadBalancingAnomalyMitigation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group Load Balancing Cross Zone enum for `load_balancing_cross_zone_enabled`.
enum LbTargetGroupLoadBalancingCrossZoneEnabled implements TerraformEnum {
  trueCase('true'),
  falseCase('false'),
  useLoadBalancerConfiguration('use_load_balancer_configuration');

  const LbTargetGroupLoadBalancingCrossZoneEnabled(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group enum for `protocol`.
enum LbTargetGroupProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP'),
  tls('TLS'),
  udp('UDP'),
  tcpUdp('TCP_UDP'),
  geneve('GENEVE'),
  quic('QUIC'),
  tcpQuic('TCP_QUIC');

  const LbTargetGroupProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group Protocol enum for `protocol_version`.
enum LbTargetGroupProtocolVersion implements TerraformEnum {
  grpc('GRPC'),
  http1('HTTP1'),
  http2('HTTP2');

  const LbTargetGroupProtocolVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Target Group Target enum for `target_type`.
enum LbTargetGroupTargetType implements TerraformEnum {
  instance('instance'),
  ip('ip'),
  lambda('lambda'),
  alb('alb');

  const LbTargetGroupTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_lb_target_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LbTargetGroupName {
  const LbTargetGroupName();

  /// Sets `name`.
  const factory LbTargetGroupName.name(TfArg<String> name) =
      LbTargetGroupNameName;

  /// Sets `name_prefix`.
  const factory LbTargetGroupName.namePrefix(TfArg<String> namePrefix) =
      LbTargetGroupNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbTargetGroupName.name] choice: sets `name`.
final class LbTargetGroupNameName extends LbTargetGroupName {
  const LbTargetGroupNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LbTargetGroupName.namePrefix] choice: sets `name_prefix`.
final class LbTargetGroupNameNamePrefix extends LbTargetGroupName {
  const LbTargetGroupNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `health_check` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupHealthCheck {
  const LbTargetGroupHealthCheck({
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
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupStickiness {
  const LbTargetGroupStickiness({
    this.cookieDuration,
    this.cookieName,
    this.enabled,
    required this.type,
  });

  final TfArg<num>? cookieDuration;

  final TfArg<String>? cookieName;

  final TfArg<bool>? enabled;

  final TfArg<LbTargetGroupStickinessType> type;

  Map<String, Object?> encode() => {
    if (cookieDuration != null) 'cookie_duration': cookieDuration!.toTfJson(),
    if (cookieName != null) 'cookie_name': cookieName!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum LbTargetGroupStickinessType implements TerraformEnum {
  lbCookie('lb_cookie'),
  appCookie('app_cookie'),
  sourceIp('source_ip'),
  sourceIpDestIp('source_ip_dest_ip'),
  sourceIpDestIpProto('source_ip_dest_ip_proto');

  const LbTargetGroupStickinessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_failover` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetFailover {
  const LbTargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  final TfArg<LbTargetGroupTargetFailoverOnDeregistration> onDeregistration;

  final TfArg<LbTargetGroupTargetFailoverOnUnhealthy> onUnhealthy;

  Map<String, Object?> encode() => {
    'on_deregistration': onDeregistration.toTfJson(),
    'on_unhealthy': onUnhealthy.toTfJson(),
  };
}

/// `on_deregistration` — derived from the provider schema description.
enum LbTargetGroupTargetFailoverOnDeregistration implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const LbTargetGroupTargetFailoverOnDeregistration(this.terraformValue);
  @override
  final String terraformValue;
}

/// `on_unhealthy` — derived from the provider schema description.
enum LbTargetGroupTargetFailoverOnUnhealthy implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const LbTargetGroupTargetFailoverOnUnhealthy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_group_health` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetGroupHealth {
  const LbTargetGroupTargetGroupHealth({
    this.dnsFailover,
    this.unhealthyStateRouting,
  });

  final LbTargetGroupTargetGroupHealthDnsFailover? dnsFailover;

  final LbTargetGroupTargetGroupHealthUnhealthyStateRouting?
  unhealthyStateRouting;

  Map<String, Object?> encode() => {
    if (dnsFailover != null) 'dns_failover': dnsFailover!.encode(),
    if (unhealthyStateRouting != null)
      'unhealthy_state_routing': unhealthyStateRouting!.encode(),
  };
}

/// Typed helper for the `target_group_health.dns_failover` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetGroupHealthDnsFailover {
  const LbTargetGroupTargetGroupHealthDnsFailover({
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
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetGroupHealthUnhealthyStateRouting {
  const LbTargetGroupTargetGroupHealthUnhealthyStateRouting({
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
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetHealthState {
  const LbTargetGroupTargetHealthState({
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

/// Factory wrapper for `aws_lb_target_group`.
final class AwsLbTargetGroup extends Resource {
  static const String tfType = 'aws_lb_target_group';

  AwsLbTargetGroup({
    required super.localName,
    TfArg<bool>? connectionTermination,
    TfArg<String>? deregistrationDelay,
    TfArg<LbTargetGroupIpAddressType>? ipAddressType,
    TfArg<bool>? lambdaMultiValueHeadersEnabled,
    TfArg<LbTargetGroupLoadBalancingAlgorithmType>? loadBalancingAlgorithmType,
    TfArg<LbTargetGroupLoadBalancingAnomalyMitigation>?
    loadBalancingAnomalyMitigation,
    TfArg<LbTargetGroupLoadBalancingCrossZoneEnabled>?
    loadBalancingCrossZoneEnabled,
    LbTargetGroupName? name,
    TfArg<num>? port,
    TfArg<String>? preserveClientIp,
    TfArg<LbTargetGroupProtocol>? protocol,
    TfArg<LbTargetGroupProtocolVersion>? protocolVersion,
    TfArg<bool>? proxyProtocolV2,
    TfArg<String>? region,
    TfArg<num>? slowStart,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? targetControlPort,
    TfArg<LbTargetGroupTargetType>? targetType,
    TfArg<String>? vpcId,
    LbTargetGroupHealthCheck? healthCheck,
    LbTargetGroupStickiness? stickiness,
    List<LbTargetGroupTargetFailover>? targetFailover,
    LbTargetGroupTargetGroupHealth? targetGroupHealth,
    List<LbTargetGroupTargetHealthState>? targetHealthState,
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
           if (vpcId != null) 'vpc_id': vpcId,
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
  Set<String> get sensitiveFields => _awsLbTargetGroupSensitive;

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

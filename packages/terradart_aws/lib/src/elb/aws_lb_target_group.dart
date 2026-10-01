// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

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
      LbTargetGroupNameChoice;

  /// Sets `name_prefix`.
  const factory LbTargetGroupName.namePrefix(TfArg<String> namePrefix) =
      LbTargetGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbTargetGroupName.name] choice: sets `name`.
final class LbTargetGroupNameChoice extends LbTargetGroupName {
  const LbTargetGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LbTargetGroupName.namePrefix] choice: sets `name_prefix`.
final class LbTargetGroupNamePrefix extends LbTargetGroupName {
  const LbTargetGroupNamePrefix(this.namePrefix);

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
    'enabled': ?enabled?.toTfJson(),
    'healthy_threshold': ?healthyThreshold?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'matcher': ?matcher?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'unhealthy_threshold': ?unhealthyThreshold?.toTfJson(),
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

  final TfArg<LbTargetGroupType> type;

  Map<String, Object?> encode() => {
    'cookie_duration': ?cookieDuration?.toTfJson(),
    'cookie_name': ?cookieName?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum LbTargetGroupType implements TerraformEnum {
  lbCookie('lb_cookie'),
  appCookie('app_cookie'),
  sourceIp('source_ip'),
  sourceIpDestIp('source_ip_dest_ip'),
  sourceIpDestIpProto('source_ip_dest_ip_proto');

  const LbTargetGroupType(this.terraformValue);
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

  final TfArg<LbTargetGroupOnDeregistration> onDeregistration;

  final TfArg<LbTargetGroupOnUnhealthy> onUnhealthy;

  Map<String, Object?> encode() => {
    'on_deregistration': onDeregistration.toTfJson(),
    'on_unhealthy': onUnhealthy.toTfJson(),
  };
}

/// `on_deregistration` — derived from the provider schema description.
enum LbTargetGroupOnDeregistration implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const LbTargetGroupOnDeregistration(this.terraformValue);
  @override
  final String terraformValue;
}

/// `on_unhealthy` — derived from the provider schema description.
enum LbTargetGroupOnUnhealthy implements TerraformEnum {
  rebalance('rebalance'),
  noRebalance('no_rebalance');

  const LbTargetGroupOnUnhealthy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_group_health` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupHealth {
  const LbTargetGroupHealth({this.dnsFailover, this.unhealthyStateRouting});

  final LbTargetGroupDnsFailover? dnsFailover;

  final LbTargetGroupUnhealthyStateRouting? unhealthyStateRouting;

  Map<String, Object?> encode() => {
    'dns_failover': ?dnsFailover?.encode(),
    'unhealthy_state_routing': ?unhealthyStateRouting?.encode(),
  };
}

/// Typed helper for the `target_group_health.dns_failover` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupDnsFailover {
  const LbTargetGroupDnsFailover({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  final TfArg<String>? minimumHealthyTargetsCount;

  final TfArg<String>? minimumHealthyTargetsPercentage;

  Map<String, Object?> encode() => {
    'minimum_healthy_targets_count': ?minimumHealthyTargetsCount?.toTfJson(),
    'minimum_healthy_targets_percentage': ?minimumHealthyTargetsPercentage
        ?.toTfJson(),
  };
}

/// Typed helper for the `target_group_health.unhealthy_state_routing` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupUnhealthyStateRouting {
  const LbTargetGroupUnhealthyStateRouting({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  final TfArg<num>? minimumHealthyTargetsCount;

  final TfArg<String>? minimumHealthyTargetsPercentage;

  Map<String, Object?> encode() => {
    'minimum_healthy_targets_count': ?minimumHealthyTargetsCount?.toTfJson(),
    'minimum_healthy_targets_percentage': ?minimumHealthyTargetsPercentage
        ?.toTfJson(),
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
    'unhealthy_draining_interval': ?unhealthyDrainingInterval?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lb_target_group`.
final class AwsLbTargetGroup extends Resource {
  static const String tfType = 'aws_lb_target_group';

  AwsLbTargetGroup(
    super.localName, {
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
    RefTo<AwsVpc>? vpcId,
    LbTargetGroupHealthCheck? healthCheck,
    LbTargetGroupStickiness? stickiness,
    List<LbTargetGroupTargetFailover>? targetFailover,
    LbTargetGroupHealth? targetGroupHealth,
    List<LbTargetGroupTargetHealthState>? targetHealthState,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_termination': ?connectionTermination,
           'deregistration_delay': ?deregistrationDelay,
           'ip_address_type': ?ipAddressType,
           'lambda_multi_value_headers_enabled':
               ?lambdaMultiValueHeadersEnabled,
           'load_balancing_algorithm_type': ?loadBalancingAlgorithmType,
           'load_balancing_anomaly_mitigation': ?loadBalancingAnomalyMitigation,
           'load_balancing_cross_zone_enabled': ?loadBalancingCrossZoneEnabled,
           ...?name?.argMap,
           'port': ?port,
           'preserve_client_ip': ?preserveClientIp,
           'protocol': ?protocol,
           'protocol_version': ?protocolVersion,
           'proxy_protocol_v2': ?proxyProtocolV2,
           'region': ?region,
           'slow_start': ?slowStart,
           'tags': ?tags,
           'target_control_port': ?targetControlPort,
           'target_type': ?targetType,
           'vpc_id': ?vpcId?.encodeAs('id'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbTargetGroup>`.
  RefTo<AwsLbTargetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');

  /// Reference to `load_balancer_arns` attribute.
  TfRef<List<String>> get loadBalancerArns =>
      TfRef.attribute<List<String>>(this, 'load_balancer_arns');

  /// Reference to `connection_termination` attribute.
  TfRef<bool> get connectionTermination =>
      TfRef.attribute<bool>(this, 'connection_termination');

  /// Reference to `deregistration_delay` attribute.
  TfRef<String> get deregistrationDelay =>
      TfRef.attribute<String>(this, 'deregistration_delay');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `lambda_multi_value_headers_enabled` attribute.
  TfRef<bool> get lambdaMultiValueHeadersEnabled =>
      TfRef.attribute<bool>(this, 'lambda_multi_value_headers_enabled');

  /// Reference to `load_balancing_algorithm_type` attribute.
  TfRef<String> get loadBalancingAlgorithmType =>
      TfRef.attribute<String>(this, 'load_balancing_algorithm_type');

  /// Reference to `load_balancing_anomaly_mitigation` attribute.
  TfRef<String> get loadBalancingAnomalyMitigation =>
      TfRef.attribute<String>(this, 'load_balancing_anomaly_mitigation');

  /// Reference to `load_balancing_cross_zone_enabled` attribute.
  TfRef<String> get loadBalancingCrossZoneEnabled =>
      TfRef.attribute<String>(this, 'load_balancing_cross_zone_enabled');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preserve_client_ip` attribute.
  TfRef<String> get preserveClientIp =>
      TfRef.attribute<String>(this, 'preserve_client_ip');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `protocol_version` attribute.
  TfRef<String> get protocolVersion =>
      TfRef.attribute<String>(this, 'protocol_version');

  /// Reference to `proxy_protocol_v2` attribute.
  TfRef<bool> get proxyProtocolV2 =>
      TfRef.attribute<bool>(this, 'proxy_protocol_v2');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `slow_start` attribute.
  TfRef<num> get slowStart => TfRef.attribute<num>(this, 'slow_start');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_control_port` attribute.
  TfRef<num> get targetControlPort =>
      TfRef.attribute<num>(this, 'target_control_port');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

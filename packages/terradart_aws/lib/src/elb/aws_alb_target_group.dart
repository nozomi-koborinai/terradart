// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_alb_target_group`.
const Set<String> _awsAlbTargetGroupSensitive = <String>{};

/// Alb Target Group Ip Address enum for `ip_address_type`.
extension type const AlbTargetGroupIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = AlbTargetGroupIpAddressType._(TfArgLiteral('ipv4'));
  static const ipv6 = AlbTargetGroupIpAddressType._(TfArgLiteral('ipv6'));

  static const List<AlbTargetGroupIpAddressType> values = [ipv4, ipv6];
}

/// Alb Target Group Load Balancing Algorithm enum for `load_balancing_algorithm_type`.
extension type const AlbTargetGroupLoadBalancingAlgorithmType._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupLoadBalancingAlgorithmType.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupLoadBalancingAlgorithmType.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupLoadBalancingAlgorithmType.arg(TfArg<String> arg)
    : this._(arg);

  static const roundRobin = AlbTargetGroupLoadBalancingAlgorithmType._(
    TfArgLiteral('round_robin'),
  );
  static const leastOutstandingRequests =
      AlbTargetGroupLoadBalancingAlgorithmType._(
        TfArgLiteral('least_outstanding_requests'),
      );
  static const weightedRandom = AlbTargetGroupLoadBalancingAlgorithmType._(
    TfArgLiteral('weighted_random'),
  );

  static const List<AlbTargetGroupLoadBalancingAlgorithmType> values = [
    roundRobin,
    leastOutstandingRequests,
    weightedRandom,
  ];
}

/// Alb Target Group Load Balancing Anomaly enum for `load_balancing_anomaly_mitigation`.
extension type const AlbTargetGroupLoadBalancingAnomalyMitigation._(
  TfArg<String> _
) implements TfArg<String> {
  AlbTargetGroupLoadBalancingAnomalyMitigation.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupLoadBalancingAnomalyMitigation.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupLoadBalancingAnomalyMitigation.arg(TfArg<String> arg)
    : this._(arg);

  static const on = AlbTargetGroupLoadBalancingAnomalyMitigation._(
    TfArgLiteral('on'),
  );
  static const off = AlbTargetGroupLoadBalancingAnomalyMitigation._(
    TfArgLiteral('off'),
  );

  static const List<AlbTargetGroupLoadBalancingAnomalyMitigation> values = [
    on,
    off,
  ];
}

/// Alb Target Group Load Balancing Cross Zone enum for `load_balancing_cross_zone_enabled`.
extension type const AlbTargetGroupLoadBalancingCrossZoneEnabled._(
  TfArg<String> _
) implements TfArg<String> {
  AlbTargetGroupLoadBalancingCrossZoneEnabled.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupLoadBalancingCrossZoneEnabled.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupLoadBalancingCrossZoneEnabled.arg(TfArg<String> arg)
    : this._(arg);

  static const trueCase = AlbTargetGroupLoadBalancingCrossZoneEnabled._(
    TfArgLiteral('true'),
  );
  static const falseCase = AlbTargetGroupLoadBalancingCrossZoneEnabled._(
    TfArgLiteral('false'),
  );
  static const useLoadBalancerConfiguration =
      AlbTargetGroupLoadBalancingCrossZoneEnabled._(
        TfArgLiteral('use_load_balancer_configuration'),
      );

  static const List<AlbTargetGroupLoadBalancingCrossZoneEnabled> values = [
    trueCase,
    falseCase,
    useLoadBalancerConfiguration,
  ];
}

/// Alb Target Group enum for `protocol`.
extension type const AlbTargetGroupProtocol._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupProtocol.variable(String name) : this._(TfArg.variable(name));
  AlbTargetGroupProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = AlbTargetGroupProtocol._(TfArgLiteral('HTTP'));
  static const https = AlbTargetGroupProtocol._(TfArgLiteral('HTTPS'));
  static const tcp = AlbTargetGroupProtocol._(TfArgLiteral('TCP'));
  static const tls = AlbTargetGroupProtocol._(TfArgLiteral('TLS'));
  static const udp = AlbTargetGroupProtocol._(TfArgLiteral('UDP'));
  static const tcpUdp = AlbTargetGroupProtocol._(TfArgLiteral('TCP_UDP'));
  static const geneve = AlbTargetGroupProtocol._(TfArgLiteral('GENEVE'));
  static const quic = AlbTargetGroupProtocol._(TfArgLiteral('QUIC'));
  static const tcpQuic = AlbTargetGroupProtocol._(TfArgLiteral('TCP_QUIC'));

  static const List<AlbTargetGroupProtocol> values = [
    http,
    https,
    tcp,
    tls,
    udp,
    tcpUdp,
    geneve,
    quic,
    tcpQuic,
  ];
}

/// Alb Target Group Protocol enum for `protocol_version`.
extension type const AlbTargetGroupProtocolVersion._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupProtocolVersion.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupProtocolVersion.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupProtocolVersion.arg(TfArg<String> arg) : this._(arg);

  static const grpc = AlbTargetGroupProtocolVersion._(TfArgLiteral('GRPC'));
  static const http1 = AlbTargetGroupProtocolVersion._(TfArgLiteral('HTTP1'));
  static const http2 = AlbTargetGroupProtocolVersion._(TfArgLiteral('HTTP2'));

  static const List<AlbTargetGroupProtocolVersion> values = [
    grpc,
    http1,
    http2,
  ];
}

/// Alb Target Group Target enum for `target_type`.
extension type const AlbTargetGroupTargetType._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupTargetType.variable(String name) : this._(TfArg.variable(name));
  AlbTargetGroupTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupTargetType.arg(TfArg<String> arg) : this._(arg);

  static const instance = AlbTargetGroupTargetType._(TfArgLiteral('instance'));
  static const ip = AlbTargetGroupTargetType._(TfArgLiteral('ip'));
  static const lambda = AlbTargetGroupTargetType._(TfArgLiteral('lambda'));
  static const alb = AlbTargetGroupTargetType._(TfArgLiteral('alb'));

  static const List<AlbTargetGroupTargetType> values = [
    instance,
    ip,
    lambda,
    alb,
  ];
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

  final AlbTargetGroupType type;

  Map<String, Object?> encode() => {
    'cookie_duration': ?cookieDuration?.toTfJson(),
    'cookie_name': ?cookieName?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const AlbTargetGroupType._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupType.variable(String name) : this._(TfArg.variable(name));
  AlbTargetGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupType.arg(TfArg<String> arg) : this._(arg);

  static const lbCookie = AlbTargetGroupType._(TfArgLiteral('lb_cookie'));
  static const appCookie = AlbTargetGroupType._(TfArgLiteral('app_cookie'));
  static const sourceIp = AlbTargetGroupType._(TfArgLiteral('source_ip'));
  static const sourceIpDestIp = AlbTargetGroupType._(
    TfArgLiteral('source_ip_dest_ip'),
  );
  static const sourceIpDestIpProto = AlbTargetGroupType._(
    TfArgLiteral('source_ip_dest_ip_proto'),
  );

  static const List<AlbTargetGroupType> values = [
    lbCookie,
    appCookie,
    sourceIp,
    sourceIpDestIp,
    sourceIpDestIpProto,
  ];
}

/// Typed helper for the `target_failover` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupTargetFailover {
  const AlbTargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  final AlbTargetGroupOnDeregistration onDeregistration;

  final AlbTargetGroupOnUnhealthy onUnhealthy;

  Map<String, Object?> encode() => {
    'on_deregistration': onDeregistration.toTfJson(),
    'on_unhealthy': onUnhealthy.toTfJson(),
  };
}

/// `on_deregistration` — derived from the provider schema description.
extension type const AlbTargetGroupOnDeregistration._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupOnDeregistration.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupOnDeregistration.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupOnDeregistration.arg(TfArg<String> arg) : this._(arg);

  static const rebalance = AlbTargetGroupOnDeregistration._(
    TfArgLiteral('rebalance'),
  );
  static const noRebalance = AlbTargetGroupOnDeregistration._(
    TfArgLiteral('no_rebalance'),
  );

  static const List<AlbTargetGroupOnDeregistration> values = [
    rebalance,
    noRebalance,
  ];
}

/// `on_unhealthy` — derived from the provider schema description.
extension type const AlbTargetGroupOnUnhealthy._(TfArg<String> _)
    implements TfArg<String> {
  AlbTargetGroupOnUnhealthy.variable(String name)
    : this._(TfArg.variable(name));
  AlbTargetGroupOnUnhealthy.expression(String template)
    : this._(TfArg.expression(template));
  const AlbTargetGroupOnUnhealthy.arg(TfArg<String> arg) : this._(arg);

  static const rebalance = AlbTargetGroupOnUnhealthy._(
    TfArgLiteral('rebalance'),
  );
  static const noRebalance = AlbTargetGroupOnUnhealthy._(
    TfArgLiteral('no_rebalance'),
  );

  static const List<AlbTargetGroupOnUnhealthy> values = [
    rebalance,
    noRebalance,
  ];
}

/// Typed helper for the `target_group_health` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupHealth {
  const AlbTargetGroupHealth({this.dnsFailover, this.unhealthyStateRouting});

  final AlbTargetGroupDnsFailover? dnsFailover;

  final AlbTargetGroupUnhealthyStateRouting? unhealthyStateRouting;

  Map<String, Object?> encode() => {
    'dns_failover': ?dnsFailover?.encode(),
    'unhealthy_state_routing': ?unhealthyStateRouting?.encode(),
  };
}

/// Typed helper for the `target_group_health.dns_failover` block of
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupDnsFailover {
  const AlbTargetGroupDnsFailover({
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
/// `aws_alb_target_group` (derived from provider schema).
@immutable
final class AlbTargetGroupUnhealthyStateRouting {
  const AlbTargetGroupUnhealthyStateRouting({
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
    'unhealthy_draining_interval': ?unhealthyDrainingInterval?.toTfJson(),
  };
}

/// Factory wrapper for `aws_alb_target_group`.
final class AwsAlbTargetGroup extends Resource {
  static const String tfType = 'aws_alb_target_group';

  AwsAlbTargetGroup(
    super.localName, {
    TfArg<bool>? connectionTermination,
    TfArg<String>? deregistrationDelay,
    AlbTargetGroupIpAddressType? ipAddressType,
    TfArg<bool>? lambdaMultiValueHeadersEnabled,
    AlbTargetGroupLoadBalancingAlgorithmType? loadBalancingAlgorithmType,
    AlbTargetGroupLoadBalancingAnomalyMitigation?
    loadBalancingAnomalyMitigation,
    AlbTargetGroupLoadBalancingCrossZoneEnabled? loadBalancingCrossZoneEnabled,
    AlbTargetGroupName? name,
    TfArg<num>? port,
    TfArg<String>? preserveClientIp,
    AlbTargetGroupProtocol? protocol,
    AlbTargetGroupProtocolVersion? protocolVersion,
    TfArg<bool>? proxyProtocolV2,
    TfArg<String>? region,
    TfArg<num>? slowStart,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? targetControlPort,
    AlbTargetGroupTargetType? targetType,
    RefTo<AwsVpc>? vpcId,
    AlbTargetGroupHealthCheck? healthCheck,
    AlbTargetGroupStickiness? stickiness,
    List<AlbTargetGroupTargetFailover>? targetFailover,
    AlbTargetGroupHealth? targetGroupHealth,
    List<AlbTargetGroupTargetHealthState>? targetHealthState,
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
  Set<String> get sensitiveFields => _awsAlbTargetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAlbTargetGroup>`.
  RefTo<AwsAlbTargetGroup> get ref => RefTo.of(this);

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

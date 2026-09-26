// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_target_group`.
const Set<String> _awsLbTargetGroupSensitive = <String>{};

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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (cookieDuration != null) 'cookie_duration': cookieDuration!.toTfJson(),
    if (cookieName != null) 'cookie_name': cookieName!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `target_failover` block of
/// `aws_lb_target_group` (derived from provider schema).
@immutable
final class LbTargetGroupTargetFailover {
  const LbTargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  final TfArg<String> onDeregistration;

  final TfArg<String> onUnhealthy;

  Map<String, Object?> encode() => {
    'on_deregistration': onDeregistration.toTfJson(),
    'on_unhealthy': onUnhealthy.toTfJson(),
  };
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
    TfArg<String>? ipAddressType,
    TfArg<bool>? lambdaMultiValueHeadersEnabled,
    TfArg<String>? loadBalancingAlgorithmType,
    TfArg<String>? loadBalancingAnomalyMitigation,
    TfArg<String>? loadBalancingCrossZoneEnabled,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<num>? port,
    TfArg<String>? preserveClientIp,
    TfArg<String>? protocol,
    TfArg<String>? protocolVersion,
    TfArg<bool>? proxyProtocolV2,
    TfArg<String>? region,
    TfArg<num>? slowStart,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? targetControlPort,
    TfArg<String>? targetType,
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
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_target_group`.
const Set<String> _awsVpclatticeTargetGroupSensitive = <String>{};

/// Typed helper for the `config` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupConfig {
  const VpclatticeTargetGroupConfig({
    this.ipAddressType,
    this.lambdaEventStructureVersion,
    this.port,
    this.protocol,
    this.protocolVersion,
    this.vpcIdentifier,
    this.healthCheck,
  });

  final TfArg<String>? ipAddressType;

  final TfArg<String>? lambdaEventStructureVersion;

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  final TfArg<String>? protocolVersion;

  final TfArg<String>? vpcIdentifier;

  final VpclatticeTargetGroupConfigHealthCheck? healthCheck;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    if (lambdaEventStructureVersion != null)
      'lambda_event_structure_version': lambdaEventStructureVersion!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (protocolVersion != null)
      'protocol_version': protocolVersion!.toTfJson(),
    if (vpcIdentifier != null) 'vpc_identifier': vpcIdentifier!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.encode(),
  };
}

/// Typed helper for the `config.health_check` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupConfigHealthCheck {
  const VpclatticeTargetGroupConfigHealthCheck({
    this.enabled,
    this.healthCheckIntervalSeconds,
    this.healthCheckTimeoutSeconds,
    this.healthyThresholdCount,
    this.path,
    this.port,
    this.protocol,
    this.protocolVersion,
    this.unhealthyThresholdCount,
    this.matcher,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? healthCheckIntervalSeconds;

  final TfArg<num>? healthCheckTimeoutSeconds;

  final TfArg<num>? healthyThresholdCount;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  final TfArg<String>? protocolVersion;

  final TfArg<num>? unhealthyThresholdCount;

  final VpclatticeTargetGroupConfigHealthCheckMatcher? matcher;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (healthCheckIntervalSeconds != null)
      'health_check_interval_seconds': healthCheckIntervalSeconds!.toTfJson(),
    if (healthCheckTimeoutSeconds != null)
      'health_check_timeout_seconds': healthCheckTimeoutSeconds!.toTfJson(),
    if (healthyThresholdCount != null)
      'healthy_threshold_count': healthyThresholdCount!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (protocolVersion != null)
      'protocol_version': protocolVersion!.toTfJson(),
    if (unhealthyThresholdCount != null)
      'unhealthy_threshold_count': unhealthyThresholdCount!.toTfJson(),
    if (matcher != null) 'matcher': matcher!.encode(),
  };
}

/// Typed helper for the `config.health_check.matcher` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupConfigHealthCheckMatcher {
  const VpclatticeTargetGroupConfigHealthCheckMatcher({this.value});

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpclattice_target_group`.
final class AwsVpclatticeTargetGroup extends Resource {
  static const String tfType = 'aws_vpclattice_target_group';

  AwsVpclatticeTargetGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    VpclatticeTargetGroupConfig? config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeTargetGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

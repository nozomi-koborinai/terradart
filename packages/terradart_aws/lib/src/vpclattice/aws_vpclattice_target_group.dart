// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_target_group`.
const Set<String> _awsVpclatticeTargetGroupSensitive = <String>{};

/// Vpclattice Target Group enum for `type`.
enum VpclatticeTargetGroupType implements TerraformEnum {
  ip('IP'),
  lambda('LAMBDA'),
  instance('INSTANCE'),
  alb('ALB');

  const VpclatticeTargetGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<VpclatticeTargetGroupConfigIpAddressType>? ipAddressType;

  final TfArg<VpclatticeTargetGroupConfigLambdaEventStructureVersion>?
  lambdaEventStructureVersion;

  final TfArg<num>? port;

  final TfArg<VpclatticeTargetGroupConfigProtocol>? protocol;

  final TfArg<VpclatticeTargetGroupConfigProtocolVersion>? protocolVersion;

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

/// `ip_address_type` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const VpclatticeTargetGroupConfigIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `lambda_event_structure_version` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigLambdaEventStructureVersion
    implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const VpclatticeTargetGroupConfigLambdaEventStructureVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `protocol` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP');

  const VpclatticeTargetGroupConfigProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol_version` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigProtocolVersion implements TerraformEnum {
  http1('HTTP1'),
  http2('HTTP2'),
  grpc('GRPC');

  const VpclatticeTargetGroupConfigProtocolVersion(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<VpclatticeTargetGroupConfigHealthCheckProtocol>? protocol;

  final TfArg<VpclatticeTargetGroupConfigHealthCheckProtocolVersion>?
  protocolVersion;

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

/// `protocol` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigHealthCheckProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP');

  const VpclatticeTargetGroupConfigHealthCheckProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol_version` — derived from the provider schema description.
enum VpclatticeTargetGroupConfigHealthCheckProtocolVersion
    implements TerraformEnum {
  http1('HTTP1'),
  http2('HTTP2');

  const VpclatticeTargetGroupConfigHealthCheckProtocolVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required TfArg<VpclatticeTargetGroupType> type,
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

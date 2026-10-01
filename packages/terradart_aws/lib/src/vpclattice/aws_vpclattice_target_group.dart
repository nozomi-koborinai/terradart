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

  final TfArg<VpclatticeTargetGroupIpAddressType>? ipAddressType;

  final TfArg<VpclatticeTargetGroupLambdaEventStructureVersion>?
  lambdaEventStructureVersion;

  final TfArg<num>? port;

  final TfArg<VpclatticeTargetGroupProtocol>? protocol;

  final TfArg<VpclatticeTargetGroupProtocolVersion>? protocolVersion;

  final TfArg<String>? vpcIdentifier;

  final VpclatticeTargetGroupHealthCheck? healthCheck;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'lambda_event_structure_version': ?lambdaEventStructureVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'protocol_version': ?protocolVersion?.toTfJson(),
    'vpc_identifier': ?vpcIdentifier?.toTfJson(),
    'health_check': ?healthCheck?.encode(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum VpclatticeTargetGroupIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const VpclatticeTargetGroupIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `lambda_event_structure_version` — derived from the provider schema description.
enum VpclatticeTargetGroupLambdaEventStructureVersion implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const VpclatticeTargetGroupLambdaEventStructureVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol` — derived from the provider schema description.
enum VpclatticeTargetGroupProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP');

  const VpclatticeTargetGroupProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol_version` — derived from the provider schema description.
enum VpclatticeTargetGroupProtocolVersion implements TerraformEnum {
  http1('HTTP1'),
  http2('HTTP2'),
  grpc('GRPC');

  const VpclatticeTargetGroupProtocolVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.health_check` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupHealthCheck {
  const VpclatticeTargetGroupHealthCheck({
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

  final TfArg<VpclatticeTargetGroupProtocol>? protocol;

  final TfArg<VpclatticeTargetGroupHealthCheckProtocolVersion>? protocolVersion;

  final TfArg<num>? unhealthyThresholdCount;

  final VpclatticeTargetGroupMatcher? matcher;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'health_check_interval_seconds': ?healthCheckIntervalSeconds?.toTfJson(),
    'health_check_timeout_seconds': ?healthCheckTimeoutSeconds?.toTfJson(),
    'healthy_threshold_count': ?healthyThresholdCount?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'protocol_version': ?protocolVersion?.toTfJson(),
    'unhealthy_threshold_count': ?unhealthyThresholdCount?.toTfJson(),
    'matcher': ?matcher?.encode(),
  };
}

/// `protocol_version` — derived from the provider schema description.
enum VpclatticeTargetGroupHealthCheckProtocolVersion implements TerraformEnum {
  http1('HTTP1'),
  http2('HTTP2');

  const VpclatticeTargetGroupHealthCheckProtocolVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.health_check.matcher` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupMatcher {
  const VpclatticeTargetGroupMatcher({this.value});

  final TfArg<String>? value;

  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
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
           'region': ?region,
           'tags': ?tags,
           'type': type,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeTargetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeTargetGroup>`.
  RefTo<AwsVpclatticeTargetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_target_group`.
const Set<String> _awsVpclatticeTargetGroupSensitive = <String>{};

/// Vpclattice Target Group enum for `type`.
extension type const VpclatticeTargetGroupType._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeTargetGroupType.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupType.arg(TfArg<String> arg) : this._(arg);

  static const ip = VpclatticeTargetGroupType._(TfArgLiteral('IP'));
  static const lambda = VpclatticeTargetGroupType._(TfArgLiteral('LAMBDA'));
  static const instance = VpclatticeTargetGroupType._(TfArgLiteral('INSTANCE'));
  static const alb = VpclatticeTargetGroupType._(TfArgLiteral('ALB'));

  static const List<VpclatticeTargetGroupType> values = [
    ip,
    lambda,
    instance,
    alb,
  ];
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

  final VpclatticeTargetGroupIpAddressType? ipAddressType;

  final VpclatticeTargetGroupLambdaEventStructureVersion?
  lambdaEventStructureVersion;

  final TfArg<num>? port;

  final VpclatticeTargetGroupProtocol? protocol;

  final VpclatticeTargetGroupProtocolVersion? protocolVersion;

  final TfArg<String>? vpcIdentifier;

  final VpclatticeTargetGroupHealthCheck? healthCheck;

  @internal
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
extension type const VpclatticeTargetGroupIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeTargetGroupIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = VpclatticeTargetGroupIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = VpclatticeTargetGroupIpAddressType._(
    TfArgLiteral('IPV6'),
  );

  static const List<VpclatticeTargetGroupIpAddressType> values = [ipv4, ipv6];
}

/// `lambda_event_structure_version` — derived from the provider schema description.
extension type const VpclatticeTargetGroupLambdaEventStructureVersion._(
  TfArg<String> _
) implements TfArg<String> {
  VpclatticeTargetGroupLambdaEventStructureVersion.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupLambdaEventStructureVersion.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupLambdaEventStructureVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1 = VpclatticeTargetGroupLambdaEventStructureVersion._(
    TfArgLiteral('V1'),
  );
  static const v2 = VpclatticeTargetGroupLambdaEventStructureVersion._(
    TfArgLiteral('V2'),
  );

  static const List<VpclatticeTargetGroupLambdaEventStructureVersion> values = [
    v1,
    v2,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const VpclatticeTargetGroupProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeTargetGroupProtocol.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = VpclatticeTargetGroupProtocol._(TfArgLiteral('HTTP'));
  static const https = VpclatticeTargetGroupProtocol._(TfArgLiteral('HTTPS'));
  static const tcp = VpclatticeTargetGroupProtocol._(TfArgLiteral('TCP'));

  static const List<VpclatticeTargetGroupProtocol> values = [http, https, tcp];
}

/// `protocol_version` — derived from the provider schema description.
extension type const VpclatticeTargetGroupProtocolVersion._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeTargetGroupProtocolVersion.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupProtocolVersion.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupProtocolVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const http1 = VpclatticeTargetGroupProtocolVersion._(
    TfArgLiteral('HTTP1'),
  );
  static const http2 = VpclatticeTargetGroupProtocolVersion._(
    TfArgLiteral('HTTP2'),
  );
  static const grpc = VpclatticeTargetGroupProtocolVersion._(
    TfArgLiteral('GRPC'),
  );

  static const List<VpclatticeTargetGroupProtocolVersion> values = [
    http1,
    http2,
    grpc,
  ];
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

  final VpclatticeTargetGroupProtocol? protocol;

  final VpclatticeTargetGroupHealthCheckProtocolVersion? protocolVersion;

  final TfArg<num>? unhealthyThresholdCount;

  final VpclatticeTargetGroupMatcher? matcher;

  @internal
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
extension type const VpclatticeTargetGroupHealthCheckProtocolVersion._(
  TfArg<String> _
) implements TfArg<String> {
  VpclatticeTargetGroupHealthCheckProtocolVersion.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeTargetGroupHealthCheckProtocolVersion.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeTargetGroupHealthCheckProtocolVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const http1 = VpclatticeTargetGroupHealthCheckProtocolVersion._(
    TfArgLiteral('HTTP1'),
  );
  static const http2 = VpclatticeTargetGroupHealthCheckProtocolVersion._(
    TfArgLiteral('HTTP2'),
  );

  static const List<VpclatticeTargetGroupHealthCheckProtocolVersion> values = [
    http1,
    http2,
  ];
}

/// Typed helper for the `config.health_check.matcher` block of
/// `aws_vpclattice_target_group` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupMatcher {
  const VpclatticeTargetGroupMatcher({this.value});

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
}

/// Factory wrapper for `aws_vpclattice_target_group`.
final class AwsVpclatticeTargetGroup extends Resource {
  static const String tfType = 'aws_vpclattice_target_group';

  AwsVpclatticeTargetGroup(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required VpclatticeTargetGroupType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

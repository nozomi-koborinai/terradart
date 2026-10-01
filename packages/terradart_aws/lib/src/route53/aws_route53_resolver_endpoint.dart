// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_route53_resolver_endpoint`.
const Set<String> _awsRoute53ResolverEndpointSensitive = <String>{};

/// Route53 Resolver Endpoint enum for `direction`.
extension type const Route53ResolverEndpointDirection._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverEndpointDirection.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverEndpointDirection.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverEndpointDirection.arg(TfArg<String> arg) : this._(arg);

  static const inbound = Route53ResolverEndpointDirection._(
    TfArgLiteral('INBOUND'),
  );
  static const outbound = Route53ResolverEndpointDirection._(
    TfArgLiteral('OUTBOUND'),
  );
  static const inboundDelegation = Route53ResolverEndpointDirection._(
    TfArgLiteral('INBOUND_DELEGATION'),
  );

  static const List<Route53ResolverEndpointDirection> values = [
    inbound,
    outbound,
    inboundDelegation,
  ];
}

/// Route53 Resolver Endpoint enum for `protocols`.
extension type const Route53ResolverEndpointProtocols._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverEndpointProtocols.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverEndpointProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverEndpointProtocols.arg(TfArg<String> arg) : this._(arg);

  static const doh = Route53ResolverEndpointProtocols._(TfArgLiteral('DoH'));
  static const do53 = Route53ResolverEndpointProtocols._(TfArgLiteral('Do53'));
  static const dohFips = Route53ResolverEndpointProtocols._(
    TfArgLiteral('DoH-FIPS'),
  );

  static const List<Route53ResolverEndpointProtocols> values = [
    doh,
    do53,
    dohFips,
  ];
}

/// Route53 Resolver Endpoint enum for `resolver_endpoint_type`.
extension type const Route53ResolverEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const ipv6 = Route53ResolverEndpointType._(TfArgLiteral('IPV6'));
  static const ipv4 = Route53ResolverEndpointType._(TfArgLiteral('IPV4'));
  static const dualstack = Route53ResolverEndpointType._(
    TfArgLiteral('DUALSTACK'),
  );

  static const List<Route53ResolverEndpointType> values = [
    ipv6,
    ipv4,
    dualstack,
  ];
}

/// Typed helper for the `ip_address` block of
/// `aws_route53_resolver_endpoint` (derived from provider schema).
@immutable
final class Route53ResolverEndpointIpAddress {
  const Route53ResolverEndpointIpAddress({
    this.ip,
    this.ipv6,
    required this.subnetId,
  });

  final TfArg<String>? ip;

  final TfArg<String>? ipv6;

  final RefTo<AwsSubnet> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'ip': ?ip?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_resolver_endpoint`.
final class AwsRoute53ResolverEndpoint extends Resource {
  static const String tfType = 'aws_route53_resolver_endpoint';

  AwsRoute53ResolverEndpoint(
    super.localName, {
    required Route53ResolverEndpointDirection direction,
    TfArg<String>? name,
    List<Route53ResolverEndpointProtocols>? protocols,
    TfArg<String>? region,
    Route53ResolverEndpointType? resolverEndpointType,
    TfArg<bool>? rniEnhancedMetricsEnabled,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? targetNameServerMetricsEnabled,
    required List<Route53ResolverEndpointIpAddress> ipAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': direction,
           'name': ?name,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           'region': ?region,
           'resolver_endpoint_type': ?resolverEndpointType,
           'rni_enhanced_metrics_enabled': ?rniEnhancedMetricsEnabled,
           'security_group_ids': securityGroupIds.encodeAs('id'),
           'tags': ?tags,
           'target_name_server_metrics_enabled':
               ?targetNameServerMetricsEnabled,
           'ip_address': TfArg.literal([for (final e in ipAddress) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverEndpoint>`.
  RefTo<AwsRoute53ResolverEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `host_vpc_id` attribute.
  TfRef<String> get hostVpcId => TfRef.attribute<String>(this, 'host_vpc_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_endpoint_type` attribute.
  TfRef<String> get resolverEndpointType =>
      TfRef.attribute<String>(this, 'resolver_endpoint_type');

  /// Reference to `rni_enhanced_metrics_enabled` attribute.
  TfRef<bool> get rniEnhancedMetricsEnabled =>
      TfRef.attribute<bool>(this, 'rni_enhanced_metrics_enabled');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_name_server_metrics_enabled` attribute.
  TfRef<bool> get targetNameServerMetricsEnabled =>
      TfRef.attribute<bool>(this, 'target_name_server_metrics_enabled');
}

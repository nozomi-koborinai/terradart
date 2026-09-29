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
enum Route53ResolverEndpointDirection implements TerraformEnum {
  inbound('INBOUND'),
  outbound('OUTBOUND'),
  inboundDelegation('INBOUND_DELEGATION');

  const Route53ResolverEndpointDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Endpoint enum for `protocols`.
enum Route53ResolverEndpointProtocols implements TerraformEnum {
  doh('DoH'),
  do53('Do53'),
  dohFips('DoH-FIPS');

  const Route53ResolverEndpointProtocols(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Endpoint Resolver Endpoint enum for `resolver_endpoint_type`.
enum Route53ResolverEndpointResolverEndpointType implements TerraformEnum {
  ipv6('IPV6'),
  ipv4('IPV4'),
  dualstack('DUALSTACK');

  const Route53ResolverEndpointResolverEndpointType(this.terraformValue);
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {
    'ip': ?ip?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_resolver_endpoint`.
final class AwsRoute53ResolverEndpoint extends Resource {
  static const String tfType = 'aws_route53_resolver_endpoint';

  AwsRoute53ResolverEndpoint({
    required super.localName,
    required TfArg<Route53ResolverEndpointDirection> direction,
    TfArg<String>? name,
    List<TfArg<Route53ResolverEndpointProtocols>>? protocols,
    TfArg<String>? region,
    TfArg<Route53ResolverEndpointResolverEndpointType>? resolverEndpointType,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `host_vpc_id` attribute.
  TfRef<String> get hostVpcId => TfRef.attribute<String>(this, 'host_vpc_id');
}

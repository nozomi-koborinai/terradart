// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_endpoint`.
const Set<String> _awsRoute53ResolverEndpointSensitive = <String>{};

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

  final TfArg<String> subnetId;

  Map<String, Object?> encode() => {
    if (ip != null) 'ip': ip!.toTfJson(),
    if (ipv6 != null) 'ipv6': ipv6!.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_resolver_endpoint`.
final class AwsRoute53ResolverEndpoint extends Resource {
  static const String tfType = 'aws_route53_resolver_endpoint';

  AwsRoute53ResolverEndpoint({
    required super.localName,
    required TfArg<String> direction,
    TfArg<String>? name,
    TfArg<List<String>>? protocols,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointType,
    TfArg<bool>? rniEnhancedMetricsEnabled,
    required TfArg<List<String>> securityGroupIds,
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
           if (name != null) 'name': name,
           if (protocols != null) 'protocols': protocols,
           if (region != null) 'region': region,
           if (resolverEndpointType != null)
             'resolver_endpoint_type': resolverEndpointType,
           if (rniEnhancedMetricsEnabled != null)
             'rni_enhanced_metrics_enabled': rniEnhancedMetricsEnabled,
           'security_group_ids': securityGroupIds,
           if (tags != null) 'tags': tags,
           if (targetNameServerMetricsEnabled != null)
             'target_name_server_metrics_enabled':
                 targetNameServerMetricsEnabled,
           'ip_address': TfArg.literal([for (final e in ipAddress) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `host_vpc_id` attribute.
  TfRef<String> get hostVpcId => TfRef.attribute<String>(this, 'host_vpc_id');
}

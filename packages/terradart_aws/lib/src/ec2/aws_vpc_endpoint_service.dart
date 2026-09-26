// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_service`.
const Set<String> _awsVpcEndpointServiceSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_service`.
final class AwsVpcEndpointService extends Resource {
  static const String tfType = 'aws_vpc_endpoint_service';

  AwsVpcEndpointService({
    required super.localName,
    required TfArg<bool> acceptanceRequired,
    TfArg<List<String>>? allowedPrincipals,
    TfArg<List<String>>? gatewayLoadBalancerArns,
    TfArg<List<String>>? networkLoadBalancerArns,
    TfArg<String>? privateDnsName,
    TfArg<String>? region,
    TfArg<List<String>>? supportedIpAddressTypes,
    TfArg<List<String>>? supportedRegions,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acceptance_required': acceptanceRequired,
           if (allowedPrincipals != null)
             'allowed_principals': allowedPrincipals,
           if (gatewayLoadBalancerArns != null)
             'gateway_load_balancer_arns': gatewayLoadBalancerArns,
           if (networkLoadBalancerArns != null)
             'network_load_balancer_arns': networkLoadBalancerArns,
           if (privateDnsName != null) 'private_dns_name': privateDnsName,
           if (region != null) 'region': region,
           if (supportedIpAddressTypes != null)
             'supported_ip_address_types': supportedIpAddressTypes,
           if (supportedRegions != null) 'supported_regions': supportedRegions,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `base_endpoint_dns_names` attribute.
  TfRef<List<String>> get baseEndpointDnsNames =>
      TfRef.attribute<List<String>>(this, 'base_endpoint_dns_names');

  /// Reference to `manages_vpc_endpoints` attribute.
  TfRef<bool> get managesVpcEndpoints =>
      TfRef.attribute<bool>(this, 'manages_vpc_endpoints');

  /// Reference to `private_dns_name_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get privateDnsNameConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_dns_name_configuration',
      );

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_type` attribute.
  TfRef<String> get serviceType =>
      TfRef.attribute<String>(this, 'service_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

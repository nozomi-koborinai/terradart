// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_service`.
const Set<String> _awsVpcEndpointServiceSensitive = <String>{};

/// Vpc Endpoint Service Supported Ip Address enum for `supported_ip_address_types`.
enum VpcEndpointServiceSupportedIpAddressTypes implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const VpcEndpointServiceSupportedIpAddressTypes(this.terraformValue);
  @override
  final String terraformValue;
}

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
    List<TfArg<VpcEndpointServiceSupportedIpAddressTypes>>?
    supportedIpAddressTypes,
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
           'allowed_principals': ?allowedPrincipals,
           'gateway_load_balancer_arns': ?gatewayLoadBalancerArns,
           'network_load_balancer_arns': ?networkLoadBalancerArns,
           'private_dns_name': ?privateDnsName,
           'region': ?region,
           if (supportedIpAddressTypes != null)
             'supported_ip_address_types': TfArg.literal([
               for (final e in supportedIpAddressTypes) e.toTfJson(),
             ]),
           'supported_regions': ?supportedRegions,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointService>`.
  RefTo<AwsVpcEndpointService> get ref => RefTo.of(this);

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

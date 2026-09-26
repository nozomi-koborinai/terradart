// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_service`.
const Set<String> _awsVpcEndpointServiceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_endpoint_service` (derived from provider schema).
@immutable
final class DataVpcEndpointServiceFilter {
  const DataVpcEndpointServiceFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_endpoint_service`.
final class DataAwsVpcEndpointService extends Data {
  static const String tfType = 'aws_vpc_endpoint_service';

  DataAwsVpcEndpointService({
    required super.localName,
    TfArg<String>? service,
    TfArg<String>? serviceName,
    TfArg<List<String>>? serviceRegions,
    TfArg<String>? serviceType,
    TfArg<Map<String, String>>? tags,
    List<DataVpcEndpointServiceFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (service != null) 'service': service,
           if (serviceName != null) 'service_name': serviceName,
           if (serviceRegions != null) 'service_regions': serviceRegions,
           if (serviceType != null) 'service_type': serviceType,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acceptance_required` attribute.
  TfRef<bool> get acceptanceRequired =>
      TfRef.attribute<bool>(this, 'acceptance_required');

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

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `private_dns_name` attribute.
  TfRef<String> get privateDnsName =>
      TfRef.attribute<String>(this, 'private_dns_name');

  /// Reference to `private_dns_names` attribute.
  TfRef<List<String>> get privateDnsNames =>
      TfRef.attribute<List<String>>(this, 'private_dns_names');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `service_region` attribute.
  TfRef<String> get serviceRegion =>
      TfRef.attribute<String>(this, 'service_region');

  /// Reference to `supported_ip_address_types` attribute.
  TfRef<List<String>> get supportedIpAddressTypes =>
      TfRef.attribute<List<String>>(this, 'supported_ip_address_types');

  /// Reference to `vpc_endpoint_policy_supported` attribute.
  TfRef<bool> get vpcEndpointPolicySupported =>
      TfRef.attribute<bool>(this, 'vpc_endpoint_policy_supported');
}

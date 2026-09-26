// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_connect_endpoint`.
const Set<String> _awsEc2InstanceConnectEndpointSensitive = <String>{};

/// Factory wrapper for `aws_ec2_instance_connect_endpoint`.
final class AwsEc2InstanceConnectEndpoint extends Resource {
  static const String tfType = 'aws_ec2_instance_connect_endpoint';

  AwsEc2InstanceConnectEndpoint({
    required super.localName,
    TfArg<String>? ipAddressType,
    TfArg<bool>? preserveClientIp,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    required TfArg<String> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (preserveClientIp != null) 'preserve_client_ip': preserveClientIp,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceConnectEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `fips_dns_name` attribute.
  TfRef<String> get fipsDnsName =>
      TfRef.attribute<String>(this, 'fips_dns_name');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

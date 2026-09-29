// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_ec2_instance_connect_endpoint`.
const Set<String> _awsEc2InstanceConnectEndpointSensitive = <String>{};

/// Ec2 Instance Connect Endpoint Ip Address enum for `ip_address_type`.
enum Ec2InstanceConnectEndpointIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack'),
  ipv6('ipv6');

  const Ec2InstanceConnectEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_instance_connect_endpoint`.
final class AwsEc2InstanceConnectEndpoint extends Resource {
  static const String tfType = 'aws_ec2_instance_connect_endpoint';

  AwsEc2InstanceConnectEndpoint({
    required super.localName,
    TfArg<Ec2InstanceConnectEndpointIpAddressType>? ipAddressType,
    TfArg<bool>? preserveClientIp,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required RefTo<AwsSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_address_type': ?ipAddressType,
           'preserve_client_ip': ?preserveClientIp,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceConnectEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2InstanceConnectEndpoint>`.
  RefTo<AwsEc2InstanceConnectEndpoint> get ref => RefTo.of(this);

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

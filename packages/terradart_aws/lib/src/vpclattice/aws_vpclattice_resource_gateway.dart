// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpclattice_resource_gateway`.
const Set<String> _awsVpclatticeResourceGatewaySensitive = <String>{};

/// Vpclattice Resource Gateway Ip Address enum for `ip_address_type`.
extension type const VpclatticeResourceGatewayIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeResourceGatewayIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeResourceGatewayIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeResourceGatewayIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = VpclatticeResourceGatewayIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = VpclatticeResourceGatewayIpAddressType._(
    TfArgLiteral('IPV6'),
  );
  static const dualstack = VpclatticeResourceGatewayIpAddressType._(
    TfArgLiteral('DUALSTACK'),
  );

  static const List<VpclatticeResourceGatewayIpAddressType> values = [
    ipv4,
    ipv6,
    dualstack,
  ];
}

/// Vpclattice Resource Gateway Resource Config Dns enum for `resource_config_dns_resolution`.
extension type const VpclatticeResourceGatewayResourceConfigDnsResolution._(
  TfArg<String> _
) implements TfArg<String> {
  VpclatticeResourceGatewayResourceConfigDnsResolution.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeResourceGatewayResourceConfigDnsResolution.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VpclatticeResourceGatewayResourceConfigDnsResolution.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const inVpc = VpclatticeResourceGatewayResourceConfigDnsResolution._(
    TfArgLiteral('IN_VPC'),
  );
  static const public = VpclatticeResourceGatewayResourceConfigDnsResolution._(
    TfArgLiteral('PUBLIC'),
  );

  static const List<VpclatticeResourceGatewayResourceConfigDnsResolution>
  values = [inVpc, public];
}

/// Factory wrapper for `aws_vpclattice_resource_gateway`.
final class AwsVpclatticeResourceGateway extends Resource {
  static const String tfType = 'aws_vpclattice_resource_gateway';

  AwsVpclatticeResourceGateway(
    super.localName, {
    VpclatticeResourceGatewayIpAddressType? ipAddressType,
    TfArg<num>? ipv4AddressesPerEni,
    required TfArg<String> name,
    TfArg<String>? region,
    VpclatticeResourceGatewayResourceConfigDnsResolution?
    resourceConfigDnsResolution,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_address_type': ?ipAddressType,
           'ipv4_addresses_per_eni': ?ipv4AddressesPerEni,
           'name': name,
           'region': ?region,
           'resource_config_dns_resolution': ?resourceConfigDnsResolution,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeResourceGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeResourceGateway>`.
  RefTo<AwsVpclatticeResourceGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `ipv4_addresses_per_eni` attribute.
  TfRef<num> get ipv4AddressesPerEni =>
      TfRef.attribute<num>(this, 'ipv4_addresses_per_eni');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_config_dns_resolution` attribute.
  TfRef<String> get resourceConfigDnsResolution =>
      TfRef.attribute<String>(this, 'resource_config_dns_resolution');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

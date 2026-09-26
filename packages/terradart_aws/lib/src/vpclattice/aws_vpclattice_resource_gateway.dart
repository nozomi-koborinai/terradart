// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_resource_gateway`.
const Set<String> _awsVpclatticeResourceGatewaySensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_resource_gateway`.
final class AwsVpclatticeResourceGateway extends Resource {
  static const String tfType = 'aws_vpclattice_resource_gateway';

  AwsVpclatticeResourceGateway({
    required super.localName,
    TfArg<String>? ipAddressType,
    TfArg<num>? ipv4AddressesPerEni,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? resourceConfigDnsResolution,
    TfArg<List<String>>? securityGroupIds,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (ipv4AddressesPerEni != null)
             'ipv4_addresses_per_eni': ipv4AddressesPerEni,
           'name': name,
           if (region != null) 'region': region,
           if (resourceConfigDnsResolution != null)
             'resource_config_dns_resolution': resourceConfigDnsResolution,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeResourceGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

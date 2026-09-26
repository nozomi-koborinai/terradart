// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_dhcp_options_association`.
const Set<String> _awsVpcDhcpOptionsAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_dhcp_options_association`.
final class AwsVpcDhcpOptionsAssociation extends Resource {
  static const String tfType = 'aws_vpc_dhcp_options_association';

  AwsVpcDhcpOptionsAssociation({
    required super.localName,
    required TfArg<String> dhcpOptionsId,
    TfArg<String>? region,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dhcp_options_id': dhcpOptionsId,
           if (region != null) 'region': region,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcDhcpOptionsAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

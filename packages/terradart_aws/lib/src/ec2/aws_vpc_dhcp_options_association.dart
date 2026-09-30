// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_dhcp_options_association`.
const Set<String> _awsVpcDhcpOptionsAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_dhcp_options_association`.
final class AwsVpcDhcpOptionsAssociation extends Resource {
  static const String tfType = 'aws_vpc_dhcp_options_association';

  AwsVpcDhcpOptionsAssociation({
    required super.localName,
    required TfArg<String> dhcpOptionsId,
    TfArg<String>? region,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dhcp_options_id': dhcpOptionsId,
           'region': ?region,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcDhcpOptionsAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcDhcpOptionsAssociation>`.
  RefTo<AwsVpcDhcpOptionsAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dhcp_options_id` attribute.
  TfRef<String> get dhcpOptionsIdRef =>
      TfRef.attribute<String>(this, 'dhcp_options_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcIdRef => TfRef.attribute<String>(this, 'vpc_id');
}

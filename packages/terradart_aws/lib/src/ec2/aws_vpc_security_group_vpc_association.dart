// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_security_group_vpc_association`.
const Set<String> _awsVpcSecurityGroupVpcAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_security_group_vpc_association`.
final class AwsVpcSecurityGroupVpcAssociation extends Resource {
  static const String tfType = 'aws_vpc_security_group_vpc_association';

  AwsVpcSecurityGroupVpcAssociation(
    super.localName, {
    TfArg<String>? region,
    required RefTo<AwsSecurityGroup> securityGroupId,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'security_group_id': securityGroupId.encodeAs('id'),
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcSecurityGroupVpcAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcSecurityGroupVpcAssociation>`.
  RefTo<AwsVpcSecurityGroupVpcAssociation> get ref => RefTo.of(this);

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

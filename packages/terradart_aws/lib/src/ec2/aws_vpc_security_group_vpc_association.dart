// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_security_group_vpc_association`.
const Set<String> _awsVpcSecurityGroupVpcAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_security_group_vpc_association`.
final class AwsVpcSecurityGroupVpcAssociation extends Resource {
  static const String tfType = 'aws_vpc_security_group_vpc_association';

  AwsVpcSecurityGroupVpcAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> securityGroupId,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcSecurityGroupVpcAssociationSensitive;

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

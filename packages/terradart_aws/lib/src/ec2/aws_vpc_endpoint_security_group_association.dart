// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_vpc_endpoint_security_group_association`.
const Set<String> _awsVpcEndpointSecurityGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_security_group_association`.
final class AwsVpcEndpointSecurityGroupAssociation extends Resource {
  static const String tfType = 'aws_vpc_endpoint_security_group_association';

  AwsVpcEndpointSecurityGroupAssociation(
    super.localName, {
    TfArg<String>? region,
    TfArg<bool>? replaceDefaultAssociation,
    required RefTo<AwsSecurityGroup> securityGroupId,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'replace_default_association': ?replaceDefaultAssociation,
           'security_group_id': securityGroupId.encodeAs('id'),
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointSecurityGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointSecurityGroupAssociation>`.
  RefTo<AwsVpcEndpointSecurityGroupAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replace_default_association` attribute.
  TfRef<bool> get replaceDefaultAssociation =>
      TfRef.attribute<bool>(this, 'replace_default_association');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_security_group_association`.
const Set<String> _awsVpcEndpointSecurityGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_security_group_association`.
final class AwsVpcEndpointSecurityGroupAssociation extends Resource {
  static const String tfType = 'aws_vpc_endpoint_security_group_association';

  AwsVpcEndpointSecurityGroupAssociation({
    required super.localName,
    TfArg<String>? region,
    TfArg<bool>? replaceDefaultAssociation,
    required TfArg<String> securityGroupId,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (replaceDefaultAssociation != null)
             'replace_default_association': replaceDefaultAssociation,
           'security_group_id': securityGroupId,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointSecurityGroupAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

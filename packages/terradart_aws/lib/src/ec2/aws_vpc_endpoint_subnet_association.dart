// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_subnet_association`.
const Set<String> _awsVpcEndpointSubnetAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_subnet_association`.
final class AwsVpcEndpointSubnetAssociation extends Resource {
  static const String tfType = 'aws_vpc_endpoint_subnet_association';

  AwsVpcEndpointSubnetAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> subnetId,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'subnet_id': subnetId,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointSubnetAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

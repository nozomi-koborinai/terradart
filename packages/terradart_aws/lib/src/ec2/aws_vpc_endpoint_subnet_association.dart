// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_vpc_endpoint_subnet_association`.
const Set<String> _awsVpcEndpointSubnetAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_subnet_association`.
final class AwsVpcEndpointSubnetAssociation extends Resource {
  static const String tfType = 'aws_vpc_endpoint_subnet_association';

  AwsVpcEndpointSubnetAssociation({
    required super.localName,
    TfArg<String>? region,
    required RefTo<AwsSubnet> subnetId,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'subnet_id': subnetId.encodeAs('id'),
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointSubnetAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointSubnetAssociation>`.
  RefTo<AwsVpcEndpointSubnetAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointIdRef =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');
}

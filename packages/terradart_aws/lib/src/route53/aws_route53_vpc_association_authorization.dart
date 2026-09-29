// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route53_vpc_association_authorization`.
const Set<String> _awsRoute53VpcAssociationAuthorizationSensitive = <String>{};

/// Route53 Vpc Association Authorization Vpc enum for `vpc_region`.
enum Route53VpcAssociationAuthorizationVpcRegion implements TerraformEnum {
  usEast1('us-east-1'),
  usEast2('us-east-2'),
  usWest1('us-west-1'),
  usWest2('us-west-2'),
  euWest1('eu-west-1'),
  euWest2('eu-west-2'),
  euWest3('eu-west-3'),
  euCentral1('eu-central-1'),
  euCentral2('eu-central-2'),
  apEast1('ap-east-1'),
  meSouth1('me-south-1'),
  usGovWest1('us-gov-west-1'),
  usGovEast1('us-gov-east-1'),
  usIsoEast1('us-iso-east-1'),
  usIsoWest1('us-iso-west-1'),
  usIsobEast1('us-isob-east-1'),
  meCentral1('me-central-1'),
  apSoutheast1('ap-southeast-1'),
  apSoutheast2('ap-southeast-2'),
  apSoutheast3('ap-southeast-3'),
  apSouth1('ap-south-1'),
  apSouth2('ap-south-2'),
  apNortheast1('ap-northeast-1'),
  apNortheast2('ap-northeast-2'),
  apNortheast3('ap-northeast-3'),
  euNorth1('eu-north-1'),
  saEast1('sa-east-1'),
  caCentral1('ca-central-1'),
  cnNorth1('cn-north-1'),
  cnNorthwest1('cn-northwest-1'),
  afSouth1('af-south-1'),
  euSouth1('eu-south-1'),
  euSouth2('eu-south-2'),
  apSoutheast4('ap-southeast-4'),
  ilCentral1('il-central-1'),
  caWest1('ca-west-1'),
  apSoutheast5('ap-southeast-5'),
  mxCentral1('mx-central-1'),
  usIsofSouth1('us-isof-south-1'),
  usIsofEast1('us-isof-east-1'),
  apSoutheast7('ap-southeast-7'),
  apEast2('ap-east-2'),
  euIsoeWest1('eu-isoe-west-1'),
  apSoutheast6('ap-southeast-6'),
  usIsobWest1('us-isob-west-1'),
  euscDeEast1('eusc-de-east-1');

  const Route53VpcAssociationAuthorizationVpcRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_vpc_association_authorization`.
final class AwsRoute53VpcAssociationAuthorization extends Resource {
  static const String tfType = 'aws_route53_vpc_association_authorization';

  AwsRoute53VpcAssociationAuthorization({
    required super.localName,
    required RefTo<AwsVpc> vpcId,
    TfArg<Route53VpcAssociationAuthorizationVpcRegion>? vpcRegion,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'vpc_id': vpcId.encodeAs('id'),
           'vpc_region': ?vpcRegion,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53VpcAssociationAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53VpcAssociationAuthorization>`.
  RefTo<AwsRoute53VpcAssociationAuthorization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

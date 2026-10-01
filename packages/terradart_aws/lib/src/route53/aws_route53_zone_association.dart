// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;
import '../route53/aws_route53_zone.dart' show AwsRoute53Zone;

/// Sensitive field paths for `aws_route53_zone_association`.
const Set<String> _awsRoute53ZoneAssociationSensitive = <String>{};

/// Route53 Zone Association Vpc enum for `vpc_region`.
extension type const Route53ZoneAssociationVpcRegion._(TfArg<String> _)
    implements TfArg<String> {
  Route53ZoneAssociationVpcRegion.variable(String name)
    : this._(TfArg.variable(name));
  Route53ZoneAssociationVpcRegion.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ZoneAssociationVpcRegion.arg(TfArg<String> arg) : this._(arg);

  static const usEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-east-1'),
  );
  static const usEast2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-east-2'),
  );
  static const usWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-west-1'),
  );
  static const usWest2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-west-2'),
  );
  static const euWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-west-1'),
  );
  static const euWest2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-west-2'),
  );
  static const euWest3 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-west-3'),
  );
  static const euCentral1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-central-1'),
  );
  static const euCentral2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-central-2'),
  );
  static const apEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-east-1'),
  );
  static const meSouth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('me-south-1'),
  );
  static const usGovWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-gov-west-1'),
  );
  static const usGovEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-gov-east-1'),
  );
  static const usIsoEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-iso-east-1'),
  );
  static const usIsoWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-iso-west-1'),
  );
  static const usIsobEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-isob-east-1'),
  );
  static const meCentral1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('me-central-1'),
  );
  static const apSoutheast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-2'),
  );
  static const apSoutheast3 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-3'),
  );
  static const apSouth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-south-1'),
  );
  static const apSouth2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-south-2'),
  );
  static const apNortheast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const apNortheast2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-northeast-2'),
  );
  static const apNortheast3 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-northeast-3'),
  );
  static const euNorth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-north-1'),
  );
  static const saEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('sa-east-1'),
  );
  static const caCentral1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ca-central-1'),
  );
  static const cnNorth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('cn-north-1'),
  );
  static const cnNorthwest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('cn-northwest-1'),
  );
  static const afSouth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('af-south-1'),
  );
  static const euSouth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-south-1'),
  );
  static const euSouth2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-south-2'),
  );
  static const apSoutheast4 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-4'),
  );
  static const ilCentral1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('il-central-1'),
  );
  static const caWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ca-west-1'),
  );
  static const apSoutheast5 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-5'),
  );
  static const mxCentral1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('mx-central-1'),
  );
  static const usIsofSouth1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-isof-south-1'),
  );
  static const usIsofEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-isof-east-1'),
  );
  static const apSoutheast7 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-7'),
  );
  static const apEast2 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-east-2'),
  );
  static const euIsoeWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eu-isoe-west-1'),
  );
  static const apSoutheast6 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('ap-southeast-6'),
  );
  static const usIsobWest1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('us-isob-west-1'),
  );
  static const euscDeEast1 = Route53ZoneAssociationVpcRegion._(
    TfArgLiteral('eusc-de-east-1'),
  );

  static const List<Route53ZoneAssociationVpcRegion> values = [
    usEast1,
    usEast2,
    usWest1,
    usWest2,
    euWest1,
    euWest2,
    euWest3,
    euCentral1,
    euCentral2,
    apEast1,
    meSouth1,
    usGovWest1,
    usGovEast1,
    usIsoEast1,
    usIsoWest1,
    usIsobEast1,
    meCentral1,
    apSoutheast1,
    apSoutheast2,
    apSoutheast3,
    apSouth1,
    apSouth2,
    apNortheast1,
    apNortheast2,
    apNortheast3,
    euNorth1,
    saEast1,
    caCentral1,
    cnNorth1,
    cnNorthwest1,
    afSouth1,
    euSouth1,
    euSouth2,
    apSoutheast4,
    ilCentral1,
    caWest1,
    apSoutheast5,
    mxCentral1,
    usIsofSouth1,
    usIsofEast1,
    apSoutheast7,
    apEast2,
    euIsoeWest1,
    apSoutheast6,
    usIsobWest1,
    euscDeEast1,
  ];
}

/// Factory wrapper for `aws_route53_zone_association`.
final class AwsRoute53ZoneAssociation extends Resource {
  static const String tfType = 'aws_route53_zone_association';

  AwsRoute53ZoneAssociation(
    super.localName, {
    required RefTo<AwsVpc> vpcId,
    Route53ZoneAssociationVpcRegion? vpcRegion,
    required RefTo<AwsRoute53Zone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'vpc_id': vpcId.encodeAs('id'),
           'vpc_region': ?vpcRegion,
           'zone_id': zoneId.encodeAs('zone_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ZoneAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ZoneAssociation>`.
  RefTo<AwsRoute53ZoneAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owning_account` attribute.
  TfRef<String> get owningAccount =>
      TfRef.attribute<String>(this, 'owning_account');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_region` attribute.
  TfRef<String> get vpcRegion => TfRef.attribute<String>(this, 'vpc_region');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

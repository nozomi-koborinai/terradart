// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_route_server_vpc_association`.
const Set<String> _awsVpcRouteServerVpcAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_route_server_vpc_association`.
final class AwsVpcRouteServerVpcAssociation extends Resource {
  static const String tfType = 'aws_vpc_route_server_vpc_association';

  AwsVpcRouteServerVpcAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeServerId,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'route_server_id': routeServerId,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerVpcAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcRouteServerVpcAssociation>`.
  RefTo<AwsVpcRouteServerVpcAssociation> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerIdRef =>
      TfRef.attribute<String>(this, 'route_server_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcIdRef => TfRef.attribute<String>(this, 'vpc_id');
}

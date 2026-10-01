// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_main_route_table_association`.
const Set<String> _awsMainRouteTableAssociationSensitive = <String>{};

/// Factory wrapper for `aws_main_route_table_association`.
final class AwsMainRouteTableAssociation extends Resource {
  static const String tfType = 'aws_main_route_table_association';

  AwsMainRouteTableAssociation(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'route_table_id': routeTableId,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMainRouteTableAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMainRouteTableAssociation>`.
  RefTo<AwsMainRouteTableAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `original_route_table_id` attribute.
  TfRef<String> get originalRouteTableId =>
      TfRef.attribute<String>(this, 'original_route_table_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

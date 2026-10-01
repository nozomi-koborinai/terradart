// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_route_table`.
const Set<String> _awsEc2LocalGatewayRouteTableSensitive = <String>{};

/// Ec2 Local Gateway Route Table enum for `mode`.
enum Ec2LocalGatewayRouteTableMode implements TerraformEnum {
  directVpcRouting('direct-vpc-routing'),
  coip('coip');

  const Ec2LocalGatewayRouteTableMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_local_gateway_route_table`.
final class AwsEc2LocalGatewayRouteTable extends Resource {
  static const String tfType = 'aws_ec2_local_gateway_route_table';

  AwsEc2LocalGatewayRouteTable(
    super.localName, {
    required TfArg<String> localGatewayId,
    required TfArg<Ec2LocalGatewayRouteTableMode> mode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_gateway_id': localGatewayId,
           'mode': mode,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewayRouteTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2LocalGatewayRouteTable>`.
  RefTo<AwsEc2LocalGatewayRouteTable> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `local_gateway_route_table_id` attribute.
  TfRef<String> get localGatewayRouteTableId =>
      TfRef.attribute<String>(this, 'local_gateway_route_table_id');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayId =>
      TfRef.attribute<String>(this, 'local_gateway_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_route_table_association`.
const Set<String> _awsVpcEndpointRouteTableAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_route_table_association`.
final class AwsVpcEndpointRouteTableAssociation extends Resource {
  static const String tfType = 'aws_vpc_endpoint_route_table_association';

  AwsVpcEndpointRouteTableAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointRouteTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

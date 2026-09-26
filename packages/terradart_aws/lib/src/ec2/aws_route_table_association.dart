// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route_table_association`.
const Set<String> _awsRouteTableAssociationSensitive = <String>{};

/// Factory wrapper for `aws_route_table_association`.
final class AwsRouteTableAssociation extends Resource {
  static const String tfType = 'aws_route_table_association';

  AwsRouteTableAssociation({
    required super.localName,
    TfArg<String>? gatewayId,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    TfArg<String>? subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (gatewayId != null) 'gateway_id': gatewayId,
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           if (subnetId != null) 'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

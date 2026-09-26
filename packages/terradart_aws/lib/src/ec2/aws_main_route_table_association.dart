// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_main_route_table_association`.
const Set<String> _awsMainRouteTableAssociationSensitive = <String>{};

/// Factory wrapper for `aws_main_route_table_association`.
final class AwsMainRouteTableAssociation extends Resource {
  static const String tfType = 'aws_main_route_table_association';

  AwsMainRouteTableAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMainRouteTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `original_route_table_id` attribute.
  TfRef<String> get originalRouteTableId =>
      TfRef.attribute<String>(this, 'original_route_table_id');
}

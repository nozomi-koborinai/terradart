// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_route_server_propagation`.
const Set<String> _awsVpcRouteServerPropagationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_route_server_propagation`.
final class AwsVpcRouteServerPropagation extends Resource {
  static const String tfType = 'aws_vpc_route_server_propagation';

  AwsVpcRouteServerPropagation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeServerId,
    required TfArg<String> routeTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'route_server_id': routeServerId,
           'route_table_id': routeTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerPropagationSensitive;
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_route_server_propagation`.
const Set<String> _awsVpcRouteServerPropagationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_route_server_propagation`.
final class AwsVpcRouteServerPropagation extends Resource {
  static const String tfType = 'aws_vpc_route_server_propagation';

  AwsVpcRouteServerPropagation(
    super.localName, {
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
           'region': ?region,
           'route_server_id': routeServerId,
           'route_table_id': routeTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerPropagationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcRouteServerPropagation>`.
  RefTo<AwsVpcRouteServerPropagation> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerId =>
      TfRef.attribute<String>(this, 'route_server_id');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');
}

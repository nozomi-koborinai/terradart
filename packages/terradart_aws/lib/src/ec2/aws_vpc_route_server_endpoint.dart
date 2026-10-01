// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_vpc_route_server_endpoint`.
const Set<String> _awsVpcRouteServerEndpointSensitive = <String>{};

/// Factory wrapper for `aws_vpc_route_server_endpoint`.
final class AwsVpcRouteServerEndpoint extends Resource {
  static const String tfType = 'aws_vpc_route_server_endpoint';

  AwsVpcRouteServerEndpoint({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeServerId,
    required RefTo<AwsSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'route_server_id': routeServerId,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcRouteServerEndpoint>`.
  RefTo<AwsVpcRouteServerEndpoint> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `eni_address` attribute.
  TfRef<String> get eniAddress => TfRef.attribute<String>(this, 'eni_address');

  /// Reference to `eni_id` attribute.
  TfRef<String> get eniId => TfRef.attribute<String>(this, 'eni_id');

  /// Reference to `route_server_endpoint_id` attribute.
  TfRef<String> get routeServerEndpointId =>
      TfRef.attribute<String>(this, 'route_server_endpoint_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerId =>
      TfRef.attribute<String>(this, 'route_server_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_route_server`.
const Set<String> _awsVpcRouteServerSensitive = <String>{};

/// Vpc Route Server Persist enum for `persist_routes`.
enum VpcRouteServerPersistRoutes implements TerraformEnum {
  enable('enable'),
  disable('disable'),
  reset('reset');

  const VpcRouteServerPersistRoutes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpc_route_server`.
final class AwsVpcRouteServer extends Resource {
  static const String tfType = 'aws_vpc_route_server';

  AwsVpcRouteServer({
    required super.localName,
    required TfArg<num> amazonSideAsn,
    TfArg<VpcRouteServerPersistRoutes>? persistRoutes,
    TfArg<num>? persistRoutesDuration,
    TfArg<String>? region,
    TfArg<bool>? snsNotificationsEnabled,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amazon_side_asn': amazonSideAsn,
           'persist_routes': ?persistRoutes,
           'persist_routes_duration': ?persistRoutesDuration,
           'region': ?region,
           'sns_notifications_enabled': ?snsNotificationsEnabled,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcRouteServer>`.
  RefTo<AwsVpcRouteServer> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerId =>
      TfRef.attribute<String>(this, 'route_server_id');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

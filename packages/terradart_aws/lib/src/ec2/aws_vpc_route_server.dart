// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_route_server`.
const Set<String> _awsVpcRouteServerSensitive = <String>{};

/// Factory wrapper for `aws_vpc_route_server`.
final class AwsVpcRouteServer extends Resource {
  static const String tfType = 'aws_vpc_route_server';

  AwsVpcRouteServer({
    required super.localName,
    required TfArg<num> amazonSideAsn,
    TfArg<String>? persistRoutes,
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
           if (persistRoutes != null) 'persist_routes': persistRoutes,
           if (persistRoutesDuration != null)
             'persist_routes_duration': persistRoutesDuration,
           if (region != null) 'region': region,
           if (snsNotificationsEnabled != null)
             'sns_notifications_enabled': snsNotificationsEnabled,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcRouteServerSensitive;

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

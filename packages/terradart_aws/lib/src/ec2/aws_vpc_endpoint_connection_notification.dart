// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_connection_notification`.
const Set<String> _awsVpcEndpointConnectionNotificationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_connection_notification`.
final class AwsVpcEndpointConnectionNotification extends Resource {
  static const String tfType = 'aws_vpc_endpoint_connection_notification';

  AwsVpcEndpointConnectionNotification({
    required super.localName,
    required TfArg<List<String>> connectionEvents,
    required TfArg<String> connectionNotificationArn,
    TfArg<String>? region,
    TfArg<String>? vpcEndpointId,
    TfArg<String>? vpcEndpointServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_events': connectionEvents,
           'connection_notification_arn': connectionNotificationArn,
           if (region != null) 'region': region,
           if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId,
           if (vpcEndpointServiceId != null)
             'vpc_endpoint_service_id': vpcEndpointServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointConnectionNotificationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationType =>
      TfRef.attribute<String>(this, 'notification_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

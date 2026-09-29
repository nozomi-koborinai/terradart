// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_connection_notification`.
const Set<String> _awsVpcEndpointConnectionNotificationSensitive = <String>{};

/// Exactly one of `vpc_endpoint_id`, `vpc_endpoint_service_id` on `aws_vpc_endpoint_connection_notification`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.vpcEndpointId(...)`.
sealed class VpcEndpointConnectionNotificationVpcEndpoint {
  const VpcEndpointConnectionNotificationVpcEndpoint();

  /// Sets `vpc_endpoint_id`.
  const factory VpcEndpointConnectionNotificationVpcEndpoint.vpcEndpointId(
    TfArg<String> vpcEndpointId,
  ) = VpcEndpointConnectionNotificationVpcEndpointId;

  /// Sets `vpc_endpoint_service_id`.
  const factory VpcEndpointConnectionNotificationVpcEndpoint.vpcEndpointServiceId(
    TfArg<String> vpcEndpointServiceId,
  ) = VpcEndpointConnectionNotificationVpcEndpointServiceId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcEndpointConnectionNotificationVpcEndpoint.vpcEndpointId] choice: sets `vpc_endpoint_id`.
final class VpcEndpointConnectionNotificationVpcEndpointId
    extends VpcEndpointConnectionNotificationVpcEndpoint {
  const VpcEndpointConnectionNotificationVpcEndpointId(this.vpcEndpointId);

  final TfArg<String> vpcEndpointId;

  @override
  String get blockKey => 'vpc_endpoint_id';

  @override
  Map<String, Object?> encode() => {
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_endpoint_id': vpcEndpointId};
}

/// The [VpcEndpointConnectionNotificationVpcEndpoint.vpcEndpointServiceId] choice: sets `vpc_endpoint_service_id`.
final class VpcEndpointConnectionNotificationVpcEndpointServiceId
    extends VpcEndpointConnectionNotificationVpcEndpoint {
  const VpcEndpointConnectionNotificationVpcEndpointServiceId(
    this.vpcEndpointServiceId,
  );

  final TfArg<String> vpcEndpointServiceId;

  @override
  String get blockKey => 'vpc_endpoint_service_id';

  @override
  Map<String, Object?> encode() => {
    'vpc_endpoint_service_id': vpcEndpointServiceId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc_endpoint_service_id': vpcEndpointServiceId,
  };
}

/// Factory wrapper for `aws_vpc_endpoint_connection_notification`.
final class AwsVpcEndpointConnectionNotification extends Resource {
  static const String tfType = 'aws_vpc_endpoint_connection_notification';

  AwsVpcEndpointConnectionNotification({
    required super.localName,
    required TfArg<List<String>> connectionEvents,
    required TfArg<String> connectionNotificationArn,
    TfArg<String>? region,
    required VpcEndpointConnectionNotificationVpcEndpoint vpcEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_events': connectionEvents,
           'connection_notification_arn': connectionNotificationArn,
           'region': ?region,
           ...vpcEndpoint.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointConnectionNotificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointConnectionNotification>`.
  RefTo<AwsVpcEndpointConnectionNotification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationType =>
      TfRef.attribute<String>(this, 'notification_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_autoscaling_notification`.
const Set<String> _awsAutoscalingNotificationSensitive = <String>{};

/// Factory wrapper for `aws_autoscaling_notification`.
final class AwsAutoscalingNotification extends Resource {
  static const String tfType = 'aws_autoscaling_notification';

  AwsAutoscalingNotification({
    required super.localName,
    required TfArg<List<String>> groupNames,
    required TfArg<List<String>> notifications,
    TfArg<String>? region,
    required RefTo<AwsSnsTopic> topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_names': groupNames,
           'notifications': notifications,
           'region': ?region,
           'topic_arn': topicArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingNotificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingNotification>`.
  RefTo<AwsAutoscalingNotification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

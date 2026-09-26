// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_names': groupNames,
           'notifications': notifications,
           if (region != null) 'region': region,
           'topic_arn': topicArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingNotificationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_identity_notification_topic`.
const Set<String> _awsSesIdentityNotificationTopicSensitive = <String>{};

/// Factory wrapper for `aws_ses_identity_notification_topic`.
final class AwsSesIdentityNotificationTopic extends Resource {
  static const String tfType = 'aws_ses_identity_notification_topic';

  AwsSesIdentityNotificationTopic({
    required super.localName,
    required TfArg<String> identity,
    TfArg<bool>? includeOriginalHeaders,
    required TfArg<String> notificationType,
    TfArg<String>? region,
    TfArg<String>? topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity': identity,
           if (includeOriginalHeaders != null)
             'include_original_headers': includeOriginalHeaders,
           'notification_type': notificationType,
           if (region != null) 'region': region,
           if (topicArn != null) 'topic_arn': topicArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesIdentityNotificationTopicSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

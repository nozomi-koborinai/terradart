// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_ses_identity_notification_topic`.
const Set<String> _awsSesIdentityNotificationTopicSensitive = <String>{};

/// Ses Identity Notification Topic Notification enum for `notification_type`.
enum SesIdentityNotificationTopicNotificationType implements TerraformEnum {
  bounce('Bounce'),
  complaint('Complaint'),
  delivery('Delivery');

  const SesIdentityNotificationTopicNotificationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ses_identity_notification_topic`.
final class AwsSesIdentityNotificationTopic extends Resource {
  static const String tfType = 'aws_ses_identity_notification_topic';

  AwsSesIdentityNotificationTopic({
    required super.localName,
    required TfArg<String> identity,
    TfArg<bool>? includeOriginalHeaders,
    required TfArg<SesIdentityNotificationTopicNotificationType>
    notificationType,
    TfArg<String>? region,
    RefTo<AwsSnsTopic>? topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity': identity,
           'include_original_headers': ?includeOriginalHeaders,
           'notification_type': notificationType,
           'region': ?region,
           'topic_arn': ?topicArn?.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesIdentityNotificationTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesIdentityNotificationTopic>`.
  RefTo<AwsSesIdentityNotificationTopic> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_sns_topic_subscription`.
const Set<String> _awsSnsTopicSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_sns_topic_subscription`.
final class AwsSnsTopicSubscription extends Resource {
  static const String tfType = 'aws_sns_topic_subscription';

  AwsSnsTopicSubscription({
    required super.localName,
    TfArg<num>? confirmationTimeoutInMinutes,
    TfArg<String>? deliveryPolicy,
    required TfArg<String> endpoint,
    TfArg<bool>? endpointAutoConfirms,
    TfArg<String>? filterPolicy,
    TfArg<String>? filterPolicyScope,
    required TfArg<String> protocol,
    TfArg<bool>? rawMessageDelivery,
    TfArg<String>? redrivePolicy,
    TfArg<String>? region,
    TfArg<String>? replayPolicy,
    TfArg<String>? subscriptionRoleArn,
    required RefTo<AwsSnsTopic> topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'confirmation_timeout_in_minutes': ?confirmationTimeoutInMinutes,
           'delivery_policy': ?deliveryPolicy,
           'endpoint': endpoint,
           'endpoint_auto_confirms': ?endpointAutoConfirms,
           'filter_policy': ?filterPolicy,
           'filter_policy_scope': ?filterPolicyScope,
           'protocol': protocol,
           'raw_message_delivery': ?rawMessageDelivery,
           'redrive_policy': ?redrivePolicy,
           'region': ?region,
           'replay_policy': ?replayPolicy,
           'subscription_role_arn': ?subscriptionRoleArn,
           'topic_arn': topicArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSnsTopicSubscription>`.
  RefTo<AwsSnsTopicSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `confirmation_was_authenticated` attribute.
  TfRef<bool> get confirmationWasAuthenticated =>
      TfRef.attribute<bool>(this, 'confirmation_was_authenticated');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `pending_confirmation` attribute.
  TfRef<bool> get pendingConfirmation =>
      TfRef.attribute<bool>(this, 'pending_confirmation');
}

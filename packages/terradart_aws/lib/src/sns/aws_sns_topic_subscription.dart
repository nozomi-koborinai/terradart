// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> topicArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (confirmationTimeoutInMinutes != null)
             'confirmation_timeout_in_minutes': confirmationTimeoutInMinutes,
           if (deliveryPolicy != null) 'delivery_policy': deliveryPolicy,
           'endpoint': endpoint,
           if (endpointAutoConfirms != null)
             'endpoint_auto_confirms': endpointAutoConfirms,
           if (filterPolicy != null) 'filter_policy': filterPolicy,
           if (filterPolicyScope != null)
             'filter_policy_scope': filterPolicyScope,
           'protocol': protocol,
           if (rawMessageDelivery != null)
             'raw_message_delivery': rawMessageDelivery,
           if (redrivePolicy != null) 'redrive_policy': redrivePolicy,
           if (region != null) 'region': region,
           if (replayPolicy != null) 'replay_policy': replayPolicy,
           if (subscriptionRoleArn != null)
             'subscription_role_arn': subscriptionRoleArn,
           'topic_arn': topicArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicSubscriptionSensitive;

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

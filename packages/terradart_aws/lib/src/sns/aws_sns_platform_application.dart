// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sns_platform_application`.
const Set<String> _awsSnsPlatformApplicationSensitive = <String>{
  'platform_credential',
  'platform_principal',
};

/// Factory wrapper for `aws_sns_platform_application`.
final class AwsSnsPlatformApplication extends Resource {
  static const String tfType = 'aws_sns_platform_application';

  AwsSnsPlatformApplication({
    required super.localName,
    TfArg<String>? applePlatformBundleId,
    TfArg<String>? applePlatformTeamId,
    TfArg<String>? eventDeliveryFailureTopicArn,
    TfArg<String>? eventEndpointCreatedTopicArn,
    TfArg<String>? eventEndpointDeletedTopicArn,
    TfArg<String>? eventEndpointUpdatedTopicArn,
    TfArg<String>? failureFeedbackRoleArn,
    required TfArg<String> name,
    required TfArg<String> platform,
    required TfArg<String> platformCredential,
    TfArg<String>? platformPrincipal,
    TfArg<String>? region,
    TfArg<String>? successFeedbackRoleArn,
    TfArg<String>? successFeedbackSampleRate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applePlatformBundleId != null)
             'apple_platform_bundle_id': applePlatformBundleId,
           if (applePlatformTeamId != null)
             'apple_platform_team_id': applePlatformTeamId,
           if (eventDeliveryFailureTopicArn != null)
             'event_delivery_failure_topic_arn': eventDeliveryFailureTopicArn,
           if (eventEndpointCreatedTopicArn != null)
             'event_endpoint_created_topic_arn': eventEndpointCreatedTopicArn,
           if (eventEndpointDeletedTopicArn != null)
             'event_endpoint_deleted_topic_arn': eventEndpointDeletedTopicArn,
           if (eventEndpointUpdatedTopicArn != null)
             'event_endpoint_updated_topic_arn': eventEndpointUpdatedTopicArn,
           if (failureFeedbackRoleArn != null)
             'failure_feedback_role_arn': failureFeedbackRoleArn,
           'name': name,
           'platform': platform,
           'platform_credential': platformCredential,
           if (platformPrincipal != null)
             'platform_principal': platformPrincipal,
           if (region != null) 'region': region,
           if (successFeedbackRoleArn != null)
             'success_feedback_role_arn': successFeedbackRoleArn,
           if (successFeedbackSampleRate != null)
             'success_feedback_sample_rate': successFeedbackSampleRate,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsPlatformApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

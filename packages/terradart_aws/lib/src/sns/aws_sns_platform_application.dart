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
           'apple_platform_bundle_id': ?applePlatformBundleId,
           'apple_platform_team_id': ?applePlatformTeamId,
           'event_delivery_failure_topic_arn': ?eventDeliveryFailureTopicArn,
           'event_endpoint_created_topic_arn': ?eventEndpointCreatedTopicArn,
           'event_endpoint_deleted_topic_arn': ?eventEndpointDeletedTopicArn,
           'event_endpoint_updated_topic_arn': ?eventEndpointUpdatedTopicArn,
           'failure_feedback_role_arn': ?failureFeedbackRoleArn,
           'name': name,
           'platform': platform,
           'platform_credential': platformCredential,
           'platform_principal': ?platformPrincipal,
           'region': ?region,
           'success_feedback_role_arn': ?successFeedbackRoleArn,
           'success_feedback_sample_rate': ?successFeedbackSampleRate,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsPlatformApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSnsPlatformApplication>`.
  RefTo<AwsSnsPlatformApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `apple_platform_bundle_id` attribute.
  TfRef<String> get applePlatformBundleIdRef =>
      TfRef.attribute<String>(this, 'apple_platform_bundle_id');

  /// Reference to `apple_platform_team_id` attribute.
  TfRef<String> get applePlatformTeamIdRef =>
      TfRef.attribute<String>(this, 'apple_platform_team_id');

  /// Reference to `event_delivery_failure_topic_arn` attribute.
  TfRef<String> get eventDeliveryFailureTopicArnRef =>
      TfRef.attribute<String>(this, 'event_delivery_failure_topic_arn');

  /// Reference to `event_endpoint_created_topic_arn` attribute.
  TfRef<String> get eventEndpointCreatedTopicArnRef =>
      TfRef.attribute<String>(this, 'event_endpoint_created_topic_arn');

  /// Reference to `event_endpoint_deleted_topic_arn` attribute.
  TfRef<String> get eventEndpointDeletedTopicArnRef =>
      TfRef.attribute<String>(this, 'event_endpoint_deleted_topic_arn');

  /// Reference to `event_endpoint_updated_topic_arn` attribute.
  TfRef<String> get eventEndpointUpdatedTopicArnRef =>
      TfRef.attribute<String>(this, 'event_endpoint_updated_topic_arn');

  /// Reference to `failure_feedback_role_arn` attribute.
  TfRef<String> get failureFeedbackRoleArnRef =>
      TfRef.attribute<String>(this, 'failure_feedback_role_arn');

  /// Reference to `platform` attribute.
  TfRef<String> get platformRef => TfRef.attribute<String>(this, 'platform');

  /// Reference to `platform_credential` attribute.
  TfRef<String> get platformCredentialRef =>
      TfRef.attribute<String>(this, 'platform_credential');

  /// Reference to `platform_principal` attribute.
  TfRef<String> get platformPrincipalRef =>
      TfRef.attribute<String>(this, 'platform_principal');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `success_feedback_role_arn` attribute.
  TfRef<String> get successFeedbackRoleArnRef =>
      TfRef.attribute<String>(this, 'success_feedback_role_arn');

  /// Reference to `success_feedback_sample_rate` attribute.
  TfRef<String> get successFeedbackSampleRateRef =>
      TfRef.attribute<String>(this, 'success_feedback_sample_rate');
}

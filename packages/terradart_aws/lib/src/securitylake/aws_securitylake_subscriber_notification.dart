// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_subscriber_notification`.
const Set<String> _awsSecuritylakeSubscriberNotificationSensitive = <String>{
  'configuration.https_notification_configuration.authorization_api_key_value',
};

/// Typed helper for the `configuration` block of
/// `aws_securitylake_subscriber_notification` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberNotificationConfiguration {
  const SecuritylakeSubscriberNotificationConfiguration({
    this.httpsNotificationConfiguration,
    this.sqsNotificationConfiguration,
  });

  final List<SecuritylakeSubscriberNotificationHttpsNotificationConfiguration>?
  httpsNotificationConfiguration;

  final List<SecuritylakeSubscriberNotificationSqsNotificationConfiguration>?
  sqsNotificationConfiguration;

  Map<String, Object?> encode() => {
    if (httpsNotificationConfiguration != null)
      'https_notification_configuration': [
        for (final e in httpsNotificationConfiguration!) e.encode(),
      ],
    if (sqsNotificationConfiguration != null)
      'sqs_notification_configuration': [
        for (final e in sqsNotificationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.https_notification_configuration` block of
/// `aws_securitylake_subscriber_notification` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberNotificationHttpsNotificationConfiguration {
  const SecuritylakeSubscriberNotificationHttpsNotificationConfiguration({
    this.authorizationApiKeyName,
    this.authorizationApiKeyValue,
    required this.endpoint,
    this.httpMethod,
    required this.targetRoleArn,
  });

  final TfArg<String>? authorizationApiKeyName;

  final TfArg<String>? authorizationApiKeyValue;

  final TfArg<String> endpoint;

  final TfArg<SecuritylakeSubscriberNotificationHttpMethod>? httpMethod;

  final TfArg<String> targetRoleArn;

  Map<String, Object?> encode() => {
    'authorization_api_key_name': ?authorizationApiKeyName?.toTfJson(),
    'authorization_api_key_value': ?authorizationApiKeyValue?.toTfJson(),
    'endpoint': endpoint.toTfJson(),
    'http_method': ?httpMethod?.toTfJson(),
    'target_role_arn': targetRoleArn.toTfJson(),
  };
}

/// `http_method` — derived from the provider schema description.
enum SecuritylakeSubscriberNotificationHttpMethod implements TerraformEnum {
  post('POST'),
  put('PUT');

  const SecuritylakeSubscriberNotificationHttpMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.sqs_notification_configuration` block of
/// `aws_securitylake_subscriber_notification` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberNotificationSqsNotificationConfiguration {
  const SecuritylakeSubscriberNotificationSqsNotificationConfiguration();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_securitylake_subscriber_notification`.
final class AwsSecuritylakeSubscriberNotification extends Resource {
  static const String tfType = 'aws_securitylake_subscriber_notification';

  AwsSecuritylakeSubscriberNotification({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> subscriberId,
    List<SecuritylakeSubscriberNotificationConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'subscriber_id': subscriberId,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecuritylakeSubscriberNotificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecuritylakeSubscriberNotification>`.
  RefTo<AwsSecuritylakeSubscriberNotification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `subscriber_endpoint` attribute.
  TfRef<String> get subscriberEndpoint =>
      TfRef.attribute<String>(this, 'subscriber_endpoint');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subscriber_id` attribute.
  TfRef<String> get subscriberId =>
      TfRef.attribute<String>(this, 'subscriber_id');
}

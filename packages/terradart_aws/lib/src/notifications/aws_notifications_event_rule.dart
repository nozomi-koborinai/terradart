// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_event_rule`.
const Set<String> _awsNotificationsEventRuleSensitive = <String>{};

/// Factory wrapper for `aws_notifications_event_rule`.
final class AwsNotificationsEventRule extends Resource {
  static const String tfType = 'aws_notifications_event_rule';

  AwsNotificationsEventRule(
    super.localName, {
    TfArg<String>? eventPattern,
    required TfArg<String> eventType,
    required TfArg<String> notificationConfigurationArn,
    required TfArg<List<String>> regions,
    required TfArg<String> source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'event_pattern': ?eventPattern,
           'event_type': eventType,
           'notification_configuration_arn': notificationConfigurationArn,
           'regions': regions,
           'source': source,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNotificationsEventRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationsEventRule>`.
  RefTo<AwsNotificationsEventRule> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `event_pattern` attribute.
  TfRef<String> get eventPattern =>
      TfRef.attribute<String>(this, 'event_pattern');

  /// Reference to `event_type` attribute.
  TfRef<String> get eventType => TfRef.attribute<String>(this, 'event_type');

  /// Reference to `notification_configuration_arn` attribute.
  TfRef<String> get notificationConfigurationArn =>
      TfRef.attribute<String>(this, 'notification_configuration_arn');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}

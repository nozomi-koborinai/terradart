// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_event_rule`.
const Set<String> _awsNotificationsEventRuleSensitive = <String>{};

/// Factory wrapper for `aws_notifications_event_rule`.
final class AwsNotificationsEventRule extends Resource {
  static const String tfType = 'aws_notifications_event_rule';

  AwsNotificationsEventRule({
    required super.localName,
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
           if (eventPattern != null) 'event_pattern': eventPattern,
           'event_type': eventType,
           'notification_configuration_arn': notificationConfigurationArn,
           'regions': regions,
           'source': source,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNotificationsEventRuleSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

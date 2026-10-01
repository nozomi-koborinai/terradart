// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_notification_configuration`.
const Set<String> _awsNotificationsNotificationConfigurationSensitive =
    <String>{};

/// Notifications Notification Configuration Aggregation enum for `aggregation_duration`.
enum NotificationsNotificationConfigurationAggregationDuration
    implements TerraformEnum {
  long('LONG'),
  short('SHORT'),
  none('NONE');

  const NotificationsNotificationConfigurationAggregationDuration(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_notifications_notification_configuration`.
final class AwsNotificationsNotificationConfiguration extends Resource {
  static const String tfType = 'aws_notifications_notification_configuration';

  AwsNotificationsNotificationConfiguration(
    super.localName, {
    TfArg<NotificationsNotificationConfigurationAggregationDuration>?
    aggregationDuration,
    required TfArg<String> description,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation_duration': ?aggregationDuration,
           'description': description,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsNotificationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationsNotificationConfiguration>`.
  RefTo<AwsNotificationsNotificationConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `aggregation_duration` attribute.
  TfRef<String> get aggregationDuration =>
      TfRef.attribute<String>(this, 'aggregation_duration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

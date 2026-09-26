// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_notification_configuration`.
const Set<String> _awsNotificationsNotificationConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_notifications_notification_configuration`.
final class AwsNotificationsNotificationConfiguration extends Resource {
  static const String tfType = 'aws_notifications_notification_configuration';

  AwsNotificationsNotificationConfiguration({
    required super.localName,
    TfArg<String>? aggregationDuration,
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
           if (aggregationDuration != null)
             'aggregation_duration': aggregationDuration,
           'description': description,
           'name': name,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsNotificationConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

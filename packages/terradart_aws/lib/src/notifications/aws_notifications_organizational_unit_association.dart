// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_organizational_unit_association`.
const Set<String> _awsNotificationsOrganizationalUnitAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_notifications_organizational_unit_association`.
final class AwsNotificationsOrganizationalUnitAssociation extends Resource {
  static const String tfType =
      'aws_notifications_organizational_unit_association';

  AwsNotificationsOrganizationalUnitAssociation({
    required super.localName,
    required TfArg<String> notificationConfigurationArn,
    required TfArg<String> organizationalUnitId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'notification_configuration_arn': notificationConfigurationArn,
           'organizational_unit_id': organizationalUnitId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsOrganizationalUnitAssociationSensitive;
}

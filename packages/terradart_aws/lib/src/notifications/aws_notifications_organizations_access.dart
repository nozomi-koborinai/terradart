// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_organizations_access`.
const Set<String> _awsNotificationsOrganizationsAccessSensitive = <String>{};

/// Factory wrapper for `aws_notifications_organizations_access`.
final class AwsNotificationsOrganizationsAccess extends Resource {
  static const String tfType = 'aws_notifications_organizations_access';

  AwsNotificationsOrganizationsAccess({
    required super.localName,
    required TfArg<bool> enabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'enabled': enabled});

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsOrganizationsAccessSensitive;
}

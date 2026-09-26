// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_access_logging_settings_association`.
const Set<String>
_awsWorkspaceswebUserAccessLoggingSettingsAssociationSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_user_access_logging_settings_association`.
final class AwsWorkspaceswebUserAccessLoggingSettingsAssociation
    extends Resource {
  static const String tfType =
      'aws_workspacesweb_user_access_logging_settings_association';

  AwsWorkspaceswebUserAccessLoggingSettingsAssociation({
    required super.localName,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    required TfArg<String> userAccessLoggingSettingsArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'portal_arn': portalArn,
           if (region != null) 'region': region,
           'user_access_logging_settings_arn': userAccessLoggingSettingsArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebUserAccessLoggingSettingsAssociationSensitive;
}

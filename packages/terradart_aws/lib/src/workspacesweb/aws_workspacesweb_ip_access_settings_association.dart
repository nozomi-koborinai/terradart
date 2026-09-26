// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_ip_access_settings_association`.
const Set<String> _awsWorkspaceswebIpAccessSettingsAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_workspacesweb_ip_access_settings_association`.
final class AwsWorkspaceswebIpAccessSettingsAssociation extends Resource {
  static const String tfType =
      'aws_workspacesweb_ip_access_settings_association';

  AwsWorkspaceswebIpAccessSettingsAssociation({
    required super.localName,
    required TfArg<String> ipAccessSettingsArn,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_access_settings_arn': ipAccessSettingsArn,
           'portal_arn': portalArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebIpAccessSettingsAssociationSensitive;
}

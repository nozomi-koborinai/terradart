// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_data_protection_settings_association`.
const Set<String> _awsWorkspaceswebDataProtectionSettingsAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_workspacesweb_data_protection_settings_association`.
final class AwsWorkspaceswebDataProtectionSettingsAssociation extends Resource {
  static const String tfType =
      'aws_workspacesweb_data_protection_settings_association';

  AwsWorkspaceswebDataProtectionSettingsAssociation({
    required super.localName,
    required TfArg<String> dataProtectionSettingsArn,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_protection_settings_arn': dataProtectionSettingsArn,
           'portal_arn': portalArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebDataProtectionSettingsAssociationSensitive;
}

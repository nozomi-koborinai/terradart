// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_network_settings`.
const Set<String> _awsWorkspaceswebNetworkSettingsSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_network_settings`.
final class AwsWorkspaceswebNetworkSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_network_settings';

  AwsWorkspaceswebNetworkSettings({
    required super.localName,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupIds,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'security_group_ids': securityGroupIds,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebNetworkSettingsSensitive;

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `network_settings_arn` attribute.
  TfRef<String> get networkSettingsArn =>
      TfRef.attribute<String>(this, 'network_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

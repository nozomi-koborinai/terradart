// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_workspacesweb_network_settings`.
const Set<String> _awsWorkspaceswebNetworkSettingsSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_network_settings`.
final class AwsWorkspaceswebNetworkSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_network_settings';

  AwsWorkspaceswebNetworkSettings({
    required super.localName,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'security_group_ids': securityGroupIds.encodeAs('id'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebNetworkSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebNetworkSettings>`.
  RefTo<AwsWorkspaceswebNetworkSettings> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `network_settings_arn` attribute.
  TfRef<String> get networkSettingsArn =>
      TfRef.attribute<String>(this, 'network_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

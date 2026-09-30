// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_settings_association`.
const Set<String> _awsWorkspaceswebUserSettingsAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_workspacesweb_user_settings_association`.
final class AwsWorkspaceswebUserSettingsAssociation extends Resource {
  static const String tfType = 'aws_workspacesweb_user_settings_association';

  AwsWorkspaceswebUserSettingsAssociation({
    required super.localName,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    required TfArg<String> userSettingsArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'portal_arn': portalArn,
           'region': ?region,
           'user_settings_arn': userSettingsArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebUserSettingsAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebUserSettingsAssociation>`.
  RefTo<AwsWorkspaceswebUserSettingsAssociation> get ref => RefTo.of(this);

  /// Reference to `portal_arn` attribute.
  TfRef<String> get portalArnRef => TfRef.attribute<String>(this, 'portal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_settings_arn` attribute.
  TfRef<String> get userSettingsArnRef =>
      TfRef.attribute<String>(this, 'user_settings_arn');
}

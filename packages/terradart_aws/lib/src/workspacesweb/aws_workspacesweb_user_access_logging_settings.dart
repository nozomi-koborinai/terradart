// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_access_logging_settings`.
const Set<String> _awsWorkspaceswebUserAccessLoggingSettingsSensitive =
    <String>{};

/// Factory wrapper for `aws_workspacesweb_user_access_logging_settings`.
final class AwsWorkspaceswebUserAccessLoggingSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_user_access_logging_settings';

  AwsWorkspaceswebUserAccessLoggingSettings(
    super.localName, {
    required TfArg<String> kinesisStreamArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kinesis_stream_arn': kinesisStreamArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebUserAccessLoggingSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebUserAccessLoggingSettings>`.
  RefTo<AwsWorkspaceswebUserAccessLoggingSettings> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `user_access_logging_settings_arn` attribute.
  TfRef<String> get userAccessLoggingSettingsArn =>
      TfRef.attribute<String>(this, 'user_access_logging_settings_arn');

  /// Reference to `kinesis_stream_arn` attribute.
  TfRef<String> get kinesisStreamArn =>
      TfRef.attribute<String>(this, 'kinesis_stream_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

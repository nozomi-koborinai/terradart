// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_browser_settings`.
const Set<String> _awsWorkspaceswebBrowserSettingsSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_browser_settings`.
final class AwsWorkspaceswebBrowserSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_browser_settings';

  AwsWorkspaceswebBrowserSettings({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    required TfArg<String> browserPolicy,
    TfArg<String>? customerManagedKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_encryption_context': ?additionalEncryptionContext,
           'browser_policy': browserPolicy,
           'customer_managed_key': ?customerManagedKey,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebBrowserSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebBrowserSettings>`.
  RefTo<AwsWorkspaceswebBrowserSettings> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `browser_settings_arn` attribute.
  TfRef<String> get browserSettingsArn =>
      TfRef.attribute<String>(this, 'browser_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `browser_policy` attribute.
  TfRef<String> get browserPolicy =>
      TfRef.attribute<String>(this, 'browser_policy');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

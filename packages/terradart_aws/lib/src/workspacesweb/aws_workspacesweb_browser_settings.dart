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
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           'browser_policy': browserPolicy,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebBrowserSettingsSensitive;

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `browser_settings_arn` attribute.
  TfRef<String> get browserSettingsArn =>
      TfRef.attribute<String>(this, 'browser_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

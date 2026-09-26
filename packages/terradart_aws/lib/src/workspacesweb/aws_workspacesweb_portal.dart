// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_portal`.
const Set<String> _awsWorkspaceswebPortalSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_portal`.
final class AwsWorkspaceswebPortal extends Resource {
  static const String tfType = 'aws_workspacesweb_portal';

  AwsWorkspaceswebPortal({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? authenticationType,
    TfArg<String>? browserSettingsArn,
    TfArg<String>? customerManagedKey,
    TfArg<String>? displayName,
    TfArg<String>? instanceType,
    TfArg<num>? maxConcurrentSessions,
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
           if (authenticationType != null)
             'authentication_type': authenticationType,
           if (browserSettingsArn != null)
             'browser_settings_arn': browserSettingsArn,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (displayName != null) 'display_name': displayName,
           if (instanceType != null) 'instance_type': instanceType,
           if (maxConcurrentSessions != null)
             'max_concurrent_sessions': maxConcurrentSessions,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebPortalSensitive;

  /// Reference to `browser_type` attribute.
  TfRef<String> get browserType =>
      TfRef.attribute<String>(this, 'browser_type');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `data_protection_settings_arn` attribute.
  TfRef<String> get dataProtectionSettingsArn =>
      TfRef.attribute<String>(this, 'data_protection_settings_arn');

  /// Reference to `ip_access_settings_arn` attribute.
  TfRef<String> get ipAccessSettingsArn =>
      TfRef.attribute<String>(this, 'ip_access_settings_arn');

  /// Reference to `network_settings_arn` attribute.
  TfRef<String> get networkSettingsArn =>
      TfRef.attribute<String>(this, 'network_settings_arn');

  /// Reference to `portal_arn` attribute.
  TfRef<String> get portalArn => TfRef.attribute<String>(this, 'portal_arn');

  /// Reference to `portal_endpoint` attribute.
  TfRef<String> get portalEndpoint =>
      TfRef.attribute<String>(this, 'portal_endpoint');

  /// Reference to `portal_status` attribute.
  TfRef<String> get portalStatus =>
      TfRef.attribute<String>(this, 'portal_status');

  /// Reference to `renderer_type` attribute.
  TfRef<String> get rendererType =>
      TfRef.attribute<String>(this, 'renderer_type');

  /// Reference to `session_logger_arn` attribute.
  TfRef<String> get sessionLoggerArn =>
      TfRef.attribute<String>(this, 'session_logger_arn');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `trust_store_arn` attribute.
  TfRef<String> get trustStoreArn =>
      TfRef.attribute<String>(this, 'trust_store_arn');

  /// Reference to `user_access_logging_settings_arn` attribute.
  TfRef<String> get userAccessLoggingSettingsArn =>
      TfRef.attribute<String>(this, 'user_access_logging_settings_arn');

  /// Reference to `user_settings_arn` attribute.
  TfRef<String> get userSettingsArn =>
      TfRef.attribute<String>(this, 'user_settings_arn');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_portal`.
const Set<String> _awsWorkspaceswebPortalSensitive = <String>{};

/// Workspacesweb Portal Authentication enum for `authentication_type`.
extension type const WorkspaceswebPortalAuthenticationType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebPortalAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebPortalAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebPortalAuthenticationType.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = WorkspaceswebPortalAuthenticationType._(
    TfArgLiteral('Standard'),
  );
  static const iamIdentityCenter = WorkspaceswebPortalAuthenticationType._(
    TfArgLiteral('IAM_Identity_Center'),
  );

  static const List<WorkspaceswebPortalAuthenticationType> values = [
    standard,
    iamIdentityCenter,
  ];
}

/// Workspacesweb Portal Instance enum for `instance_type`.
extension type const WorkspaceswebPortalInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebPortalInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebPortalInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebPortalInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const standardRegular = WorkspaceswebPortalInstanceType._(
    TfArgLiteral('standard.regular'),
  );
  static const standardLarge = WorkspaceswebPortalInstanceType._(
    TfArgLiteral('standard.large'),
  );
  static const standardXlarge = WorkspaceswebPortalInstanceType._(
    TfArgLiteral('standard.xlarge'),
  );

  static const List<WorkspaceswebPortalInstanceType> values = [
    standardRegular,
    standardLarge,
    standardXlarge,
  ];
}

/// Factory wrapper for `aws_workspacesweb_portal`.
final class AwsWorkspaceswebPortal extends Resource {
  static const String tfType = 'aws_workspacesweb_portal';

  AwsWorkspaceswebPortal(
    super.localName, {
    TfArg<Map<String, String>>? additionalEncryptionContext,
    WorkspaceswebPortalAuthenticationType? authenticationType,
    TfArg<String>? browserSettingsArn,
    TfArg<String>? customerManagedKey,
    TfArg<String>? displayName,
    WorkspaceswebPortalInstanceType? instanceType,
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
           'additional_encryption_context': ?additionalEncryptionContext,
           'authentication_type': ?authenticationType,
           'browser_settings_arn': ?browserSettingsArn,
           'customer_managed_key': ?customerManagedKey,
           'display_name': ?displayName,
           'instance_type': ?instanceType,
           'max_concurrent_sessions': ?maxConcurrentSessions,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebPortalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebPortal>`.
  RefTo<AwsWorkspaceswebPortal> get ref => RefTo.of(this);

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

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `browser_settings_arn` attribute.
  TfRef<String> get browserSettingsArn =>
      TfRef.attribute<String>(this, 'browser_settings_arn');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `max_concurrent_sessions` attribute.
  TfRef<num> get maxConcurrentSessions =>
      TfRef.attribute<num>(this, 'max_concurrent_sessions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

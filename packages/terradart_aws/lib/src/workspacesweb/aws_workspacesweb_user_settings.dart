// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_settings`.
const Set<String> _awsWorkspaceswebUserSettingsSensitive = <String>{};

/// Workspacesweb User Settings Copy enum for `copy_allowed`.
enum WorkspaceswebUserSettingsCopyAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsCopyAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspacesweb User Settings Deep Link enum for `deep_link_allowed`.
enum WorkspaceswebUserSettingsDeepLinkAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsDeepLinkAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspacesweb User Settings Download enum for `download_allowed`.
enum WorkspaceswebUserSettingsDownloadAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsDownloadAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspacesweb User Settings Paste enum for `paste_allowed`.
enum WorkspaceswebUserSettingsPasteAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsPasteAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspacesweb User Settings Print enum for `print_allowed`.
enum WorkspaceswebUserSettingsPrintAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsPrintAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspacesweb User Settings Upload enum for `upload_allowed`.
enum WorkspaceswebUserSettingsUploadAllowed implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const WorkspaceswebUserSettingsUploadAllowed(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cookie_synchronization_configuration` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsCookieSynchronizationConfiguration {
  const WorkspaceswebUserSettingsCookieSynchronizationConfiguration({
    this.allowlist,
    this.blocklist,
  });

  final List<
    WorkspaceswebUserSettingsCookieSynchronizationConfigurationAllowlist
  >?
  allowlist;

  final List<
    WorkspaceswebUserSettingsCookieSynchronizationConfigurationBlocklist
  >?
  blocklist;

  Map<String, Object?> encode() => {
    if (allowlist != null)
      'allowlist': [for (final e in allowlist!) e.encode()],
    if (blocklist != null)
      'blocklist': [for (final e in blocklist!) e.encode()],
  };
}

/// Typed helper for the `cookie_synchronization_configuration.allowlist` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsCookieSynchronizationConfigurationAllowlist {
  const WorkspaceswebUserSettingsCookieSynchronizationConfigurationAllowlist({
    required this.domain,
    this.name,
    this.path,
  });

  final TfArg<String> domain;

  final TfArg<String>? name;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `cookie_synchronization_configuration.blocklist` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsCookieSynchronizationConfigurationBlocklist {
  const WorkspaceswebUserSettingsCookieSynchronizationConfigurationBlocklist({
    required this.domain,
    this.name,
    this.path,
  });

  final TfArg<String> domain;

  final TfArg<String>? name;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `toolbar_configuration` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsToolbarConfiguration {
  const WorkspaceswebUserSettingsToolbarConfiguration({
    this.hiddenToolbarItems,
    this.maxDisplayResolution,
    this.toolbarType,
    this.visualMode,
  });

  final List<
    TfArg<WorkspaceswebUserSettingsToolbarConfigurationHiddenToolbarItems>
  >?
  hiddenToolbarItems;

  final TfArg<
    WorkspaceswebUserSettingsToolbarConfigurationMaxDisplayResolution
  >?
  maxDisplayResolution;

  final TfArg<WorkspaceswebUserSettingsToolbarConfigurationToolbarType>?
  toolbarType;

  final TfArg<WorkspaceswebUserSettingsToolbarConfigurationVisualMode>?
  visualMode;

  Map<String, Object?> encode() => {
    if (hiddenToolbarItems != null)
      'hidden_toolbar_items': [
        for (final e in hiddenToolbarItems!) e.toTfJson(),
      ],
    'max_display_resolution': ?maxDisplayResolution?.toTfJson(),
    'toolbar_type': ?toolbarType?.toTfJson(),
    'visual_mode': ?visualMode?.toTfJson(),
  };
}

/// `hidden_toolbar_items` — derived from the provider schema description.
enum WorkspaceswebUserSettingsToolbarConfigurationHiddenToolbarItems
    implements TerraformEnum {
  windows('Windows'),
  dualmonitor('DualMonitor'),
  fullscreen('FullScreen'),
  webcam('Webcam'),
  microphone('Microphone');

  const WorkspaceswebUserSettingsToolbarConfigurationHiddenToolbarItems(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `max_display_resolution` — derived from the provider schema description.
enum WorkspaceswebUserSettingsToolbarConfigurationMaxDisplayResolution
    implements TerraformEnum {
  size4096x2160('size4096X2160'),
  size3840x2160('size3840X2160'),
  size3440x1440('size3440X1440'),
  size2560x1440('size2560X1440'),
  size1920x1080('size1920X1080'),
  size1280x720('size1280X720'),
  size1024x768('size1024X768'),
  size800x600('size800X600');

  const WorkspaceswebUserSettingsToolbarConfigurationMaxDisplayResolution(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `toolbar_type` — derived from the provider schema description.
enum WorkspaceswebUserSettingsToolbarConfigurationToolbarType
    implements TerraformEnum {
  floating('Floating'),
  docked('Docked');

  const WorkspaceswebUserSettingsToolbarConfigurationToolbarType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `visual_mode` — derived from the provider schema description.
enum WorkspaceswebUserSettingsToolbarConfigurationVisualMode
    implements TerraformEnum {
  dark('Dark'),
  light('Light');

  const WorkspaceswebUserSettingsToolbarConfigurationVisualMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspacesweb_user_settings`.
final class AwsWorkspaceswebUserSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_user_settings';

  AwsWorkspaceswebUserSettings({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    required TfArg<WorkspaceswebUserSettingsCopyAllowed> copyAllowed,
    TfArg<String>? customerManagedKey,
    TfArg<WorkspaceswebUserSettingsDeepLinkAllowed>? deepLinkAllowed,
    TfArg<num>? disconnectTimeoutInMinutes,
    required TfArg<WorkspaceswebUserSettingsDownloadAllowed> downloadAllowed,
    TfArg<num>? idleDisconnectTimeoutInMinutes,
    required TfArg<WorkspaceswebUserSettingsPasteAllowed> pasteAllowed,
    required TfArg<WorkspaceswebUserSettingsPrintAllowed> printAllowed,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<WorkspaceswebUserSettingsUploadAllowed> uploadAllowed,
    List<WorkspaceswebUserSettingsCookieSynchronizationConfiguration>?
    cookieSynchronizationConfiguration,
    List<WorkspaceswebUserSettingsToolbarConfiguration>? toolbarConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_encryption_context': ?additionalEncryptionContext,
           'copy_allowed': copyAllowed,
           'customer_managed_key': ?customerManagedKey,
           'deep_link_allowed': ?deepLinkAllowed,
           'disconnect_timeout_in_minutes': ?disconnectTimeoutInMinutes,
           'download_allowed': downloadAllowed,
           'idle_disconnect_timeout_in_minutes':
               ?idleDisconnectTimeoutInMinutes,
           'paste_allowed': pasteAllowed,
           'print_allowed': printAllowed,
           'region': ?region,
           'tags': ?tags,
           'upload_allowed': uploadAllowed,
           if (cookieSynchronizationConfiguration != null)
             'cookie_synchronization_configuration': TfArg.literal([
               for (final e in cookieSynchronizationConfiguration) e.encode(),
             ]),
           if (toolbarConfiguration != null)
             'toolbar_configuration': TfArg.literal([
               for (final e in toolbarConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebUserSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebUserSettings>`.
  RefTo<AwsWorkspaceswebUserSettings> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `user_settings_arn` attribute.
  TfRef<String> get userSettingsArn =>
      TfRef.attribute<String>(this, 'user_settings_arn');

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContextRef =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `copy_allowed` attribute.
  TfRef<String> get copyAllowedRef =>
      TfRef.attribute<String>(this, 'copy_allowed');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKeyRef =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `deep_link_allowed` attribute.
  TfRef<String> get deepLinkAllowedRef =>
      TfRef.attribute<String>(this, 'deep_link_allowed');

  /// Reference to `disconnect_timeout_in_minutes` attribute.
  TfRef<num> get disconnectTimeoutInMinutesRef =>
      TfRef.attribute<num>(this, 'disconnect_timeout_in_minutes');

  /// Reference to `download_allowed` attribute.
  TfRef<String> get downloadAllowedRef =>
      TfRef.attribute<String>(this, 'download_allowed');

  /// Reference to `idle_disconnect_timeout_in_minutes` attribute.
  TfRef<num> get idleDisconnectTimeoutInMinutesRef =>
      TfRef.attribute<num>(this, 'idle_disconnect_timeout_in_minutes');

  /// Reference to `paste_allowed` attribute.
  TfRef<String> get pasteAllowedRef =>
      TfRef.attribute<String>(this, 'paste_allowed');

  /// Reference to `print_allowed` attribute.
  TfRef<String> get printAllowedRef =>
      TfRef.attribute<String>(this, 'print_allowed');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upload_allowed` attribute.
  TfRef<String> get uploadAllowedRef =>
      TfRef.attribute<String>(this, 'upload_allowed');
}

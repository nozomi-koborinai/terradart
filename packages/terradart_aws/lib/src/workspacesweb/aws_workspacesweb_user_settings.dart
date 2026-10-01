// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_settings`.
const Set<String> _awsWorkspaceswebUserSettingsSensitive = <String>{};

/// Workspacesweb User Settings Copy enum for `copy_allowed`.
extension type const WorkspaceswebUserSettingsCopyAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsCopyAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsCopyAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsCopyAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsCopyAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsCopyAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsCopyAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Workspacesweb User Settings Deep Link enum for `deep_link_allowed`.
extension type const WorkspaceswebUserSettingsDeepLinkAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsDeepLinkAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsDeepLinkAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsDeepLinkAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsDeepLinkAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsDeepLinkAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsDeepLinkAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Workspacesweb User Settings Download enum for `download_allowed`.
extension type const WorkspaceswebUserSettingsDownloadAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsDownloadAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsDownloadAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsDownloadAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsDownloadAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsDownloadAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsDownloadAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Workspacesweb User Settings Paste enum for `paste_allowed`.
extension type const WorkspaceswebUserSettingsPasteAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsPasteAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsPasteAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsPasteAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsPasteAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsPasteAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsPasteAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Workspacesweb User Settings Print enum for `print_allowed`.
extension type const WorkspaceswebUserSettingsPrintAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsPrintAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsPrintAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsPrintAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsPrintAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsPrintAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsPrintAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Workspacesweb User Settings Upload enum for `upload_allowed`.
extension type const WorkspaceswebUserSettingsUploadAllowed._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsUploadAllowed.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsUploadAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsUploadAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspaceswebUserSettingsUploadAllowed._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = WorkspaceswebUserSettingsUploadAllowed._(
    TfArgLiteral('Enabled'),
  );

  static const List<WorkspaceswebUserSettingsUploadAllowed> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `cookie_synchronization_configuration` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsCookieSynchronizationConfiguration {
  const WorkspaceswebUserSettingsCookieSynchronizationConfiguration({
    this.allowlist,
    this.blocklist,
  });

  final List<WorkspaceswebUserSettingsAllowlist>? allowlist;

  final List<WorkspaceswebUserSettingsBlocklist>? blocklist;

  @internal
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
final class WorkspaceswebUserSettingsAllowlist {
  const WorkspaceswebUserSettingsAllowlist({
    required this.domain,
    this.name,
    this.path,
  });

  final TfArg<String> domain;

  final TfArg<String>? name;

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `cookie_synchronization_configuration.blocklist` block of
/// `aws_workspacesweb_user_settings` (derived from provider schema).
@immutable
final class WorkspaceswebUserSettingsBlocklist {
  const WorkspaceswebUserSettingsBlocklist({
    required this.domain,
    this.name,
    this.path,
  });

  final TfArg<String> domain;

  final TfArg<String>? name;

  final TfArg<String>? path;

  @internal
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

  final List<WorkspaceswebUserSettingsHiddenToolbarItems>? hiddenToolbarItems;

  final WorkspaceswebUserSettingsMaxDisplayResolution? maxDisplayResolution;

  final WorkspaceswebUserSettingsToolbarType? toolbarType;

  final WorkspaceswebUserSettingsVisualMode? visualMode;

  @internal
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
extension type const WorkspaceswebUserSettingsHiddenToolbarItems._(
  TfArg<String> _
) implements TfArg<String> {
  WorkspaceswebUserSettingsHiddenToolbarItems.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsHiddenToolbarItems.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsHiddenToolbarItems.arg(TfArg<String> arg)
    : this._(arg);

  static const windows = WorkspaceswebUserSettingsHiddenToolbarItems._(
    TfArgLiteral('Windows'),
  );
  static const dualmonitor = WorkspaceswebUserSettingsHiddenToolbarItems._(
    TfArgLiteral('DualMonitor'),
  );
  static const fullscreen = WorkspaceswebUserSettingsHiddenToolbarItems._(
    TfArgLiteral('FullScreen'),
  );
  static const webcam = WorkspaceswebUserSettingsHiddenToolbarItems._(
    TfArgLiteral('Webcam'),
  );
  static const microphone = WorkspaceswebUserSettingsHiddenToolbarItems._(
    TfArgLiteral('Microphone'),
  );

  static const List<WorkspaceswebUserSettingsHiddenToolbarItems> values = [
    windows,
    dualmonitor,
    fullscreen,
    webcam,
    microphone,
  ];
}

/// `max_display_resolution` — derived from the provider schema description.
extension type const WorkspaceswebUserSettingsMaxDisplayResolution._(
  TfArg<String> _
) implements TfArg<String> {
  WorkspaceswebUserSettingsMaxDisplayResolution.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsMaxDisplayResolution.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsMaxDisplayResolution.arg(TfArg<String> arg)
    : this._(arg);

  static const size4096x2160 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size4096X2160'),
  );
  static const size3840x2160 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size3840X2160'),
  );
  static const size3440x1440 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size3440X1440'),
  );
  static const size2560x1440 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size2560X1440'),
  );
  static const size1920x1080 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size1920X1080'),
  );
  static const size1280x720 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size1280X720'),
  );
  static const size1024x768 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size1024X768'),
  );
  static const size800x600 = WorkspaceswebUserSettingsMaxDisplayResolution._(
    TfArgLiteral('size800X600'),
  );

  static const List<WorkspaceswebUserSettingsMaxDisplayResolution> values = [
    size4096x2160,
    size3840x2160,
    size3440x1440,
    size2560x1440,
    size1920x1080,
    size1280x720,
    size1024x768,
    size800x600,
  ];
}

/// `toolbar_type` — derived from the provider schema description.
extension type const WorkspaceswebUserSettingsToolbarType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsToolbarType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsToolbarType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsToolbarType.arg(TfArg<String> arg)
    : this._(arg);

  static const floating = WorkspaceswebUserSettingsToolbarType._(
    TfArgLiteral('Floating'),
  );
  static const docked = WorkspaceswebUserSettingsToolbarType._(
    TfArgLiteral('Docked'),
  );

  static const List<WorkspaceswebUserSettingsToolbarType> values = [
    floating,
    docked,
  ];
}

/// `visual_mode` — derived from the provider schema description.
extension type const WorkspaceswebUserSettingsVisualMode._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebUserSettingsVisualMode.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebUserSettingsVisualMode.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebUserSettingsVisualMode.arg(TfArg<String> arg)
    : this._(arg);

  static const dark = WorkspaceswebUserSettingsVisualMode._(
    TfArgLiteral('Dark'),
  );
  static const light = WorkspaceswebUserSettingsVisualMode._(
    TfArgLiteral('Light'),
  );

  static const List<WorkspaceswebUserSettingsVisualMode> values = [dark, light];
}

/// Factory wrapper for `aws_workspacesweb_user_settings`.
final class AwsWorkspaceswebUserSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_user_settings';

  AwsWorkspaceswebUserSettings(
    super.localName, {
    TfArg<Map<String, String>>? additionalEncryptionContext,
    required WorkspaceswebUserSettingsCopyAllowed copyAllowed,
    TfArg<String>? customerManagedKey,
    WorkspaceswebUserSettingsDeepLinkAllowed? deepLinkAllowed,
    TfArg<num>? disconnectTimeoutInMinutes,
    required WorkspaceswebUserSettingsDownloadAllowed downloadAllowed,
    TfArg<num>? idleDisconnectTimeoutInMinutes,
    required WorkspaceswebUserSettingsPasteAllowed pasteAllowed,
    required WorkspaceswebUserSettingsPrintAllowed printAllowed,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required WorkspaceswebUserSettingsUploadAllowed uploadAllowed,
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
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `copy_allowed` attribute.
  TfRef<String> get copyAllowed =>
      TfRef.attribute<String>(this, 'copy_allowed');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `deep_link_allowed` attribute.
  TfRef<String> get deepLinkAllowed =>
      TfRef.attribute<String>(this, 'deep_link_allowed');

  /// Reference to `disconnect_timeout_in_minutes` attribute.
  TfRef<num> get disconnectTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'disconnect_timeout_in_minutes');

  /// Reference to `download_allowed` attribute.
  TfRef<String> get downloadAllowed =>
      TfRef.attribute<String>(this, 'download_allowed');

  /// Reference to `idle_disconnect_timeout_in_minutes` attribute.
  TfRef<num> get idleDisconnectTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_disconnect_timeout_in_minutes');

  /// Reference to `paste_allowed` attribute.
  TfRef<String> get pasteAllowed =>
      TfRef.attribute<String>(this, 'paste_allowed');

  /// Reference to `print_allowed` attribute.
  TfRef<String> get printAllowed =>
      TfRef.attribute<String>(this, 'print_allowed');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upload_allowed` attribute.
  TfRef<String> get uploadAllowed =>
      TfRef.attribute<String>(this, 'upload_allowed');
}

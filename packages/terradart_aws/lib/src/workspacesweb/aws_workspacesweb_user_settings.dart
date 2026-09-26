// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_user_settings`.
const Set<String> _awsWorkspaceswebUserSettingsSensitive = <String>{};

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
    if (name != null) 'name': name!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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
    if (name != null) 'name': name!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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

  final TfArg<List<Object?>>? hiddenToolbarItems;

  final TfArg<String>? maxDisplayResolution;

  final TfArg<String>? toolbarType;

  final TfArg<String>? visualMode;

  Map<String, Object?> encode() => {
    if (hiddenToolbarItems != null)
      'hidden_toolbar_items': hiddenToolbarItems!.toTfJson(),
    if (maxDisplayResolution != null)
      'max_display_resolution': maxDisplayResolution!.toTfJson(),
    if (toolbarType != null) 'toolbar_type': toolbarType!.toTfJson(),
    if (visualMode != null) 'visual_mode': visualMode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspacesweb_user_settings`.
final class AwsWorkspaceswebUserSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_user_settings';

  AwsWorkspaceswebUserSettings({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    required TfArg<String> copyAllowed,
    TfArg<String>? customerManagedKey,
    TfArg<String>? deepLinkAllowed,
    TfArg<num>? disconnectTimeoutInMinutes,
    required TfArg<String> downloadAllowed,
    TfArg<num>? idleDisconnectTimeoutInMinutes,
    required TfArg<String> pasteAllowed,
    required TfArg<String> printAllowed,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> uploadAllowed,
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
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           'copy_allowed': copyAllowed,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (deepLinkAllowed != null) 'deep_link_allowed': deepLinkAllowed,
           if (disconnectTimeoutInMinutes != null)
             'disconnect_timeout_in_minutes': disconnectTimeoutInMinutes,
           'download_allowed': downloadAllowed,
           if (idleDisconnectTimeoutInMinutes != null)
             'idle_disconnect_timeout_in_minutes':
                 idleDisconnectTimeoutInMinutes,
           'paste_allowed': pasteAllowed,
           'print_allowed': printAllowed,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `user_settings_arn` attribute.
  TfRef<String> get userSettingsArn =>
      TfRef.attribute<String>(this, 'user_settings_arn');
}

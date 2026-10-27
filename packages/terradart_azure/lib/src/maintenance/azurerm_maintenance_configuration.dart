// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_maintenance_configuration`.
const Set<String> _azurermMaintenanceConfigurationSensitive = <String>{};

/// Maintenance Configuration In Guest User Patch enum for `in_guest_user_patch_mode`.
extension type const MaintenanceConfigurationInGuestUserPatchMode._(
  TfArg<String> _
) implements TfArg<String> {
  MaintenanceConfigurationInGuestUserPatchMode.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceConfigurationInGuestUserPatchMode.expression(String template)
    : this._(TfArg.expression(template));
  const MaintenanceConfigurationInGuestUserPatchMode.arg(TfArg<String> arg)
    : this._(arg);

  static const platform = MaintenanceConfigurationInGuestUserPatchMode._(
    TfArgLiteral('Platform'),
  );
  static const user = MaintenanceConfigurationInGuestUserPatchMode._(
    TfArgLiteral('User'),
  );

  static const List<MaintenanceConfigurationInGuestUserPatchMode> values = [
    platform,
    user,
  ];
}

/// Typed helper for the `install_patches` block of
/// `azurerm_maintenance_configuration` (derived from provider schema).
@immutable
final class MaintenanceConfigurationInstallPatches {
  const MaintenanceConfigurationInstallPatches({
    this.reboot,
    this.linux,
    this.windows,
  });

  final MaintenanceConfigurationReboot? reboot;

  final List<MaintenanceConfigurationLinux>? linux;

  final List<MaintenanceConfigurationWindows>? windows;

  @internal
  Map<String, Object?> encode() => {
    'reboot': ?reboot?.toTfJson(),
    if (linux != null) 'linux': [for (final e in linux!) e.encode()],
    if (windows != null) 'windows': [for (final e in windows!) e.encode()],
  };
}

/// `reboot` — derived from the provider schema description.
extension type const MaintenanceConfigurationReboot._(TfArg<String> _)
    implements TfArg<String> {
  MaintenanceConfigurationReboot.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceConfigurationReboot.expression(String template)
    : this._(TfArg.expression(template));
  const MaintenanceConfigurationReboot.arg(TfArg<String> arg) : this._(arg);

  static const always = MaintenanceConfigurationReboot._(
    TfArgLiteral('Always'),
  );
  static const ifrequired = MaintenanceConfigurationReboot._(
    TfArgLiteral('IfRequired'),
  );
  static const never = MaintenanceConfigurationReboot._(TfArgLiteral('Never'));

  static const List<MaintenanceConfigurationReboot> values = [
    always,
    ifrequired,
    never,
  ];
}

/// Typed helper for the `install_patches.linux` block of
/// `azurerm_maintenance_configuration` (derived from provider schema).
@immutable
final class MaintenanceConfigurationLinux {
  const MaintenanceConfigurationLinux({
    this.classificationsToInclude,
    this.packageNamesMaskToExclude,
    this.packageNamesMaskToInclude,
  });

  final List<MaintenanceConfigurationLinuxClassificationsToInclude>?
  classificationsToInclude;

  final TfArg<List<String>>? packageNamesMaskToExclude;

  final TfArg<List<String>>? packageNamesMaskToInclude;

  @internal
  Map<String, Object?> encode() => {
    if (classificationsToInclude != null)
      'classifications_to_include': [
        for (final e in classificationsToInclude!) e.toTfJson(),
      ],
    'package_names_mask_to_exclude': ?packageNamesMaskToExclude?.toTfJson(),
    'package_names_mask_to_include': ?packageNamesMaskToInclude?.toTfJson(),
  };
}

/// `classifications_to_include` — derived from the provider schema description.
extension type const MaintenanceConfigurationLinuxClassificationsToInclude._(
  TfArg<String> _
) implements TfArg<String> {
  MaintenanceConfigurationLinuxClassificationsToInclude.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceConfigurationLinuxClassificationsToInclude.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MaintenanceConfigurationLinuxClassificationsToInclude.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const critical =
      MaintenanceConfigurationLinuxClassificationsToInclude._(
        TfArgLiteral('Critical'),
      );
  static const security =
      MaintenanceConfigurationLinuxClassificationsToInclude._(
        TfArgLiteral('Security'),
      );
  static const other = MaintenanceConfigurationLinuxClassificationsToInclude._(
    TfArgLiteral('Other'),
  );

  static const List<MaintenanceConfigurationLinuxClassificationsToInclude>
  values = [critical, security, other];
}

/// Typed helper for the `install_patches.windows` block of
/// `azurerm_maintenance_configuration` (derived from provider schema).
@immutable
final class MaintenanceConfigurationWindows {
  const MaintenanceConfigurationWindows({
    this.classificationsToInclude,
    this.kbNumbersToExclude,
    this.kbNumbersToInclude,
  });

  final List<MaintenanceConfigurationWindowsClassificationsToInclude>?
  classificationsToInclude;

  final TfArg<List<String>>? kbNumbersToExclude;

  final TfArg<List<String>>? kbNumbersToInclude;

  @internal
  Map<String, Object?> encode() => {
    if (classificationsToInclude != null)
      'classifications_to_include': [
        for (final e in classificationsToInclude!) e.toTfJson(),
      ],
    'kb_numbers_to_exclude': ?kbNumbersToExclude?.toTfJson(),
    'kb_numbers_to_include': ?kbNumbersToInclude?.toTfJson(),
  };
}

/// `classifications_to_include` — derived from the provider schema description.
extension type const MaintenanceConfigurationWindowsClassificationsToInclude._(
  TfArg<String> _
) implements TfArg<String> {
  MaintenanceConfigurationWindowsClassificationsToInclude.variable(String name)
    : this._(TfArg.variable(name));
  MaintenanceConfigurationWindowsClassificationsToInclude.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MaintenanceConfigurationWindowsClassificationsToInclude.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const critical =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('Critical'),
      );
  static const security =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('Security'),
      );
  static const updaterollup =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('UpdateRollup'),
      );
  static const featurepack =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('FeaturePack'),
      );
  static const servicepack =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('ServicePack'),
      );
  static const definition =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('Definition'),
      );
  static const tools =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('Tools'),
      );
  static const updates =
      MaintenanceConfigurationWindowsClassificationsToInclude._(
        TfArgLiteral('Updates'),
      );

  static const List<MaintenanceConfigurationWindowsClassificationsToInclude>
  values = [
    critical,
    security,
    updaterollup,
    featurepack,
    servicepack,
    definition,
    tools,
    updates,
  ];
}

/// Typed helper for the `window` block of
/// `azurerm_maintenance_configuration` (derived from provider schema).
@immutable
final class MaintenanceConfigurationWindow {
  const MaintenanceConfigurationWindow({
    this.duration,
    this.expirationDateTime,
    this.recurEvery,
    required this.startDateTime,
    required this.timeZone,
  });

  final TfArg<String>? duration;

  final TfArg<String>? expirationDateTime;

  final TfArg<String>? recurEvery;

  final TfArg<String> startDateTime;

  final TfArg<String> timeZone;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.toTfJson(),
    'expiration_date_time': ?expirationDateTime?.toTfJson(),
    'recur_every': ?recurEvery?.toTfJson(),
    'start_date_time': startDateTime.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_maintenance_configuration`.
final class AzurermMaintenanceConfiguration extends Resource {
  static const String tfType = 'azurerm_maintenance_configuration';

  AzurermMaintenanceConfiguration(
    super.localName, {
    MaintenanceConfigurationInGuestUserPatchMode? inGuestUserPatchMode,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? properties,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> scope,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? visibility,
    MaintenanceConfigurationInstallPatches? installPatches,
    MaintenanceConfigurationWindow? window,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'in_guest_user_patch_mode': ?inGuestUserPatchMode,
           'location': location,
           'name': name,
           'properties': ?properties,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope': scope,
           'tags': ?tags,
           'visibility': ?visibility,
           if (installPatches != null)
             'install_patches': TfArg.literal(installPatches.encode()),
           if (window != null) 'window': TfArg.literal(window.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMaintenanceConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMaintenanceConfiguration>`.
  RefTo<AzurermMaintenanceConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `in_guest_user_patch_mode` attribute.
  TfRef<String> get inGuestUserPatchMode =>
      TfRef.attribute<String>(this, 'in_guest_user_patch_mode');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get properties =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}

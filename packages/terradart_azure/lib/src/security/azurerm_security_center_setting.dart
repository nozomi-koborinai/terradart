// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_setting`.
const Set<String> _azurermSecurityCenterSettingSensitive = <String>{};

/// Factory wrapper for `azurerm_security_center_setting`.
final class AzurermSecurityCenterSetting extends Resource {
  static const String tfType = 'azurerm_security_center_setting';

  AzurermSecurityCenterSetting(
    super.localName, {
    required TfArg<bool> enabled,
    required TfArg<String> settingName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': enabled, 'setting_name': settingName},
       );

  @override
  Set<String> get sensitiveFields => _azurermSecurityCenterSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterSetting>`.
  RefTo<AzurermSecurityCenterSetting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `setting_name` attribute.
  TfRef<String> get settingName =>
      TfRef.attribute<String>(this, 'setting_name');
}

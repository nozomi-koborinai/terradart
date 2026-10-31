// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_setting`.
const Set<String> _azurermSecurityCenterSettingSensitive = <String>{};

/// Security Center Setting enum for `setting_name`.
extension type const SecurityCenterSettingName._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterSettingName.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterSettingName.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterSettingName.arg(TfArg<String> arg) : this._(arg);

  static const current = SecurityCenterSettingName._(TfArgLiteral('current'));
  static const mcas = SecurityCenterSettingName._(TfArgLiteral('MCAS'));
  static const sentinel = SecurityCenterSettingName._(TfArgLiteral('Sentinel'));
  static const wdatp = SecurityCenterSettingName._(TfArgLiteral('WDATP'));
  static const wdatpExcludeLinuxPublicPreview = SecurityCenterSettingName._(
    TfArgLiteral('WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW'),
  );
  static const wdatpUnifiedSolution = SecurityCenterSettingName._(
    TfArgLiteral('WDATP_UNIFIED_SOLUTION'),
  );

  static const List<SecurityCenterSettingName> values = [
    current,
    mcas,
    sentinel,
    wdatp,
    wdatpExcludeLinuxPublicPreview,
    wdatpUnifiedSolution,
  ];
}

/// Factory wrapper for `azurerm_security_center_setting`.
final class AzurermSecurityCenterSetting extends Resource {
  static const String tfType = 'azurerm_security_center_setting';

  AzurermSecurityCenterSetting(
    super.localName, {
    required TfArg<bool> enabled,
    required SecurityCenterSettingName settingName,
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

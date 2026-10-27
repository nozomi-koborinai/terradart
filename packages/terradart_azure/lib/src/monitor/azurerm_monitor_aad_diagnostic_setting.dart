// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_monitor_aad_diagnostic_setting`.
const Set<String> _azurermMonitorAadDiagnosticSettingSensitive = <String>{};

/// Typed helper for the `enabled_log` block of
/// `azurerm_monitor_aad_diagnostic_setting` (derived from provider schema).
@immutable
final class MonitorAadDiagnosticSettingEnabledLog {
  const MonitorAadDiagnosticSettingEnabledLog({required this.category});

  final TfArg<String> category;

  @internal
  Map<String, Object?> encode() => {'category': category.toTfJson()};
}

/// Factory wrapper for `azurerm_monitor_aad_diagnostic_setting`.
final class AzurermMonitorAadDiagnosticSetting extends Resource {
  static const String tfType = 'azurerm_monitor_aad_diagnostic_setting';

  AzurermMonitorAadDiagnosticSetting(
    super.localName, {
    TfArg<String>? eventhubAuthorizationRuleId,
    TfArg<String>? eventhubName,
    TfArg<String>? logAnalyticsWorkspaceId,
    required TfArg<String> name,
    RefTo<AzurermStorageAccount>? storageAccountId,
    List<MonitorAadDiagnosticSettingEnabledLog>? enabledLog,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_authorization_rule_id': ?eventhubAuthorizationRuleId,
           'eventhub_name': ?eventhubName,
           'log_analytics_workspace_id': ?logAnalyticsWorkspaceId,
           'name': name,
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           if (enabledLog != null)
             'enabled_log': TfArg.literal([
               for (final e in enabledLog) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorAadDiagnosticSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorAadDiagnosticSetting>`.
  RefTo<AzurermMonitorAadDiagnosticSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `eventhub_authorization_rule_id` attribute.
  TfRef<String> get eventhubAuthorizationRuleId =>
      TfRef.attribute<String>(this, 'eventhub_authorization_rule_id');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_monitor_diagnostic_setting`.
const Set<String> _azurermMonitorDiagnosticSettingSensitive = <String>{};

/// Monitor Diagnostic Setting Log Analytics Destination enum for `log_analytics_destination_type`.
extension type const MonitorDiagnosticSettingLogAnalyticsDestinationType._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorDiagnosticSettingLogAnalyticsDestinationType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDiagnosticSettingLogAnalyticsDestinationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorDiagnosticSettingLogAnalyticsDestinationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dedicated =
      MonitorDiagnosticSettingLogAnalyticsDestinationType._(
        TfArgLiteral('Dedicated'),
      );
  static const azurediagnostics =
      MonitorDiagnosticSettingLogAnalyticsDestinationType._(
        TfArgLiteral('AzureDiagnostics'),
      );

  static const List<MonitorDiagnosticSettingLogAnalyticsDestinationType>
  values = [dedicated, azurediagnostics];
}

/// Typed helper for the `enabled_log` block of
/// `azurerm_monitor_diagnostic_setting` (derived from provider schema).
@immutable
final class MonitorDiagnosticSettingEnabledLog {
  const MonitorDiagnosticSettingEnabledLog({this.category, this.categoryGroup});

  final TfArg<String>? category;

  final TfArg<String>? categoryGroup;

  @internal
  Map<String, Object?> encode() => {
    'category': ?category?.toTfJson(),
    'category_group': ?categoryGroup?.toTfJson(),
  };
}

/// Typed helper for the `enabled_metric` block of
/// `azurerm_monitor_diagnostic_setting` (derived from provider schema).
@immutable
final class MonitorDiagnosticSettingEnabledMetric {
  const MonitorDiagnosticSettingEnabledMetric({required this.category});

  final TfArg<String> category;

  @internal
  Map<String, Object?> encode() => {'category': category.toTfJson()};
}

/// Factory wrapper for `azurerm_monitor_diagnostic_setting`.
final class AzurermMonitorDiagnosticSetting extends Resource {
  static const String tfType = 'azurerm_monitor_diagnostic_setting';

  AzurermMonitorDiagnosticSetting(
    super.localName, {
    TfArg<String>? eventhubAuthorizationRuleId,
    TfArg<String>? eventhubName,
    MonitorDiagnosticSettingLogAnalyticsDestinationType?
    logAnalyticsDestinationType,
    TfArg<String>? logAnalyticsWorkspaceId,
    required TfArg<String> name,
    TfArg<String>? partnerSolutionId,
    RefTo<AzurermStorageAccount>? storageAccountId,
    required TfArg<String> targetResourceId,
    List<MonitorDiagnosticSettingEnabledLog>? enabledLog,
    List<MonitorDiagnosticSettingEnabledMetric>? enabledMetric,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_authorization_rule_id': ?eventhubAuthorizationRuleId,
           'eventhub_name': ?eventhubName,
           'log_analytics_destination_type': ?logAnalyticsDestinationType,
           'log_analytics_workspace_id': ?logAnalyticsWorkspaceId,
           'name': name,
           'partner_solution_id': ?partnerSolutionId,
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           'target_resource_id': targetResourceId,
           if (enabledLog != null)
             'enabled_log': TfArg.literal([
               for (final e in enabledLog) e.encode(),
             ]),
           if (enabledMetric != null)
             'enabled_metric': TfArg.literal([
               for (final e in enabledMetric) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorDiagnosticSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorDiagnosticSetting>`.
  RefTo<AzurermMonitorDiagnosticSetting> get ref => RefTo.of(this);

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

  /// Reference to `log_analytics_destination_type` attribute.
  TfRef<String> get logAnalyticsDestinationType =>
      TfRef.attribute<String>(this, 'log_analytics_destination_type');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `partner_solution_id` attribute.
  TfRef<String> get partnerSolutionId =>
      TfRef.attribute<String>(this, 'partner_solution_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}

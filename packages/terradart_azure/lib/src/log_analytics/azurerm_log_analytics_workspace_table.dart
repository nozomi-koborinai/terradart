// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_workspace_table`.
const Set<String> _azurermLogAnalyticsWorkspaceTableSensitive = <String>{};

/// Log Analytics Workspace Table enum for `plan`.
extension type const LogAnalyticsWorkspaceTablePlan._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceTablePlan.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceTablePlan.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceTablePlan.arg(TfArg<String> arg) : this._(arg);

  static const analytics = LogAnalyticsWorkspaceTablePlan._(
    TfArgLiteral('Analytics'),
  );
  static const basic = LogAnalyticsWorkspaceTablePlan._(TfArgLiteral('Basic'));

  static const List<LogAnalyticsWorkspaceTablePlan> values = [analytics, basic];
}

/// Factory wrapper for `azurerm_log_analytics_workspace_table`.
final class AzurermLogAnalyticsWorkspaceTable extends Resource {
  static const String tfType = 'azurerm_log_analytics_workspace_table';

  AzurermLogAnalyticsWorkspaceTable(
    super.localName, {
    required TfArg<String> name,
    LogAnalyticsWorkspaceTablePlan? plan,
    TfArg<num>? retentionInDays,
    TfArg<num>? totalRetentionInDays,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'plan': ?plan,
           'retention_in_days': ?retentionInDays,
           'total_retention_in_days': ?totalRetentionInDays,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsWorkspaceTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsWorkspaceTable>`.
  RefTo<AzurermLogAnalyticsWorkspaceTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `plan` attribute.
  TfRef<String> get plan => TfRef.attribute<String>(this, 'plan');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `total_retention_in_days` attribute.
  TfRef<num> get totalRetentionInDays =>
      TfRef.attribute<num>(this, 'total_retention_in_days');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}

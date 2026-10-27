// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../log_analytics/azurerm_log_analytics_workspace_table.dart';

/// Sensitive field paths for `azurerm_log_analytics_workspace_table`.
const Set<String> _azurermLogAnalyticsWorkspaceTableSensitive = <String>{};

/// Factory wrapper for `azurerm_log_analytics_workspace_table`.
final class DataAzurermLogAnalyticsWorkspaceTable extends Data {
  static const String tfType = 'azurerm_log_analytics_workspace_table';

  DataAzurermLogAnalyticsWorkspaceTable(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'workspace_id': workspaceId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsWorkspaceTableSensitive;

  /// A reference to the `azurerm_log_analytics_workspace_table` this data source reads, for
  /// arguments typed `RefTo<AzurermLogAnalyticsWorkspaceTable>`.
  RefTo<AzurermLogAnalyticsWorkspaceTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

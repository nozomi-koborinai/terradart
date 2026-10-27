// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_linked_storage_account`.
const Set<String> _azurermLogAnalyticsLinkedStorageAccountSensitive =
    <String>{};

/// Log Analytics Linked Storage Account Data Source enum for `data_source_type`.
extension type const LogAnalyticsLinkedStorageAccountDataSourceType._(
  TfArg<String> _
) implements TfArg<String> {
  LogAnalyticsLinkedStorageAccountDataSourceType.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsLinkedStorageAccountDataSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsLinkedStorageAccountDataSourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const alerts = LogAnalyticsLinkedStorageAccountDataSourceType._(
    TfArgLiteral('Alerts'),
  );
  static const azurewatson = LogAnalyticsLinkedStorageAccountDataSourceType._(
    TfArgLiteral('AzureWatson'),
  );
  static const customlogs = LogAnalyticsLinkedStorageAccountDataSourceType._(
    TfArgLiteral('CustomLogs'),
  );
  static const ingestion = LogAnalyticsLinkedStorageAccountDataSourceType._(
    TfArgLiteral('Ingestion'),
  );
  static const query = LogAnalyticsLinkedStorageAccountDataSourceType._(
    TfArgLiteral('Query'),
  );

  static const List<LogAnalyticsLinkedStorageAccountDataSourceType> values = [
    alerts,
    azurewatson,
    customlogs,
    ingestion,
    query,
  ];
}

/// Factory wrapper for `azurerm_log_analytics_linked_storage_account`.
final class AzurermLogAnalyticsLinkedStorageAccount extends Resource {
  static const String tfType = 'azurerm_log_analytics_linked_storage_account';

  AzurermLogAnalyticsLinkedStorageAccount(
    super.localName, {
    required LogAnalyticsLinkedStorageAccountDataSourceType dataSourceType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> storageAccountIds,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_source_type': dataSourceType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_ids': storageAccountIds,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsLinkedStorageAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsLinkedStorageAccount>`.
  RefTo<AzurermLogAnalyticsLinkedStorageAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_source_type` attribute.
  TfRef<String> get dataSourceType =>
      TfRef.attribute<String>(this, 'data_source_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_ids` attribute.
  TfRef<List<String>> get storageAccountIds =>
      TfRef.attribute<List<String>>(this, 'storage_account_ids');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}

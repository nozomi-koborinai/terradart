// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../log_analytics/azurerm_log_analytics_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_workspace`.
const Set<String> _azurermLogAnalyticsWorkspaceSensitive = <String>{
  'primary_shared_key',
  'secondary_shared_key',
};

/// Factory wrapper for `azurerm_log_analytics_workspace`.
final class DataAzurermLogAnalyticsWorkspace extends Data {
  static const String tfType = 'azurerm_log_analytics_workspace';

  DataAzurermLogAnalyticsWorkspace(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogAnalyticsWorkspaceSensitive;

  /// A reference to the `azurerm_log_analytics_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermLogAnalyticsWorkspace>`.
  RefTo<AzurermLogAnalyticsWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `daily_quota_gb` attribute.
  TfRef<num> get dailyQuotaGb => TfRef.attribute<num>(this, 'daily_quota_gb');

  /// Reference to `internet_ingestion_access_type` attribute.
  TfRef<String> get internetIngestionAccessType =>
      TfRef.attribute<String>(this, 'internet_ingestion_access_type');

  /// Reference to `internet_query_access_type` attribute.
  TfRef<String> get internetQueryAccessType =>
      TfRef.attribute<String>(this, 'internet_query_access_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_shared_key` attribute.
  TfRef<String> get primarySharedKey =>
      TfRef.attribute<String>(this, 'primary_shared_key');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `secondary_shared_key` attribute.
  TfRef<String> get secondarySharedKey =>
      TfRef.attribute<String>(this, 'secondary_shared_key');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

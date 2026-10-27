// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_server_microsoft_support_auditing_policy`.
const Set<String> _azurermMssqlServerMicrosoftSupportAuditingPolicySensitive =
    <String>{'storage_account_access_key', 'storage_account_subscription_id'};

/// Factory wrapper for `azurerm_mssql_server_microsoft_support_auditing_policy`.
final class AzurermMssqlServerMicrosoftSupportAuditingPolicy extends Resource {
  static const String tfType =
      'azurerm_mssql_server_microsoft_support_auditing_policy';

  AzurermMssqlServerMicrosoftSupportAuditingPolicy(
    super.localName, {
    TfArg<String>? blobStorageEndpoint,
    TfArg<bool>? enabled,
    TfArg<bool>? logMonitoringEnabled,
    required TfArg<String> serverId,
    Sensitive<String>? storageAccountAccessKey,
    Sensitive<String>? storageAccountSubscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blob_storage_endpoint': ?blobStorageEndpoint,
           'enabled': ?enabled,
           'log_monitoring_enabled': ?logMonitoringEnabled,
           'server_id': serverId,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_account_subscription_id': ?storageAccountSubscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlServerMicrosoftSupportAuditingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlServerMicrosoftSupportAuditingPolicy>`.
  RefTo<AzurermMssqlServerMicrosoftSupportAuditingPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_storage_endpoint` attribute.
  TfRef<String> get blobStorageEndpoint =>
      TfRef.attribute<String>(this, 'blob_storage_endpoint');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_monitoring_enabled` attribute.
  TfRef<bool> get logMonitoringEnabled =>
      TfRef.attribute<bool>(this, 'log_monitoring_enabled');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_subscription_id` attribute.
  TfRef<String> get storageAccountSubscriptionId =>
      TfRef.attribute<String>(this, 'storage_account_subscription_id');
}

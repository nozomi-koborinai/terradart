// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_database_extended_auditing_policy`.
const Set<String> _azurermMssqlDatabaseExtendedAuditingPolicySensitive =
    <String>{'storage_account_access_key'};

/// Factory wrapper for `azurerm_mssql_database_extended_auditing_policy`.
final class AzurermMssqlDatabaseExtendedAuditingPolicy extends Resource {
  static const String tfType =
      'azurerm_mssql_database_extended_auditing_policy';

  AzurermMssqlDatabaseExtendedAuditingPolicy(
    super.localName, {
    TfArg<String>? blobStorageEndpoint,
    required TfArg<String> databaseId,
    TfArg<bool>? enabled,
    TfArg<bool>? logMonitoringEnabled,
    TfArg<num>? retentionInDays,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<bool>? storageAccountAccessKeyIsSecondary,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blob_storage_endpoint': ?blobStorageEndpoint,
           'database_id': databaseId,
           'enabled': ?enabled,
           'log_monitoring_enabled': ?logMonitoringEnabled,
           'retention_in_days': ?retentionInDays,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_account_access_key_is_secondary':
               ?storageAccountAccessKeyIsSecondary,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlDatabaseExtendedAuditingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlDatabaseExtendedAuditingPolicy>`.
  RefTo<AzurermMssqlDatabaseExtendedAuditingPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_storage_endpoint` attribute.
  TfRef<String> get blobStorageEndpoint =>
      TfRef.attribute<String>(this, 'blob_storage_endpoint');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_monitoring_enabled` attribute.
  TfRef<bool> get logMonitoringEnabled =>
      TfRef.attribute<bool>(this, 'log_monitoring_enabled');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_access_key_is_secondary` attribute.
  TfRef<bool> get storageAccountAccessKeyIsSecondary =>
      TfRef.attribute<bool>(this, 'storage_account_access_key_is_secondary');
}

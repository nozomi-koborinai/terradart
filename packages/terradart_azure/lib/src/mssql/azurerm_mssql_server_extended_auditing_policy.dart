// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_server_extended_auditing_policy`.
const Set<String> _azurermMssqlServerExtendedAuditingPolicySensitive = <String>{
  'storage_account_access_key',
  'storage_account_subscription_id',
};

/// Factory wrapper for `azurerm_mssql_server_extended_auditing_policy`.
final class AzurermMssqlServerExtendedAuditingPolicy extends Resource {
  static const String tfType = 'azurerm_mssql_server_extended_auditing_policy';

  AzurermMssqlServerExtendedAuditingPolicy(
    super.localName, {
    TfArg<List<String>>? auditActionsAndGroups,
    TfArg<String>? blobStorageEndpoint,
    TfArg<bool>? enabled,
    TfArg<bool>? logMonitoringEnabled,
    TfArg<String>? predicateExpression,
    TfArg<num>? retentionInDays,
    required TfArg<String> serverId,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<bool>? storageAccountAccessKeyIsSecondary,
    Sensitive<String>? storageAccountSubscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audit_actions_and_groups': ?auditActionsAndGroups,
           'blob_storage_endpoint': ?blobStorageEndpoint,
           'enabled': ?enabled,
           'log_monitoring_enabled': ?logMonitoringEnabled,
           'predicate_expression': ?predicateExpression,
           'retention_in_days': ?retentionInDays,
           'server_id': serverId,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_account_access_key_is_secondary':
               ?storageAccountAccessKeyIsSecondary,
           'storage_account_subscription_id': ?storageAccountSubscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlServerExtendedAuditingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlServerExtendedAuditingPolicy>`.
  RefTo<AzurermMssqlServerExtendedAuditingPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `audit_actions_and_groups` attribute.
  TfRef<List<String>> get auditActionsAndGroups =>
      TfRef.attribute<List<String>>(this, 'audit_actions_and_groups');

  /// Reference to `blob_storage_endpoint` attribute.
  TfRef<String> get blobStorageEndpoint =>
      TfRef.attribute<String>(this, 'blob_storage_endpoint');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_monitoring_enabled` attribute.
  TfRef<bool> get logMonitoringEnabled =>
      TfRef.attribute<bool>(this, 'log_monitoring_enabled');

  /// Reference to `predicate_expression` attribute.
  TfRef<String> get predicateExpression =>
      TfRef.attribute<String>(this, 'predicate_expression');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_access_key_is_secondary` attribute.
  TfRef<bool> get storageAccountAccessKeyIsSecondary =>
      TfRef.attribute<bool>(this, 'storage_account_access_key_is_secondary');

  /// Reference to `storage_account_subscription_id` attribute.
  TfRef<String> get storageAccountSubscriptionId =>
      TfRef.attribute<String>(this, 'storage_account_subscription_id');
}

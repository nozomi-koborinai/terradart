// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_cluster_customer_managed_key`.
const Set<String> _azurermLogAnalyticsClusterCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_log_analytics_cluster_customer_managed_key`.
final class AzurermLogAnalyticsClusterCustomerManagedKey extends Resource {
  static const String tfType =
      'azurerm_log_analytics_cluster_customer_managed_key';

  AzurermLogAnalyticsClusterCustomerManagedKey(
    super.localName, {
    required TfArg<String> keyVaultKeyId,
    required TfArg<String> logAnalyticsClusterId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_key_id': keyVaultKeyId,
           'log_analytics_cluster_id': logAnalyticsClusterId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsClusterCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsClusterCustomerManagedKey>`.
  RefTo<AzurermLogAnalyticsClusterCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `log_analytics_cluster_id` attribute.
  TfRef<String> get logAnalyticsClusterId =>
      TfRef.attribute<String>(this, 'log_analytics_cluster_id');
}

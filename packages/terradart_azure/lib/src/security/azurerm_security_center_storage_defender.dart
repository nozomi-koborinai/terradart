// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_security_center_storage_defender`.
const Set<String> _azurermSecurityCenterStorageDefenderSensitive = <String>{};

/// Factory wrapper for `azurerm_security_center_storage_defender`.
final class AzurermSecurityCenterStorageDefender extends Resource {
  static const String tfType = 'azurerm_security_center_storage_defender';

  AzurermSecurityCenterStorageDefender(
    super.localName, {
    TfArg<num>? malwareScanningOnUploadCapGbPerMonth,
    TfArg<bool>? malwareScanningOnUploadEnabled,
    TfArg<bool>? overrideSubscriptionSettingsEnabled,
    TfArg<String>? scanResultsEventGridTopicId,
    TfArg<bool>? sensitiveDataDiscoveryEnabled,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'malware_scanning_on_upload_cap_gb_per_month':
               ?malwareScanningOnUploadCapGbPerMonth,
           'malware_scanning_on_upload_enabled':
               ?malwareScanningOnUploadEnabled,
           'override_subscription_settings_enabled':
               ?overrideSubscriptionSettingsEnabled,
           'scan_results_event_grid_topic_id': ?scanResultsEventGridTopicId,
           'sensitive_data_discovery_enabled': ?sensitiveDataDiscoveryEnabled,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSecurityCenterStorageDefenderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterStorageDefender>`.
  RefTo<AzurermSecurityCenterStorageDefender> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `malware_scanning_on_upload_cap_gb_per_month` attribute.
  TfRef<num> get malwareScanningOnUploadCapGbPerMonth =>
      TfRef.attribute<num>(this, 'malware_scanning_on_upload_cap_gb_per_month');

  /// Reference to `malware_scanning_on_upload_enabled` attribute.
  TfRef<bool> get malwareScanningOnUploadEnabled =>
      TfRef.attribute<bool>(this, 'malware_scanning_on_upload_enabled');

  /// Reference to `override_subscription_settings_enabled` attribute.
  TfRef<bool> get overrideSubscriptionSettingsEnabled =>
      TfRef.attribute<bool>(this, 'override_subscription_settings_enabled');

  /// Reference to `scan_results_event_grid_topic_id` attribute.
  TfRef<String> get scanResultsEventGridTopicId =>
      TfRef.attribute<String>(this, 'scan_results_event_grid_topic_id');

  /// Reference to `sensitive_data_discovery_enabled` attribute.
  TfRef<bool> get sensitiveDataDiscoveryEnabled =>
      TfRef.attribute<bool>(this, 'sensitive_data_discovery_enabled');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}

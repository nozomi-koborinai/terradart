// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_stream_analytics_job_storage_account`.
const Set<String> _azurermStreamAnalyticsJobStorageAccountSensitive = <String>{
  'storage_account_key',
};

/// Factory wrapper for `azurerm_stream_analytics_job_storage_account`.
final class AzurermStreamAnalyticsJobStorageAccount extends Resource {
  static const String tfType = 'azurerm_stream_analytics_job_storage_account';

  AzurermStreamAnalyticsJobStorageAccount(
    super.localName, {
    required TfArg<String> authenticationMode,
    Sensitive<String>? storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    required TfArg<String> streamAnalyticsJobId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': authenticationMode,
           'storage_account_key': ?storageAccountKey,
           'storage_account_name': storageAccountName.encodeAs('name'),
           'stream_analytics_job_id': streamAnalyticsJobId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsJobStorageAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsJobStorageAccount>`.
  RefTo<AzurermStreamAnalyticsJobStorageAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');
}

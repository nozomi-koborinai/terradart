// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_mover_target_endpoint`.
const Set<String> _azurermStorageMoverTargetEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_mover_target_endpoint`.
final class AzurermStorageMoverTargetEndpoint extends Resource {
  static const String tfType = 'azurerm_storage_mover_target_endpoint';

  AzurermStorageMoverTargetEndpoint(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required TfArg<String> storageContainerName,
    required TfArg<String> storageMoverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'storage_container_name': storageContainerName,
           'storage_mover_id': storageMoverId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageMoverTargetEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageMoverTargetEndpoint>`.
  RefTo<AzurermStorageMoverTargetEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_container_name` attribute.
  TfRef<String> get storageContainerName =>
      TfRef.attribute<String>(this, 'storage_container_name');

  /// Reference to `storage_mover_id` attribute.
  TfRef<String> get storageMoverId =>
      TfRef.attribute<String>(this, 'storage_mover_id');
}

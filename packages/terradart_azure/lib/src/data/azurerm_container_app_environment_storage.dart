// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_app/azurerm_container_app_environment_storage.dart';

/// Sensitive field paths for `azurerm_container_app_environment_storage`.
const Set<String> _azurermContainerAppEnvironmentStorageSensitive = <String>{};

/// Factory wrapper for `azurerm_container_app_environment_storage`.
final class DataAzurermContainerAppEnvironmentStorage extends Data {
  static const String tfType = 'azurerm_container_app_environment_storage';

  DataAzurermContainerAppEnvironmentStorage(
    super.localName, {
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_app_environment_id': containerAppEnvironmentId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentStorageSensitive;

  /// A reference to the `azurerm_container_app_environment_storage` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerAppEnvironmentStorage>`.
  RefTo<AzurermContainerAppEnvironmentStorage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessMode => TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `nfs_server_url` attribute.
  TfRef<String> get nfsServerUrl =>
      TfRef.attribute<String>(this, 'nfs_server_url');

  /// Reference to `share_name` attribute.
  TfRef<String> get shareName => TfRef.attribute<String>(this, 'share_name');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_sync_server_endpoint`.
const Set<String> _azurermStorageSyncServerEndpointSensitive = <String>{};

/// Storage Sync Server Endpoint Initial Download enum for `initial_download_policy`.
extension type const StorageSyncServerEndpointInitialDownloadPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  StorageSyncServerEndpointInitialDownloadPolicy.variable(String name)
    : this._(TfArg.variable(name));
  StorageSyncServerEndpointInitialDownloadPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const StorageSyncServerEndpointInitialDownloadPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const avoidtieredfiles =
      StorageSyncServerEndpointInitialDownloadPolicy._(
        TfArgLiteral('AvoidTieredFiles'),
      );
  static const namespaceonly = StorageSyncServerEndpointInitialDownloadPolicy._(
    TfArgLiteral('NamespaceOnly'),
  );
  static const namespacethenmodifiedfiles =
      StorageSyncServerEndpointInitialDownloadPolicy._(
        TfArgLiteral('NamespaceThenModifiedFiles'),
      );

  static const List<StorageSyncServerEndpointInitialDownloadPolicy> values = [
    avoidtieredfiles,
    namespaceonly,
    namespacethenmodifiedfiles,
  ];
}

/// Storage Sync Server Endpoint Local Cache enum for `local_cache_mode`.
extension type const StorageSyncServerEndpointLocalCacheMode._(TfArg<String> _)
    implements TfArg<String> {
  StorageSyncServerEndpointLocalCacheMode.variable(String name)
    : this._(TfArg.variable(name));
  StorageSyncServerEndpointLocalCacheMode.expression(String template)
    : this._(TfArg.expression(template));
  const StorageSyncServerEndpointLocalCacheMode.arg(TfArg<String> arg)
    : this._(arg);

  static const downloadnewandmodifiedfiles =
      StorageSyncServerEndpointLocalCacheMode._(
        TfArgLiteral('DownloadNewAndModifiedFiles'),
      );
  static const updatelocallycachedfiles =
      StorageSyncServerEndpointLocalCacheMode._(
        TfArgLiteral('UpdateLocallyCachedFiles'),
      );

  static const List<StorageSyncServerEndpointLocalCacheMode> values = [
    downloadnewandmodifiedfiles,
    updatelocallycachedfiles,
  ];
}

/// Factory wrapper for `azurerm_storage_sync_server_endpoint`.
final class AzurermStorageSyncServerEndpoint extends Resource {
  static const String tfType = 'azurerm_storage_sync_server_endpoint';

  AzurermStorageSyncServerEndpoint(
    super.localName, {
    TfArg<bool>? cloudTieringEnabled,
    StorageSyncServerEndpointInitialDownloadPolicy? initialDownloadPolicy,
    StorageSyncServerEndpointLocalCacheMode? localCacheMode,
    required TfArg<String> name,
    required TfArg<String> registeredServerId,
    required TfArg<String> serverLocalPath,
    required TfArg<String> storageSyncGroupId,
    TfArg<num>? tierFilesOlderThanDays,
    TfArg<num>? volumeFreeSpacePercent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_tiering_enabled': ?cloudTieringEnabled,
           'initial_download_policy': ?initialDownloadPolicy,
           'local_cache_mode': ?localCacheMode,
           'name': name,
           'registered_server_id': registeredServerId,
           'server_local_path': serverLocalPath,
           'storage_sync_group_id': storageSyncGroupId,
           'tier_files_older_than_days': ?tierFilesOlderThanDays,
           'volume_free_space_percent': ?volumeFreeSpacePercent,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageSyncServerEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageSyncServerEndpoint>`.
  RefTo<AzurermStorageSyncServerEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_tiering_enabled` attribute.
  TfRef<bool> get cloudTieringEnabled =>
      TfRef.attribute<bool>(this, 'cloud_tiering_enabled');

  /// Reference to `initial_download_policy` attribute.
  TfRef<String> get initialDownloadPolicy =>
      TfRef.attribute<String>(this, 'initial_download_policy');

  /// Reference to `local_cache_mode` attribute.
  TfRef<String> get localCacheMode =>
      TfRef.attribute<String>(this, 'local_cache_mode');

  /// Reference to `registered_server_id` attribute.
  TfRef<String> get registeredServerId =>
      TfRef.attribute<String>(this, 'registered_server_id');

  /// Reference to `server_local_path` attribute.
  TfRef<String> get serverLocalPath =>
      TfRef.attribute<String>(this, 'server_local_path');

  /// Reference to `storage_sync_group_id` attribute.
  TfRef<String> get storageSyncGroupId =>
      TfRef.attribute<String>(this, 'storage_sync_group_id');

  /// Reference to `tier_files_older_than_days` attribute.
  TfRef<num> get tierFilesOlderThanDays =>
      TfRef.attribute<num>(this, 'tier_files_older_than_days');

  /// Reference to `volume_free_space_percent` attribute.
  TfRef<num> get volumeFreeSpacePercent =>
      TfRef.attribute<num>(this, 'volume_free_space_percent');
}

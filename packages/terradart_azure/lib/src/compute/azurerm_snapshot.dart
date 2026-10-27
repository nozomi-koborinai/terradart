// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_snapshot`.
const Set<String> _azurermSnapshotSensitive = <String>{};

/// Typed helper for the `encryption_settings` block of
/// `azurerm_snapshot` (derived from provider schema).
@immutable
final class SnapshotEncryptionSettings {
  const SnapshotEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  final SnapshotDiskEncryptionKey diskEncryptionKey;

  final SnapshotKeyEncryptionKey? keyEncryptionKey;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_key': diskEncryptionKey.encode(),
    'key_encryption_key': ?keyEncryptionKey?.encode(),
  };
}

/// Typed helper for the `encryption_settings.disk_encryption_key` block of
/// `azurerm_snapshot` (derived from provider schema).
@immutable
final class SnapshotDiskEncryptionKey {
  const SnapshotDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> secretUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'secret_url': secretUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Typed helper for the `encryption_settings.key_encryption_key` block of
/// `azurerm_snapshot` (derived from provider schema).
@immutable
final class SnapshotKeyEncryptionKey {
  const SnapshotKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> keyUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'key_url': keyUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_snapshot`.
final class AzurermSnapshot extends Resource {
  static const String tfType = 'azurerm_snapshot';

  AzurermSnapshot(
    super.localName, {
    required TfArg<String> createOption,
    TfArg<String>? diskAccessId,
    TfArg<num>? diskSizeGb,
    TfArg<bool>? incrementalEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? networkAccessPolicy,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sourceResourceId,
    TfArg<String>? sourceUri,
    RefTo<AzurermStorageAccount>? storageAccountId,
    TfArg<Map<String, String>>? tags,
    SnapshotEncryptionSettings? encryptionSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_option': createOption,
           'disk_access_id': ?diskAccessId,
           'disk_size_gb': ?diskSizeGb,
           'incremental_enabled': ?incrementalEnabled,
           'location': location,
           'name': name,
           'network_access_policy': ?networkAccessPolicy,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_resource_id': ?sourceResourceId,
           'source_uri': ?sourceUri,
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           'tags': ?tags,
           if (encryptionSettings != null)
             'encryption_settings': TfArg.literal(encryptionSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSnapshot>`.
  RefTo<AzurermSnapshot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `trusted_launch_enabled` attribute.
  TfRef<bool> get trustedLaunchEnabled =>
      TfRef.attribute<bool>(this, 'trusted_launch_enabled');

  /// Reference to `create_option` attribute.
  TfRef<String> get createOption =>
      TfRef.attribute<String>(this, 'create_option');

  /// Reference to `disk_access_id` attribute.
  TfRef<String> get diskAccessId =>
      TfRef.attribute<String>(this, 'disk_access_id');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `incremental_enabled` attribute.
  TfRef<bool> get incrementalEnabled =>
      TfRef.attribute<bool>(this, 'incremental_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_access_policy` attribute.
  TfRef<String> get networkAccessPolicy =>
      TfRef.attribute<String>(this, 'network_access_policy');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

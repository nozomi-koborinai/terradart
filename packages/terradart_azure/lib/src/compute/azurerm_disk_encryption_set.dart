// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_disk_encryption_set`.
const Set<String> _azurermDiskEncryptionSetSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_disk_encryption_set` (derived from provider schema).
@immutable
final class DiskEncryptionSetIdentity {
  const DiskEncryptionSetIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_disk_encryption_set`.
final class AzurermDiskEncryptionSet extends Resource {
  static const String tfType = 'azurerm_disk_encryption_set';

  AzurermDiskEncryptionSet(
    super.localName, {
    TfArg<bool>? autoKeyRotationEnabled,
    TfArg<String>? encryptionType,
    TfArg<String>? federatedClientId,
    required TfArg<String> keyVaultKeyId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required DiskEncryptionSetIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_key_rotation_enabled': ?autoKeyRotationEnabled,
           'encryption_type': ?encryptionType,
           'federated_client_id': ?federatedClientId,
           'key_vault_key_id': keyVaultKeyId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDiskEncryptionSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDiskEncryptionSet>`.
  RefTo<AzurermDiskEncryptionSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_key_url` attribute.
  TfRef<String> get keyVaultKeyUrl =>
      TfRef.attribute<String>(this, 'key_vault_key_url');

  /// Reference to `auto_key_rotation_enabled` attribute.
  TfRef<bool> get autoKeyRotationEnabled =>
      TfRef.attribute<bool>(this, 'auto_key_rotation_enabled');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `federated_client_id` attribute.
  TfRef<String> get federatedClientId =>
      TfRef.attribute<String>(this, 'federated_client_id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

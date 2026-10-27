// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_data_lake_gen2_filesystem`.
const Set<String> _azurermStorageDataLakeGen2FilesystemSensitive = <String>{};

/// Typed helper for the `ace` block of
/// `azurerm_storage_data_lake_gen2_filesystem` (derived from provider schema).
@immutable
final class StorageDataLakeGen2FilesystemAce {
  const StorageDataLakeGen2FilesystemAce({
    this.id,
    required this.permissions,
    this.scope,
    required this.type,
  });

  final TfArg<String>? id;

  final TfArg<String> permissions;

  final StorageDataLakeGen2FilesystemScope? scope;

  final StorageDataLakeGen2FilesystemType type;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'permissions': permissions.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
extension type const StorageDataLakeGen2FilesystemScope._(TfArg<String> _)
    implements TfArg<String> {
  StorageDataLakeGen2FilesystemScope.variable(String name)
    : this._(TfArg.variable(name));
  StorageDataLakeGen2FilesystemScope.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDataLakeGen2FilesystemScope.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = StorageDataLakeGen2FilesystemScope._(
    TfArgLiteral('default'),
  );
  static const access = StorageDataLakeGen2FilesystemScope._(
    TfArgLiteral('access'),
  );

  static const List<StorageDataLakeGen2FilesystemScope> values = [
    defaultCase,
    access,
  ];
}

/// `type` — derived from the provider schema description.
extension type const StorageDataLakeGen2FilesystemType._(TfArg<String> _)
    implements TfArg<String> {
  StorageDataLakeGen2FilesystemType.variable(String name)
    : this._(TfArg.variable(name));
  StorageDataLakeGen2FilesystemType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDataLakeGen2FilesystemType.arg(TfArg<String> arg) : this._(arg);

  static const user = StorageDataLakeGen2FilesystemType._(TfArgLiteral('user'));
  static const group = StorageDataLakeGen2FilesystemType._(
    TfArgLiteral('group'),
  );
  static const mask = StorageDataLakeGen2FilesystemType._(TfArgLiteral('mask'));
  static const other = StorageDataLakeGen2FilesystemType._(
    TfArgLiteral('other'),
  );

  static const List<StorageDataLakeGen2FilesystemType> values = [
    user,
    group,
    mask,
    other,
  ];
}

/// Factory wrapper for `azurerm_storage_data_lake_gen2_filesystem`.
final class AzurermStorageDataLakeGen2Filesystem extends Resource {
  static const String tfType = 'azurerm_storage_data_lake_gen2_filesystem';

  AzurermStorageDataLakeGen2Filesystem(
    super.localName, {
    TfArg<String>? defaultEncryptionScope,
    TfArg<String>? group,
    required TfArg<String> name,
    TfArg<String>? owner,
    TfArg<Map<String, String>>? properties,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageDataLakeGen2FilesystemAce>? ace,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_encryption_scope': ?defaultEncryptionScope,
           'group': ?group,
           'name': name,
           'owner': ?owner,
           'properties': ?properties,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (ace != null)
             'ace': TfArg.literal([for (final e in ace) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageDataLakeGen2FilesystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageDataLakeGen2Filesystem>`.
  RefTo<AzurermStorageDataLakeGen2Filesystem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_encryption_scope` attribute.
  TfRef<String> get defaultEncryptionScope =>
      TfRef.attribute<String>(this, 'default_encryption_scope');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get properties =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}

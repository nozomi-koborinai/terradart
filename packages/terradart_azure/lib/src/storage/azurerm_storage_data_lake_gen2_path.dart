// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_data_lake_gen2_path`.
const Set<String> _azurermStorageDataLakeGen2PathSensitive = <String>{};

/// Typed helper for the `ace` block of
/// `azurerm_storage_data_lake_gen2_path` (derived from provider schema).
@immutable
final class StorageDataLakeGen2PathAce {
  const StorageDataLakeGen2PathAce({
    this.id,
    required this.permissions,
    this.scope,
    required this.type,
  });

  final TfArg<String>? id;

  final TfArg<String> permissions;

  final StorageDataLakeGen2PathScope? scope;

  final StorageDataLakeGen2PathType type;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'permissions': permissions.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
extension type const StorageDataLakeGen2PathScope._(TfArg<String> _)
    implements TfArg<String> {
  StorageDataLakeGen2PathScope.variable(String name)
    : this._(TfArg.variable(name));
  StorageDataLakeGen2PathScope.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDataLakeGen2PathScope.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = StorageDataLakeGen2PathScope._(
    TfArgLiteral('default'),
  );
  static const access = StorageDataLakeGen2PathScope._(TfArgLiteral('access'));

  static const List<StorageDataLakeGen2PathScope> values = [
    defaultCase,
    access,
  ];
}

/// `type` — derived from the provider schema description.
extension type const StorageDataLakeGen2PathType._(TfArg<String> _)
    implements TfArg<String> {
  StorageDataLakeGen2PathType.variable(String name)
    : this._(TfArg.variable(name));
  StorageDataLakeGen2PathType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDataLakeGen2PathType.arg(TfArg<String> arg) : this._(arg);

  static const user = StorageDataLakeGen2PathType._(TfArgLiteral('user'));
  static const group = StorageDataLakeGen2PathType._(TfArgLiteral('group'));
  static const mask = StorageDataLakeGen2PathType._(TfArgLiteral('mask'));
  static const other = StorageDataLakeGen2PathType._(TfArgLiteral('other'));

  static const List<StorageDataLakeGen2PathType> values = [
    user,
    group,
    mask,
    other,
  ];
}

/// Factory wrapper for `azurerm_storage_data_lake_gen2_path`.
final class AzurermStorageDataLakeGen2Path extends Resource {
  static const String tfType = 'azurerm_storage_data_lake_gen2_path';

  AzurermStorageDataLakeGen2Path(
    super.localName, {
    required TfArg<String> filesystemName,
    TfArg<String>? group,
    TfArg<String>? owner,
    required TfArg<String> path,
    required TfArg<String> resource,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageDataLakeGen2PathAce>? ace,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filesystem_name': filesystemName,
           'group': ?group,
           'owner': ?owner,
           'path': path,
           'resource': resource,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (ace != null)
             'ace': TfArg.literal([for (final e in ace) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageDataLakeGen2PathSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageDataLakeGen2Path>`.
  RefTo<AzurermStorageDataLakeGen2Path> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `filesystem_name` attribute.
  TfRef<String> get filesystemName =>
      TfRef.attribute<String>(this, 'filesystem_name');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}

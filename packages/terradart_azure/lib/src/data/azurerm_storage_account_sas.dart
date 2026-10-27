// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_account_sas`.
const Set<String> _azurermStorageAccountSasSensitive = <String>{
  'connection_string',
  'sas',
};

/// Typed helper for the `permissions` block of
/// `azurerm_storage_account_sas` (derived from provider schema).
@immutable
final class DataStorageAccountSasPermissions {
  const DataStorageAccountSasPermissions({
    this.add,
    this.create,
    this.delete,
    this.filter,
    this.list,
    this.process,
    this.read,
    this.tag,
    this.update,
    this.write,
  });

  final TfArg<bool>? add;

  final TfArg<bool>? create;

  final TfArg<bool>? delete;

  final TfArg<bool>? filter;

  final TfArg<bool>? list;

  final TfArg<bool>? process;

  final TfArg<bool>? read;

  final TfArg<bool>? tag;

  final TfArg<bool>? update;

  final TfArg<bool>? write;

  @internal
  Map<String, Object?> encode() => {
    'add': ?add?.toTfJson(),
    'create': ?create?.toTfJson(),
    'delete': ?delete?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'list': ?list?.toTfJson(),
    'process': ?process?.toTfJson(),
    'read': ?read?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'update': ?update?.toTfJson(),
    'write': ?write?.toTfJson(),
  };
}

/// Typed helper for the `resource_types` block of
/// `azurerm_storage_account_sas` (derived from provider schema).
@immutable
final class DataStorageAccountSasResourceTypes {
  const DataStorageAccountSasResourceTypes({
    required this.container,
    required this.object,
    required this.service,
  });

  final TfArg<bool> container;

  final TfArg<bool> object;

  final TfArg<bool> service;

  @internal
  Map<String, Object?> encode() => {
    'container': container.toTfJson(),
    'object': object.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `services` block of
/// `azurerm_storage_account_sas` (derived from provider schema).
@immutable
final class DataStorageAccountSasServices {
  const DataStorageAccountSasServices({
    required this.blob,
    required this.file,
    required this.queue,
    required this.table,
  });

  final TfArg<bool> blob;

  final TfArg<bool> file;

  final TfArg<bool> queue;

  final TfArg<bool> table;

  @internal
  Map<String, Object?> encode() => {
    'blob': blob.toTfJson(),
    'file': file.toTfJson(),
    'queue': queue.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_account_sas`.
final class DataAzurermStorageAccountSas extends Data {
  static const String tfType = 'azurerm_storage_account_sas';

  DataAzurermStorageAccountSas(
    super.localName, {
    required Sensitive<String> connectionString,
    required TfArg<String> expiry,
    TfArg<bool>? httpsOnly,
    TfArg<String>? ipAddresses,
    TfArg<String>? signedVersion,
    required TfArg<String> start,
    DataStorageAccountSasPermissions? permissions,
    required DataStorageAccountSasResourceTypes resourceTypes,
    required DataStorageAccountSasServices services,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_string': connectionString,
           'expiry': expiry,
           'https_only': ?httpsOnly,
           'ip_addresses': ?ipAddresses,
           'signed_version': ?signedVersion,
           'start': start,
           if (permissions != null)
             'permissions': TfArg.literal(permissions.encode()),
           'resource_types': TfArg.literal(resourceTypes.encode()),
           'services': TfArg.literal(services.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageAccountSasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `sas` attribute.
  TfRef<String> get sas => TfRef.attribute<String>(this, 'sas');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `expiry` attribute.
  TfRef<String> get expiry => TfRef.attribute<String>(this, 'expiry');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `ip_addresses` attribute.
  TfRef<String> get ipAddresses =>
      TfRef.attribute<String>(this, 'ip_addresses');

  /// Reference to `signed_version` attribute.
  TfRef<String> get signedVersion =>
      TfRef.attribute<String>(this, 'signed_version');

  /// Reference to `start` attribute.
  TfRef<String> get start => TfRef.attribute<String>(this, 'start');
}

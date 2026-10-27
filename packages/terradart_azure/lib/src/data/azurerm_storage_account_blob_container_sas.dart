// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_account_blob_container_sas`.
const Set<String> _azurermStorageAccountBlobContainerSasSensitive = <String>{
  'connection_string',
  'sas',
};

/// Typed helper for the `permissions` block of
/// `azurerm_storage_account_blob_container_sas` (derived from provider schema).
@immutable
final class DataStorageAccountBlobContainerSasPermissions {
  const DataStorageAccountBlobContainerSasPermissions({
    this.add,
    this.create,
    this.delete,
    this.deleteVersion,
    this.execute,
    this.find,
    this.list,
    this.move,
    this.ownership,
    this.permissions,
    this.read,
    this.setImmutabilityPolicy,
    this.tags,
    this.write,
  });

  final TfArg<bool>? add;

  final TfArg<bool>? create;

  final TfArg<bool>? delete;

  final TfArg<bool>? deleteVersion;

  final TfArg<bool>? execute;

  final TfArg<bool>? find;

  final TfArg<bool>? list;

  final TfArg<bool>? move;

  final TfArg<bool>? ownership;

  final TfArg<bool>? permissions;

  final TfArg<bool>? read;

  final TfArg<bool>? setImmutabilityPolicy;

  final TfArg<bool>? tags;

  final TfArg<bool>? write;

  @internal
  Map<String, Object?> encode() => {
    'add': ?add?.toTfJson(),
    'create': ?create?.toTfJson(),
    'delete': ?delete?.toTfJson(),
    'delete_version': ?deleteVersion?.toTfJson(),
    'execute': ?execute?.toTfJson(),
    'find': ?find?.toTfJson(),
    'list': ?list?.toTfJson(),
    'move': ?move?.toTfJson(),
    'ownership': ?ownership?.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
    'read': ?read?.toTfJson(),
    'set_immutability_policy': ?setImmutabilityPolicy?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'write': ?write?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_account_blob_container_sas`.
final class DataAzurermStorageAccountBlobContainerSas extends Data {
  static const String tfType = 'azurerm_storage_account_blob_container_sas';

  DataAzurermStorageAccountBlobContainerSas(
    super.localName, {
    TfArg<String>? cacheControl,
    required Sensitive<String> connectionString,
    required TfArg<String> containerName,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<String>? contentType,
    required TfArg<String> expiry,
    TfArg<bool>? httpsOnly,
    TfArg<String>? ipAddress,
    required TfArg<String> start,
    DataStorageAccountBlobContainerSasPermissions? permissions,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cache_control': ?cacheControl,
           'connection_string': connectionString,
           'container_name': containerName,
           'content_disposition': ?contentDisposition,
           'content_encoding': ?contentEncoding,
           'content_language': ?contentLanguage,
           'content_type': ?contentType,
           'expiry': expiry,
           'https_only': ?httpsOnly,
           'ip_address': ?ipAddress,
           'start': start,
           if (permissions != null)
             'permissions': TfArg.literal(permissions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountBlobContainerSasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `sas` attribute.
  TfRef<String> get sas => TfRef.attribute<String>(this, 'sas');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguage =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `expiry` attribute.
  TfRef<String> get expiry => TfRef.attribute<String>(this, 'expiry');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `start` attribute.
  TfRef<String> get start => TfRef.attribute<String>(this, 'start');
}

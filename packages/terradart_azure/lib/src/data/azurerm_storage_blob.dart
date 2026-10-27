// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_blob.dart';

/// Sensitive field paths for `azurerm_storage_blob`.
const Set<String> _azurermStorageBlobSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_blob`.
final class DataAzurermStorageBlob extends Data {
  static const String tfType = 'azurerm_storage_blob';

  DataAzurermStorageBlob(
    super.localName, {
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required TfArg<String> storageContainerId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': ?metadata,
           'name': name,
           'storage_container_id': storageContainerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageBlobSensitive;

  /// A reference to the `azurerm_storage_blob` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageBlob>`.
  RefTo<AzurermStorageBlob> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_tier` attribute.
  TfRef<String> get accessTier => TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `content_md5` attribute.
  TfRef<String> get contentMd5 => TfRef.attribute<String>(this, 'content_md5');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `encryption_scope` attribute.
  TfRef<String> get encryptionScope =>
      TfRef.attribute<String>(this, 'encryption_scope');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `storage_container_id` attribute.
  TfRef<String> get storageContainerId =>
      TfRef.attribute<String>(this, 'storage_container_id');
}

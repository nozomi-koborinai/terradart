// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_blob`.
const Set<String> _azurermStorageBlobSensitive = <String>{};

/// Storage Blob Access enum for `access_tier`.
extension type const StorageBlobAccessTier._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobAccessTier.variable(String name) : this._(TfArg.variable(name));
  StorageBlobAccessTier.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobAccessTier.arg(TfArg<String> arg) : this._(arg);

  static const archive = StorageBlobAccessTier._(TfArgLiteral('Archive'));
  static const cool = StorageBlobAccessTier._(TfArgLiteral('Cool'));
  static const hot = StorageBlobAccessTier._(TfArgLiteral('Hot'));

  static const List<StorageBlobAccessTier> values = [archive, cool, hot];
}

/// Storage Blob enum for `type`.
extension type const StorageBlobType._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobType.variable(String name) : this._(TfArg.variable(name));
  StorageBlobType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobType.arg(TfArg<String> arg) : this._(arg);

  static const append = StorageBlobType._(TfArgLiteral('Append'));
  static const block = StorageBlobType._(TfArgLiteral('Block'));
  static const page = StorageBlobType._(TfArgLiteral('Page'));

  static const List<StorageBlobType> values = [append, block, page];
}

/// Factory wrapper for `azurerm_storage_blob`.
final class AzurermStorageBlob extends Resource {
  static const String tfType = 'azurerm_storage_blob';

  AzurermStorageBlob(
    super.localName, {
    StorageBlobAccessTier? accessTier,
    TfArg<String>? cacheControl,
    TfArg<String>? contentMd5,
    TfArg<String>? contentType,
    TfArg<String>? encryptionScope,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    TfArg<num>? parallelism,
    TfArg<num>? size,
    TfArg<String>? source,
    TfArg<String>? sourceContent,
    TfArg<String>? sourceUri,
    required TfArg<String> storageContainerId,
    required StorageBlobType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_tier': ?accessTier,
           'cache_control': ?cacheControl,
           'content_md5': ?contentMd5,
           'content_type': ?contentType,
           'encryption_scope': ?encryptionScope,
           'metadata': ?metadata,
           'name': name,
           'parallelism': ?parallelism,
           'size': ?size,
           'source': ?source,
           'source_content': ?sourceContent,
           'source_uri': ?sourceUri,
           'storage_container_id': storageContainerId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageBlob>`.
  RefTo<AzurermStorageBlob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

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

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `parallelism` attribute.
  TfRef<num> get parallelism => TfRef.attribute<num>(this, 'parallelism');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_content` attribute.
  TfRef<String> get sourceContent =>
      TfRef.attribute<String>(this, 'source_content');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `storage_container_id` attribute.
  TfRef<String> get storageContainerId =>
      TfRef.attribute<String>(this, 'storage_container_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

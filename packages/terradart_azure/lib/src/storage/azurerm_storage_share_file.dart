// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_share_file`.
const Set<String> _azurermStorageShareFileSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_share_file`.
final class AzurermStorageShareFile extends Resource {
  static const String tfType = 'azurerm_storage_share_file';

  AzurermStorageShareFile(
    super.localName, {
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentMd5,
    TfArg<String>? contentType,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    TfArg<String>? path,
    TfArg<String>? source,
    TfArg<String>? sourceContent,
    required TfArg<String> storageShareUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_disposition': ?contentDisposition,
           'content_encoding': ?contentEncoding,
           'content_md5': ?contentMd5,
           'content_type': ?contentType,
           'metadata': ?metadata,
           'name': name,
           'path': ?path,
           'source': ?source,
           'source_content': ?sourceContent,
           'storage_share_url': storageShareUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageShareFileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageShareFile>`.
  RefTo<AzurermStorageShareFile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content_length` attribute.
  TfRef<num> get contentLength => TfRef.attribute<num>(this, 'content_length');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_md5` attribute.
  TfRef<String> get contentMd5 => TfRef.attribute<String>(this, 'content_md5');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_content` attribute.
  TfRef<String> get sourceContent =>
      TfRef.attribute<String>(this, 'source_content');

  /// Reference to `storage_share_url` attribute.
  TfRef<String> get storageShareUrl =>
      TfRef.attribute<String>(this, 'storage_share_url');
}

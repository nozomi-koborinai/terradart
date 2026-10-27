// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_share_directory`.
const Set<String> _azurermStorageShareDirectorySensitive = <String>{};

/// Factory wrapper for `azurerm_storage_share_directory`.
final class AzurermStorageShareDirectory extends Resource {
  static const String tfType = 'azurerm_storage_share_directory';

  AzurermStorageShareDirectory(
    super.localName, {
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required TfArg<String> storageShareUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': ?metadata,
           'name': name,
           'storage_share_url': storageShareUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageShareDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageShareDirectory>`.
  RefTo<AzurermStorageShareDirectory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `storage_share_url` attribute.
  TfRef<String> get storageShareUrl =>
      TfRef.attribute<String>(this, 'storage_share_url');
}

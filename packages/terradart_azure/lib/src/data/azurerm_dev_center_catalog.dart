// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_catalog.dart';

/// Sensitive field paths for `azurerm_dev_center_catalog`.
const Set<String> _azurermDevCenterCatalogSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_catalog`.
final class DataAzurermDevCenterCatalog extends Data {
  static const String tfType = 'azurerm_dev_center_catalog';

  DataAzurermDevCenterCatalog(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_id': devCenterId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterCatalogSensitive;

  /// A reference to the `azurerm_dev_center_catalog` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterCatalog>`.
  RefTo<AzurermDevCenterCatalog> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_adogit` attribute.
  TfRef<List<Map<String, Object?>>> get catalogAdogit =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'catalog_adogit');

  /// Reference to `catalog_github` attribute.
  TfRef<List<Map<String, Object?>>> get catalogGithub =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'catalog_github');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');
}

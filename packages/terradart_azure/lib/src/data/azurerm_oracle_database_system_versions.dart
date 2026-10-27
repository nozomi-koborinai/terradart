// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_database_system_versions`.
const Set<String> _azurermOracleDatabaseSystemVersionsSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_database_system_versions`.
final class DataAzurermOracleDatabaseSystemVersions extends Data {
  static const String tfType = 'azurerm_oracle_database_system_versions';

  DataAzurermOracleDatabaseSystemVersions(
    super.localName, {
    TfArg<bool>? databaseSoftwareImageSupported,
    TfArg<String>? databaseSystemShape,
    required TfArg<String> location,
    TfArg<String>? shapeFamily,
    TfArg<String>? storageManagement,
    TfArg<bool>? upgradeSupported,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_software_image_supported': ?databaseSoftwareImageSupported,
           'database_system_shape': ?databaseSystemShape,
           'location': location,
           'shape_family': ?shapeFamily,
           'storage_management': ?storageManagement,
           'upgrade_supported': ?upgradeSupported,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleDatabaseSystemVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `versions` attribute.
  TfRef<List<Map<String, Object?>>> get versions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'versions');

  /// Reference to `database_software_image_supported` attribute.
  TfRef<bool> get databaseSoftwareImageSupported =>
      TfRef.attribute<bool>(this, 'database_software_image_supported');

  /// Reference to `database_system_shape` attribute.
  TfRef<String> get databaseSystemShape =>
      TfRef.attribute<String>(this, 'database_system_shape');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `shape_family` attribute.
  TfRef<String> get shapeFamily =>
      TfRef.attribute<String>(this, 'shape_family');

  /// Reference to `storage_management` attribute.
  TfRef<String> get storageManagement =>
      TfRef.attribute<String>(this, 'storage_management');

  /// Reference to `upgrade_supported` attribute.
  TfRef<bool> get upgradeSupported =>
      TfRef.attribute<bool>(this, 'upgrade_supported');
}

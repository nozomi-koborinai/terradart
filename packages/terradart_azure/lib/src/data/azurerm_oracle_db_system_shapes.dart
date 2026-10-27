// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_db_system_shapes`.
const Set<String> _azurermOracleDbSystemShapesSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_db_system_shapes`.
final class DataAzurermOracleDbSystemShapes extends Data {
  static const String tfType = 'azurerm_oracle_db_system_shapes';

  DataAzurermOracleDbSystemShapes(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'zone': ?zone},
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleDbSystemShapesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_system_shapes` attribute.
  TfRef<List<Map<String, Object?>>> get dbSystemShapes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_system_shapes');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

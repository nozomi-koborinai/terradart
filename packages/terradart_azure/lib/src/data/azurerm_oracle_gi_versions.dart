// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_gi_versions`.
const Set<String> _azurermOracleGiVersionsSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_gi_versions`.
final class DataAzurermOracleGiVersions extends Data {
  static const String tfType = 'azurerm_oracle_gi_versions';

  DataAzurermOracleGiVersions(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? shape,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'shape': ?shape, 'zone': ?zone},
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleGiVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `versions` attribute.
  TfRef<List<String>> get versions =>
      TfRef.attribute<List<String>>(this, 'versions');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

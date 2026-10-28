// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_gi_versions`.
const Set<String> _azurermOracleGiVersionsSensitive = <String>{};

/// Data Oracle Gi Versions enum for `shape`.
extension type const DataOracleGiVersionsShape._(TfArg<String> _)
    implements TfArg<String> {
  DataOracleGiVersionsShape.variable(String name)
    : this._(TfArg.variable(name));
  DataOracleGiVersionsShape.expression(String template)
    : this._(TfArg.expression(template));
  const DataOracleGiVersionsShape.arg(TfArg<String> arg) : this._(arg);

  static const exadbxs = DataOracleGiVersionsShape._(TfArgLiteral('ExaDbXS'));
  static const exadataX9m = DataOracleGiVersionsShape._(
    TfArgLiteral('Exadata.X9M'),
  );
  static const exadataX11m = DataOracleGiVersionsShape._(
    TfArgLiteral('Exadata.X11M'),
  );

  static const List<DataOracleGiVersionsShape> values = [
    exadbxs,
    exadataX9m,
    exadataX11m,
  ];
}

/// Factory wrapper for `azurerm_oracle_gi_versions`.
final class DataAzurermOracleGiVersions extends Data {
  static const String tfType = 'azurerm_oracle_gi_versions';

  DataAzurermOracleGiVersions(
    super.localName, {
    required TfArg<String> location,
    DataOracleGiVersionsShape? shape,
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

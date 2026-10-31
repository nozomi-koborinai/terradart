// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_database_system_versions`.
const Set<String> _azurermOracleDatabaseSystemVersionsSensitive = <String>{};

/// Data Oracle Database System Versions Database System enum for `database_system_shape`.
extension type const DataOracleDatabaseSystemVersionsDatabaseSystemShape._(
  TfArg<String> _
) implements TfArg<String> {
  DataOracleDatabaseSystemVersionsDatabaseSystemShape.variable(String name)
    : this._(TfArg.variable(name));
  DataOracleDatabaseSystemVersionsDatabaseSystemShape.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataOracleDatabaseSystemVersionsDatabaseSystemShape.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vmStandardX86 =
      DataOracleDatabaseSystemVersionsDatabaseSystemShape._(
        TfArgLiteral('VM.Standard.x86'),
      );

  static const List<DataOracleDatabaseSystemVersionsDatabaseSystemShape>
  values = [vmStandardX86];
}

/// Data Oracle Database System Versions Shape enum for `shape_family`.
extension type const DataOracleDatabaseSystemVersionsShapeFamily._(
  TfArg<String> _
) implements TfArg<String> {
  DataOracleDatabaseSystemVersionsShapeFamily.variable(String name)
    : this._(TfArg.variable(name));
  DataOracleDatabaseSystemVersionsShapeFamily.expression(String template)
    : this._(TfArg.expression(template));
  const DataOracleDatabaseSystemVersionsShapeFamily.arg(TfArg<String> arg)
    : this._(arg);

  static const exadata = DataOracleDatabaseSystemVersionsShapeFamily._(
    TfArgLiteral('EXADATA'),
  );
  static const exadbXs = DataOracleDatabaseSystemVersionsShapeFamily._(
    TfArgLiteral('EXADB_XS'),
  );
  static const singlenode = DataOracleDatabaseSystemVersionsShapeFamily._(
    TfArgLiteral('SINGLENODE'),
  );
  static const virtualmachine = DataOracleDatabaseSystemVersionsShapeFamily._(
    TfArgLiteral('VIRTUALMACHINE'),
  );

  static const List<DataOracleDatabaseSystemVersionsShapeFamily> values = [
    exadata,
    exadbXs,
    singlenode,
    virtualmachine,
  ];
}

/// Data Oracle Database System Versions Storage enum for `storage_management`.
extension type const DataOracleDatabaseSystemVersionsStorageManagement._(
  TfArg<String> _
) implements TfArg<String> {
  DataOracleDatabaseSystemVersionsStorageManagement.variable(String name)
    : this._(TfArg.variable(name));
  DataOracleDatabaseSystemVersionsStorageManagement.expression(String template)
    : this._(TfArg.expression(template));
  const DataOracleDatabaseSystemVersionsStorageManagement.arg(TfArg<String> arg)
    : this._(arg);

  static const lvm = DataOracleDatabaseSystemVersionsStorageManagement._(
    TfArgLiteral('LVM'),
  );

  static const List<DataOracleDatabaseSystemVersionsStorageManagement> values =
      [lvm];
}

/// At most one of `database_system_shape`, `shape_family` on `data.azurerm_oracle_database_system_versions`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.databaseSystemShape(...)`.
sealed class DataOracleDatabaseSystemVersionsShape {
  const DataOracleDatabaseSystemVersionsShape();

  /// Sets `database_system_shape`.
  const factory DataOracleDatabaseSystemVersionsShape.databaseSystemShape(
    DataOracleDatabaseSystemVersionsDatabaseSystemShape databaseSystemShape,
  ) = DataOracleDatabaseSystemVersionsDatabaseSystemShapeChoice;

  /// Sets `shape_family`.
  const factory DataOracleDatabaseSystemVersionsShape.shapeFamily(
    DataOracleDatabaseSystemVersionsShapeFamily shapeFamily,
  ) = DataOracleDatabaseSystemVersionsShapeFamilyChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataOracleDatabaseSystemVersionsShape.databaseSystemShape] choice: sets `database_system_shape`.
final class DataOracleDatabaseSystemVersionsDatabaseSystemShapeChoice
    extends DataOracleDatabaseSystemVersionsShape {
  const DataOracleDatabaseSystemVersionsDatabaseSystemShapeChoice(
    this.databaseSystemShape,
  );

  final DataOracleDatabaseSystemVersionsDatabaseSystemShape databaseSystemShape;

  @internal
  @override
  String get blockKey => 'database_system_shape';

  @internal
  @override
  Map<String, Object?> encode() => {
    'database_system_shape': databaseSystemShape.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database_system_shape': databaseSystemShape,
  };
}

/// The [DataOracleDatabaseSystemVersionsShape.shapeFamily] choice: sets `shape_family`.
final class DataOracleDatabaseSystemVersionsShapeFamilyChoice
    extends DataOracleDatabaseSystemVersionsShape {
  const DataOracleDatabaseSystemVersionsShapeFamilyChoice(this.shapeFamily);

  final DataOracleDatabaseSystemVersionsShapeFamily shapeFamily;

  @internal
  @override
  String get blockKey => 'shape_family';

  @internal
  @override
  Map<String, Object?> encode() => {'shape_family': shapeFamily.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'shape_family': shapeFamily};
}

/// Factory wrapper for `azurerm_oracle_database_system_versions`.
final class DataAzurermOracleDatabaseSystemVersions extends Data {
  static const String tfType = 'azurerm_oracle_database_system_versions';

  DataAzurermOracleDatabaseSystemVersions(
    super.localName, {
    TfArg<bool>? databaseSoftwareImageSupported,
    DataOracleDatabaseSystemVersionsShape? shape,
    required TfArg<String> location,
    DataOracleDatabaseSystemVersionsStorageManagement? storageManagement,
    TfArg<bool>? upgradeSupported,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_software_image_supported': ?databaseSoftwareImageSupported,
           ...?shape?.argMap,
           'location': location,
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

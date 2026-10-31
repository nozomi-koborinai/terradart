// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_public_maintenance_configurations`.
const Set<String> _azurermPublicMaintenanceConfigurationsSensitive = <String>{};

/// Data Public Maintenance Configurations Recur enum for `recur_every`.
extension type const DataPublicMaintenanceConfigurationsRecurEvery._(
  TfArg<String> _
) implements TfArg<String> {
  DataPublicMaintenanceConfigurationsRecurEvery.variable(String name)
    : this._(TfArg.variable(name));
  DataPublicMaintenanceConfigurationsRecurEvery.expression(String template)
    : this._(TfArg.expression(template));
  const DataPublicMaintenanceConfigurationsRecurEvery.arg(TfArg<String> arg)
    : this._(arg);

  static const mondayThursday = DataPublicMaintenanceConfigurationsRecurEvery._(
    TfArgLiteral('Monday-Thursday'),
  );
  static const fridaySunday = DataPublicMaintenanceConfigurationsRecurEvery._(
    TfArgLiteral('Friday-Sunday'),
  );

  static const List<DataPublicMaintenanceConfigurationsRecurEvery> values = [
    mondayThursday,
    fridaySunday,
  ];
}

/// Data Public Maintenance Configurations enum for `scope`.
extension type const DataPublicMaintenanceConfigurationsScope._(TfArg<String> _)
    implements TfArg<String> {
  DataPublicMaintenanceConfigurationsScope.variable(String name)
    : this._(TfArg.variable(name));
  DataPublicMaintenanceConfigurationsScope.expression(String template)
    : this._(TfArg.expression(template));
  const DataPublicMaintenanceConfigurationsScope.arg(TfArg<String> arg)
    : this._(arg);

  static const extension = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('Extension'),
  );
  static const host = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('Host'),
  );
  static const inguestpatch = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('InGuestPatch'),
  );
  static const osimage = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('OSImage'),
  );
  static const sqldb = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('SQLDB'),
  );
  static const sqlmanagedinstance = DataPublicMaintenanceConfigurationsScope._(
    TfArgLiteral('SQLManagedInstance'),
  );

  static const List<DataPublicMaintenanceConfigurationsScope> values = [
    extension,
    host,
    inguestpatch,
    osimage,
    sqldb,
    sqlmanagedinstance,
  ];
}

/// Factory wrapper for `azurerm_public_maintenance_configurations`.
final class DataAzurermPublicMaintenanceConfigurations extends Data {
  static const String tfType = 'azurerm_public_maintenance_configurations';

  DataAzurermPublicMaintenanceConfigurations(
    super.localName, {
    TfArg<String>? location,
    DataPublicMaintenanceConfigurationsRecurEvery? recurEvery,
    DataPublicMaintenanceConfigurationsScope? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'recur_every': ?recurEvery,
           'scope': ?scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPublicMaintenanceConfigurationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configs` attribute.
  TfRef<List<Map<String, Object?>>> get configs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configs');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `recur_every` attribute.
  TfRef<String> get recurEvery => TfRef.attribute<String>(this, 'recur_every');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}

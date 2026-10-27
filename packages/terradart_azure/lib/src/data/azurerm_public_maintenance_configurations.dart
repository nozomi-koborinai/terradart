// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_public_maintenance_configurations`.
const Set<String> _azurermPublicMaintenanceConfigurationsSensitive = <String>{};

/// Factory wrapper for `azurerm_public_maintenance_configurations`.
final class DataAzurermPublicMaintenanceConfigurations extends Data {
  static const String tfType = 'azurerm_public_maintenance_configurations';

  DataAzurermPublicMaintenanceConfigurations(
    super.localName, {
    TfArg<String>? location,
    TfArg<String>? recurEvery,
    TfArg<String>? scope,
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

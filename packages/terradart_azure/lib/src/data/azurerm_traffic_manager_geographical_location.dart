// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_traffic_manager_geographical_location`.
const Set<String> _azurermTrafficManagerGeographicalLocationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_traffic_manager_geographical_location`.
final class DataAzurermTrafficManagerGeographicalLocation extends Data {
  static const String tfType = 'azurerm_traffic_manager_geographical_location';

  DataAzurermTrafficManagerGeographicalLocation(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields =>
      _azurermTrafficManagerGeographicalLocationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

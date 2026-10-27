// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_extended_locations`.
const Set<String> _azurermExtendedLocationsSensitive = <String>{};

/// Factory wrapper for `azurerm_extended_locations`.
final class DataAzurermExtendedLocations extends Data {
  static const String tfType = 'azurerm_extended_locations';

  DataAzurermExtendedLocations(
    super.localName, {
    required TfArg<String> location,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'location': location});

  @override
  Set<String> get sensitiveFields => _azurermExtendedLocationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `extended_locations` attribute.
  TfRef<List<String>> get extendedLocations =>
      TfRef.attribute<List<String>>(this, 'extended_locations');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}

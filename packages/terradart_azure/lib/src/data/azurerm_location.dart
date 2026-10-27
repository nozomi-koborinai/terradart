// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_location`.
const Set<String> _azurermLocationSensitive = <String>{};

/// Factory wrapper for `azurerm_location`.
final class DataAzurermLocation extends Data {
  static const String tfType = 'azurerm_location';

  DataAzurermLocation(
    super.localName, {
    required TfArg<String> location,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'location': location});

  @override
  Set<String> get sensitiveFields => _azurermLocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `zone_mappings` attribute.
  TfRef<List<Map<String, Object?>>> get zoneMappings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'zone_mappings');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}

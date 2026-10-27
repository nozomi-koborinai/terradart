// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_managed_api`.
const Set<String> _azurermManagedApiSensitive = <String>{};

/// Factory wrapper for `azurerm_managed_api`.
final class DataAzurermManagedApi extends Data {
  static const String tfType = 'azurerm_managed_api';

  DataAzurermManagedApi(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedApiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}

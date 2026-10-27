// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventhub_sas`.
const Set<String> _azurermEventhubSasSensitive = <String>{
  'connection_string',
  'sas',
};

/// Factory wrapper for `azurerm_eventhub_sas`.
final class DataAzurermEventhubSas extends Data {
  static const String tfType = 'azurerm_eventhub_sas';

  DataAzurermEventhubSas(
    super.localName, {
    required Sensitive<String> connectionString,
    required TfArg<String> expiry,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'connection_string': connectionString, 'expiry': expiry},
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubSasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `sas` attribute.
  TfRef<String> get sas => TfRef.attribute<String>(this, 'sas');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `expiry` attribute.
  TfRef<String> get expiry => TfRef.attribute<String>(this, 'expiry');
}

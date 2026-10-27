// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_restorable_database_accounts`.
const Set<String> _azurermCosmosdbRestorableDatabaseAccountsSensitive =
    <String>{};

/// Factory wrapper for `azurerm_cosmosdb_restorable_database_accounts`.
final class DataAzurermCosmosdbRestorableDatabaseAccounts extends Data {
  static const String tfType = 'azurerm_cosmosdb_restorable_database_accounts';

  DataAzurermCosmosdbRestorableDatabaseAccounts(
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
  Set<String> get sensitiveFields =>
      _azurermCosmosdbRestorableDatabaseAccountsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}

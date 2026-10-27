// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_sql_function`.
const Set<String> _azurermCosmosdbSqlFunctionSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_sql_function`.
final class AzurermCosmosdbSqlFunction extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_function';

  AzurermCosmosdbSqlFunction(
    super.localName, {
    required TfArg<String> body,
    required TfArg<String> containerId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'body': body, 'container_id': containerId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlFunction>`.
  RefTo<AzurermCosmosdbSqlFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `container_id` attribute.
  TfRef<String> get containerId =>
      TfRef.attribute<String>(this, 'container_id');
}

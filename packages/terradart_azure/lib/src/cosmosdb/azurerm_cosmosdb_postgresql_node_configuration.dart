// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_postgresql_node_configuration`.
const Set<String> _azurermCosmosdbPostgresqlNodeConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_cosmosdb_postgresql_node_configuration`.
final class AzurermCosmosdbPostgresqlNodeConfiguration extends Resource {
  static const String tfType = 'azurerm_cosmosdb_postgresql_node_configuration';

  AzurermCosmosdbPostgresqlNodeConfiguration(
    super.localName, {
    required TfArg<String> clusterId,
    required TfArg<String> name,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cluster_id': clusterId, 'name': name, 'value': value},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbPostgresqlNodeConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbPostgresqlNodeConfiguration>`.
  RefTo<AzurermCosmosdbPostgresqlNodeConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}

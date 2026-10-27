// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_postgresql_coordinator_configuration`.
const Set<String> _azurermCosmosdbPostgresqlCoordinatorConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_cosmosdb_postgresql_coordinator_configuration`.
final class AzurermCosmosdbPostgresqlCoordinatorConfiguration extends Resource {
  static const String tfType =
      'azurerm_cosmosdb_postgresql_coordinator_configuration';

  AzurermCosmosdbPostgresqlCoordinatorConfiguration(
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
      _azurermCosmosdbPostgresqlCoordinatorConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbPostgresqlCoordinatorConfiguration>`.
  RefTo<AzurermCosmosdbPostgresqlCoordinatorConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}

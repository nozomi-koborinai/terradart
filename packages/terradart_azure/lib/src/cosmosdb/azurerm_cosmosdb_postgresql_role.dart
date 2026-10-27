// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_postgresql_role`.
const Set<String> _azurermCosmosdbPostgresqlRoleSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_cosmosdb_postgresql_role`.
final class AzurermCosmosdbPostgresqlRole extends Resource {
  static const String tfType = 'azurerm_cosmosdb_postgresql_role';

  AzurermCosmosdbPostgresqlRole(
    super.localName, {
    required TfArg<String> clusterId,
    required TfArg<String> name,
    required Sensitive<String> password,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cluster_id': clusterId, 'name': name, 'password': password},
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbPostgresqlRoleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbPostgresqlRole>`.
  RefTo<AzurermCosmosdbPostgresqlRole> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');
}

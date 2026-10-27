// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_sql_dedicated_gateway`.
const Set<String> _azurermCosmosdbSqlDedicatedGatewaySensitive = <String>{};

/// Cosmosdb Sql Dedicated Gateway Instance enum for `instance_size`.
extension type const CosmosdbSqlDedicatedGatewayInstanceSize._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbSqlDedicatedGatewayInstanceSize.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbSqlDedicatedGatewayInstanceSize.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbSqlDedicatedGatewayInstanceSize.arg(TfArg<String> arg)
    : this._(arg);

  static const cosmosD8s = CosmosdbSqlDedicatedGatewayInstanceSize._(
    TfArgLiteral('Cosmos.D8s'),
  );
  static const cosmosD4s = CosmosdbSqlDedicatedGatewayInstanceSize._(
    TfArgLiteral('Cosmos.D4s'),
  );
  static const cosmosD16s = CosmosdbSqlDedicatedGatewayInstanceSize._(
    TfArgLiteral('Cosmos.D16s'),
  );

  static const List<CosmosdbSqlDedicatedGatewayInstanceSize> values = [
    cosmosD8s,
    cosmosD4s,
    cosmosD16s,
  ];
}

/// Factory wrapper for `azurerm_cosmosdb_sql_dedicated_gateway`.
final class AzurermCosmosdbSqlDedicatedGateway extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_dedicated_gateway';

  AzurermCosmosdbSqlDedicatedGateway(
    super.localName, {
    required TfArg<String> cosmosdbAccountId,
    required TfArg<num> instanceCount,
    required CosmosdbSqlDedicatedGatewayInstanceSize instanceSize,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cosmosdb_account_id': cosmosdbAccountId,
           'instance_count': instanceCount,
           'instance_size': instanceSize,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbSqlDedicatedGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlDedicatedGateway>`.
  RefTo<AzurermCosmosdbSqlDedicatedGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cosmosdb_account_id` attribute.
  TfRef<String> get cosmosdbAccountId =>
      TfRef.attribute<String>(this, 'cosmosdb_account_id');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `instance_size` attribute.
  TfRef<String> get instanceSize =>
      TfRef.attribute<String>(this, 'instance_size');
}

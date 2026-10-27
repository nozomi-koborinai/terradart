// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_cassandra_table`.
const Set<String> _azurermCosmosdbCassandraTableSensitive = <String>{};

/// Typed helper for the `autoscale_settings` block of
/// `azurerm_cosmosdb_cassandra_table` (derived from provider schema).
@immutable
final class CosmosdbCassandraTableAutoscaleSettings {
  const CosmosdbCassandraTableAutoscaleSettings({this.maxThroughput});

  final TfArg<num>? maxThroughput;

  @internal
  Map<String, Object?> encode() => {
    'max_throughput': ?maxThroughput?.toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `azurerm_cosmosdb_cassandra_table` (derived from provider schema).
@immutable
final class CosmosdbCassandraTableSchema {
  const CosmosdbCassandraTableSchema({
    this.clusterKey,
    required this.column,
    required this.partitionKey,
  });

  final List<CosmosdbCassandraTableClusterKey>? clusterKey;

  final List<CosmosdbCassandraTableColumn> column;

  final List<CosmosdbCassandraTablePartitionKey> partitionKey;

  @internal
  Map<String, Object?> encode() => {
    if (clusterKey != null)
      'cluster_key': [for (final e in clusterKey!) e.encode()],
    'column': [for (final e in column) e.encode()],
    'partition_key': [for (final e in partitionKey) e.encode()],
  };
}

/// Typed helper for the `schema.cluster_key` block of
/// `azurerm_cosmosdb_cassandra_table` (derived from provider schema).
@immutable
final class CosmosdbCassandraTableClusterKey {
  const CosmosdbCassandraTableClusterKey({
    required this.name,
    required this.orderBy,
  });

  final TfArg<String> name;

  final TfArg<String> orderBy;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'order_by': orderBy.toTfJson(),
  };
}

/// Typed helper for the `schema.column` block of
/// `azurerm_cosmosdb_cassandra_table` (derived from provider schema).
@immutable
final class CosmosdbCassandraTableColumn {
  const CosmosdbCassandraTableColumn({required this.name, required this.type});

  final TfArg<String> name;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `schema.partition_key` block of
/// `azurerm_cosmosdb_cassandra_table` (derived from provider schema).
@immutable
final class CosmosdbCassandraTablePartitionKey {
  const CosmosdbCassandraTablePartitionKey({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `azurerm_cosmosdb_cassandra_table`.
final class AzurermCosmosdbCassandraTable extends Resource {
  static const String tfType = 'azurerm_cosmosdb_cassandra_table';

  AzurermCosmosdbCassandraTable(
    super.localName, {
    TfArg<num>? analyticalStorageTtl,
    required TfArg<String> cassandraKeyspaceId,
    TfArg<num>? defaultTtl,
    required TfArg<String> name,
    TfArg<num>? throughput,
    CosmosdbCassandraTableAutoscaleSettings? autoscaleSettings,
    required CosmosdbCassandraTableSchema schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analytical_storage_ttl': ?analyticalStorageTtl,
           'cassandra_keyspace_id': cassandraKeyspaceId,
           'default_ttl': ?defaultTtl,
           'name': name,
           'throughput': ?throughput,
           if (autoscaleSettings != null)
             'autoscale_settings': TfArg.literal(autoscaleSettings.encode()),
           'schema': TfArg.literal(schema.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbCassandraTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbCassandraTable>`.
  RefTo<AzurermCosmosdbCassandraTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `analytical_storage_ttl` attribute.
  TfRef<num> get analyticalStorageTtl =>
      TfRef.attribute<num>(this, 'analytical_storage_ttl');

  /// Reference to `cassandra_keyspace_id` attribute.
  TfRef<String> get cassandraKeyspaceId =>
      TfRef.attribute<String>(this, 'cassandra_keyspace_id');

  /// Reference to `default_ttl` attribute.
  TfRef<num> get defaultTtl => TfRef.attribute<num>(this, 'default_ttl');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_mongo_collection`.
const Set<String> _azurermCosmosdbMongoCollectionSensitive = <String>{};

/// Typed helper for the `autoscale_settings` block of
/// `azurerm_cosmosdb_mongo_collection` (derived from provider schema).
@immutable
final class CosmosdbMongoCollectionAutoscaleSettings {
  const CosmosdbMongoCollectionAutoscaleSettings({this.maxThroughput});

  final TfArg<num>? maxThroughput;

  @internal
  Map<String, Object?> encode() => {
    'max_throughput': ?maxThroughput?.toTfJson(),
  };
}

/// Typed helper for the `index` block of
/// `azurerm_cosmosdb_mongo_collection` (derived from provider schema).
@immutable
final class CosmosdbMongoCollectionIndex {
  const CosmosdbMongoCollectionIndex({required this.keys, this.unique});

  final TfArg<List<String>> keys;

  final TfArg<bool>? unique;

  @internal
  Map<String, Object?> encode() => {
    'keys': keys.toTfJson(),
    'unique': ?unique?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cosmosdb_mongo_collection`.
final class AzurermCosmosdbMongoCollection extends Resource {
  static const String tfType = 'azurerm_cosmosdb_mongo_collection';

  AzurermCosmosdbMongoCollection(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<num>? analyticalStorageTtl,
    required TfArg<String> databaseName,
    TfArg<num>? defaultTtlSeconds,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? shardKey,
    TfArg<num>? throughput,
    CosmosdbMongoCollectionAutoscaleSettings? autoscaleSettings,
    List<CosmosdbMongoCollectionIndex>? index,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'analytical_storage_ttl': ?analyticalStorageTtl,
           'database_name': databaseName,
           'default_ttl_seconds': ?defaultTtlSeconds,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shard_key': ?shardKey,
           'throughput': ?throughput,
           if (autoscaleSettings != null)
             'autoscale_settings': TfArg.literal(autoscaleSettings.encode()),
           if (index != null)
             'index': TfArg.literal([for (final e in index) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbMongoCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbMongoCollection>`.
  RefTo<AzurermCosmosdbMongoCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `system_indexes` attribute.
  TfRef<List<Map<String, Object?>>> get systemIndexes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'system_indexes');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `analytical_storage_ttl` attribute.
  TfRef<num> get analyticalStorageTtl =>
      TfRef.attribute<num>(this, 'analytical_storage_ttl');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `default_ttl_seconds` attribute.
  TfRef<num> get defaultTtlSeconds =>
      TfRef.attribute<num>(this, 'default_ttl_seconds');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shard_key` attribute.
  TfRef<String> get shardKey => TfRef.attribute<String>(this, 'shard_key');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');
}

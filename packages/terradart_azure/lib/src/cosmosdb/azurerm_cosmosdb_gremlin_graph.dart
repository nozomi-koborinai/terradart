// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_gremlin_graph`.
const Set<String> _azurermCosmosdbGremlinGraphSensitive = <String>{};

/// Typed helper for the `autoscale_settings` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphAutoscaleSettings {
  const CosmosdbGremlinGraphAutoscaleSettings({this.maxThroughput});

  final TfArg<num>? maxThroughput;

  @internal
  Map<String, Object?> encode() => {
    'max_throughput': ?maxThroughput?.toTfJson(),
  };
}

/// Typed helper for the `conflict_resolution_policy` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphConflictResolutionPolicy {
  const CosmosdbGremlinGraphConflictResolutionPolicy({
    this.conflictResolutionPath,
    this.conflictResolutionProcedure,
    required this.mode,
  });

  final TfArg<String>? conflictResolutionPath;

  final TfArg<String>? conflictResolutionProcedure;

  final TfArg<String> mode;

  @internal
  Map<String, Object?> encode() => {
    'conflict_resolution_path': ?conflictResolutionPath?.toTfJson(),
    'conflict_resolution_procedure': ?conflictResolutionProcedure?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// Typed helper for the `index_policy` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphIndexPolicy {
  const CosmosdbGremlinGraphIndexPolicy({
    this.automatic,
    this.excludedPaths,
    this.includedPaths,
    required this.indexingMode,
    this.compositeIndex,
    this.spatialIndex,
  });

  final TfArg<bool>? automatic;

  final TfArg<List<String>>? excludedPaths;

  final TfArg<List<String>>? includedPaths;

  final CosmosdbGremlinGraphIndexingMode indexingMode;

  final List<CosmosdbGremlinGraphCompositeIndex>? compositeIndex;

  final List<CosmosdbGremlinGraphSpatialIndex>? spatialIndex;

  @internal
  Map<String, Object?> encode() => {
    'automatic': ?automatic?.toTfJson(),
    'excluded_paths': ?excludedPaths?.toTfJson(),
    'included_paths': ?includedPaths?.toTfJson(),
    'indexing_mode': indexingMode.toTfJson(),
    if (compositeIndex != null)
      'composite_index': [for (final e in compositeIndex!) e.encode()],
    if (spatialIndex != null)
      'spatial_index': [for (final e in spatialIndex!) e.encode()],
  };
}

/// `indexing_mode` — derived from the provider schema description.
extension type const CosmosdbGremlinGraphIndexingMode._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbGremlinGraphIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbGremlinGraphIndexingMode.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbGremlinGraphIndexingMode.arg(TfArg<String> arg) : this._(arg);

  static const consistent = CosmosdbGremlinGraphIndexingMode._(
    TfArgLiteral('consistent'),
  );
  static const lazy = CosmosdbGremlinGraphIndexingMode._(TfArgLiteral('lazy'));
  static const none = CosmosdbGremlinGraphIndexingMode._(TfArgLiteral('none'));

  static const List<CosmosdbGremlinGraphIndexingMode> values = [
    consistent,
    lazy,
    none,
  ];
}

/// Typed helper for the `index_policy.composite_index` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphCompositeIndex {
  const CosmosdbGremlinGraphCompositeIndex({required this.index});

  final List<CosmosdbGremlinGraphIndex> index;

  @internal
  Map<String, Object?> encode() => {
    'index': [for (final e in index) e.encode()],
  };
}

/// Typed helper for the `index_policy.composite_index.index` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphIndex {
  const CosmosdbGremlinGraphIndex({required this.order, required this.path});

  final TfArg<String> order;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'order': order.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `index_policy.spatial_index` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphSpatialIndex {
  const CosmosdbGremlinGraphSpatialIndex({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `unique_key` block of
/// `azurerm_cosmosdb_gremlin_graph` (derived from provider schema).
@immutable
final class CosmosdbGremlinGraphUniqueKey {
  const CosmosdbGremlinGraphUniqueKey({required this.paths});

  final TfArg<List<String>> paths;

  @internal
  Map<String, Object?> encode() => {'paths': paths.toTfJson()};
}

/// Factory wrapper for `azurerm_cosmosdb_gremlin_graph`.
final class AzurermCosmosdbGremlinGraph extends Resource {
  static const String tfType = 'azurerm_cosmosdb_gremlin_graph';

  AzurermCosmosdbGremlinGraph(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<num>? analyticalStorageTtl,
    required TfArg<String> databaseName,
    TfArg<num>? defaultTtl,
    required TfArg<String> name,
    required TfArg<String> partitionKeyPath,
    TfArg<num>? partitionKeyVersion,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? throughput,
    CosmosdbGremlinGraphAutoscaleSettings? autoscaleSettings,
    CosmosdbGremlinGraphConflictResolutionPolicy? conflictResolutionPolicy,
    CosmosdbGremlinGraphIndexPolicy? indexPolicy,
    List<CosmosdbGremlinGraphUniqueKey>? uniqueKey,
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
           'default_ttl': ?defaultTtl,
           'name': name,
           'partition_key_path': partitionKeyPath,
           'partition_key_version': ?partitionKeyVersion,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'throughput': ?throughput,
           if (autoscaleSettings != null)
             'autoscale_settings': TfArg.literal(autoscaleSettings.encode()),
           if (conflictResolutionPolicy != null)
             'conflict_resolution_policy': TfArg.literal(
               conflictResolutionPolicy.encode(),
             ),
           if (indexPolicy != null)
             'index_policy': TfArg.literal(indexPolicy.encode()),
           if (uniqueKey != null)
             'unique_key': TfArg.literal([
               for (final e in uniqueKey) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbGremlinGraphSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbGremlinGraph>`.
  RefTo<AzurermCosmosdbGremlinGraph> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `analytical_storage_ttl` attribute.
  TfRef<num> get analyticalStorageTtl =>
      TfRef.attribute<num>(this, 'analytical_storage_ttl');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `default_ttl` attribute.
  TfRef<num> get defaultTtl => TfRef.attribute<num>(this, 'default_ttl');

  /// Reference to `partition_key_path` attribute.
  TfRef<String> get partitionKeyPath =>
      TfRef.attribute<String>(this, 'partition_key_path');

  /// Reference to `partition_key_version` attribute.
  TfRef<num> get partitionKeyVersion =>
      TfRef.attribute<num>(this, 'partition_key_version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');
}

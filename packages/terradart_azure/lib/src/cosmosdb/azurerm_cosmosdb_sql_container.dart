// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_sql_container`.
const Set<String> _azurermCosmosdbSqlContainerSensitive = <String>{};

/// Typed helper for the `autoscale_settings` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerAutoscaleSettings {
  const CosmosdbSqlContainerAutoscaleSettings({this.maxThroughput});

  final TfArg<num>? maxThroughput;

  @internal
  Map<String, Object?> encode() => {
    'max_throughput': ?maxThroughput?.toTfJson(),
  };
}

/// Typed helper for the `conflict_resolution_policy` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerConflictResolutionPolicy {
  const CosmosdbSqlContainerConflictResolutionPolicy({
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

/// Typed helper for the `indexing_policy` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerIndexingPolicy {
  const CosmosdbSqlContainerIndexingPolicy({
    this.indexingMode,
    this.compositeIndex,
    this.excludedPath,
    this.includedPath,
    this.spatialIndex,
  });

  final TfArg<String>? indexingMode;

  final List<CosmosdbSqlContainerCompositeIndex>? compositeIndex;

  final List<CosmosdbSqlContainerExcludedPath>? excludedPath;

  final List<CosmosdbSqlContainerIncludedPath>? includedPath;

  final List<CosmosdbSqlContainerSpatialIndex>? spatialIndex;

  @internal
  Map<String, Object?> encode() => {
    'indexing_mode': ?indexingMode?.toTfJson(),
    if (compositeIndex != null)
      'composite_index': [for (final e in compositeIndex!) e.encode()],
    if (excludedPath != null)
      'excluded_path': [for (final e in excludedPath!) e.encode()],
    if (includedPath != null)
      'included_path': [for (final e in includedPath!) e.encode()],
    if (spatialIndex != null)
      'spatial_index': [for (final e in spatialIndex!) e.encode()],
  };
}

/// Typed helper for the `indexing_policy.composite_index` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerCompositeIndex {
  const CosmosdbSqlContainerCompositeIndex({required this.index});

  final List<CosmosdbSqlContainerIndex> index;

  @internal
  Map<String, Object?> encode() => {
    'index': [for (final e in index) e.encode()],
  };
}

/// Typed helper for the `indexing_policy.composite_index.index` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerIndex {
  const CosmosdbSqlContainerIndex({required this.order, required this.path});

  final TfArg<String> order;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'order': order.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `indexing_policy.excluded_path` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerExcludedPath {
  const CosmosdbSqlContainerExcludedPath({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `indexing_policy.included_path` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerIncludedPath {
  const CosmosdbSqlContainerIncludedPath({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `indexing_policy.spatial_index` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerSpatialIndex {
  const CosmosdbSqlContainerSpatialIndex({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `unique_key` block of
/// `azurerm_cosmosdb_sql_container` (derived from provider schema).
@immutable
final class CosmosdbSqlContainerUniqueKey {
  const CosmosdbSqlContainerUniqueKey({required this.paths});

  final TfArg<List<String>> paths;

  @internal
  Map<String, Object?> encode() => {'paths': paths.toTfJson()};
}

/// Factory wrapper for `azurerm_cosmosdb_sql_container`.
final class AzurermCosmosdbSqlContainer extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_container';

  AzurermCosmosdbSqlContainer(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<num>? analyticalStorageTtl,
    required TfArg<String> databaseName,
    TfArg<num>? defaultTtl,
    required TfArg<String> name,
    TfArg<String>? partitionKeyKind,
    required TfArg<List<String>> partitionKeyPaths,
    TfArg<num>? partitionKeyVersion,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? throughput,
    CosmosdbSqlContainerAutoscaleSettings? autoscaleSettings,
    CosmosdbSqlContainerConflictResolutionPolicy? conflictResolutionPolicy,
    CosmosdbSqlContainerIndexingPolicy? indexingPolicy,
    List<CosmosdbSqlContainerUniqueKey>? uniqueKey,
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
           'partition_key_kind': ?partitionKeyKind,
           'partition_key_paths': partitionKeyPaths,
           'partition_key_version': ?partitionKeyVersion,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'throughput': ?throughput,
           if (autoscaleSettings != null)
             'autoscale_settings': TfArg.literal(autoscaleSettings.encode()),
           if (conflictResolutionPolicy != null)
             'conflict_resolution_policy': TfArg.literal(
               conflictResolutionPolicy.encode(),
             ),
           if (indexingPolicy != null)
             'indexing_policy': TfArg.literal(indexingPolicy.encode()),
           if (uniqueKey != null)
             'unique_key': TfArg.literal([
               for (final e in uniqueKey) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlContainerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlContainer>`.
  RefTo<AzurermCosmosdbSqlContainer> get ref => RefTo.of(this);

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

  /// Reference to `partition_key_kind` attribute.
  TfRef<String> get partitionKeyKind =>
      TfRef.attribute<String>(this, 'partition_key_kind');

  /// Reference to `partition_key_paths` attribute.
  TfRef<List<String>> get partitionKeyPaths =>
      TfRef.attribute<List<String>>(this, 'partition_key_paths');

  /// Reference to `partition_key_version` attribute.
  TfRef<num> get partitionKeyVersion =>
      TfRef.attribute<num>(this, 'partition_key_version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');
}

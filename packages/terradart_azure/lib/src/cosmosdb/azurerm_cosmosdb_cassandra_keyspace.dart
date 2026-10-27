// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_cassandra_keyspace`.
const Set<String> _azurermCosmosdbCassandraKeyspaceSensitive = <String>{};

/// Typed helper for the `autoscale_settings` block of
/// `azurerm_cosmosdb_cassandra_keyspace` (derived from provider schema).
@immutable
final class CosmosdbCassandraKeyspaceAutoscaleSettings {
  const CosmosdbCassandraKeyspaceAutoscaleSettings({this.maxThroughput});

  final TfArg<num>? maxThroughput;

  @internal
  Map<String, Object?> encode() => {
    'max_throughput': ?maxThroughput?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cosmosdb_cassandra_keyspace`.
final class AzurermCosmosdbCassandraKeyspace extends Resource {
  static const String tfType = 'azurerm_cosmosdb_cassandra_keyspace';

  AzurermCosmosdbCassandraKeyspace(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? throughput,
    CosmosdbCassandraKeyspaceAutoscaleSettings? autoscaleSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'throughput': ?throughput,
           if (autoscaleSettings != null)
             'autoscale_settings': TfArg.literal(autoscaleSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbCassandraKeyspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbCassandraKeyspace>`.
  RefTo<AzurermCosmosdbCassandraKeyspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');
}

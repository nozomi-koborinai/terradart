// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_database`.
const Set<String> _azurermKustoDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_kusto_database`.
final class AzurermKustoDatabase extends Resource {
  static const String tfType = 'azurerm_kusto_database';

  AzurermKustoDatabase(
    super.localName, {
    required TfArg<String> clusterName,
    TfArg<String>? hotCachePeriod,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? softDeletePeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'hot_cache_period': ?hotCachePeriod,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'soft_delete_period': ?softDeletePeriod,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKustoDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoDatabase>`.
  RefTo<AzurermKustoDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `hot_cache_period` attribute.
  TfRef<String> get hotCachePeriod =>
      TfRef.attribute<String>(this, 'hot_cache_period');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `soft_delete_period` attribute.
  TfRef<String> get softDeletePeriod =>
      TfRef.attribute<String>(this, 'soft_delete_period');
}

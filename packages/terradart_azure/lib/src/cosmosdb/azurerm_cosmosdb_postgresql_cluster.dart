// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_postgresql_cluster`.
const Set<String> _azurermCosmosdbPostgresqlClusterSensitive = <String>{
  'administrator_login_password',
};

/// Typed helper for the `maintenance_window` block of
/// `azurerm_cosmosdb_postgresql_cluster` (derived from provider schema).
@immutable
final class CosmosdbPostgresqlClusterMaintenanceWindow {
  const CosmosdbPostgresqlClusterMaintenanceWindow({
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  final TfArg<num>? dayOfWeek;

  final TfArg<num>? startHour;

  final TfArg<num>? startMinute;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': ?dayOfWeek?.toTfJson(),
    'start_hour': ?startHour?.toTfJson(),
    'start_minute': ?startMinute?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cosmosdb_postgresql_cluster`.
final class AzurermCosmosdbPostgresqlCluster extends Resource {
  static const String tfType = 'azurerm_cosmosdb_postgresql_cluster';

  AzurermCosmosdbPostgresqlCluster(
    super.localName, {
    Sensitive<String>? administratorLoginPassword,
    TfArg<String>? citusVersion,
    TfArg<bool>? coordinatorPublicIpAccessEnabled,
    TfArg<String>? coordinatorServerEdition,
    TfArg<num>? coordinatorStorageQuotaInMb,
    TfArg<num>? coordinatorVcoreCount,
    TfArg<bool>? haEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<num> nodeCount,
    TfArg<bool>? nodePublicIpAccessEnabled,
    TfArg<String>? nodeServerEdition,
    TfArg<num>? nodeStorageQuotaInMb,
    TfArg<num>? nodeVcores,
    TfArg<String>? pointInTimeInUtc,
    TfArg<String>? preferredPrimaryZone,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? shardsOnCoordinatorEnabled,
    TfArg<String>? sourceLocation,
    TfArg<String>? sourceResourceId,
    TfArg<String>? sqlVersion,
    TfArg<Map<String, String>>? tags,
    CosmosdbPostgresqlClusterMaintenanceWindow? maintenanceWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_login_password': ?administratorLoginPassword,
           'citus_version': ?citusVersion,
           'coordinator_public_ip_access_enabled':
               ?coordinatorPublicIpAccessEnabled,
           'coordinator_server_edition': ?coordinatorServerEdition,
           'coordinator_storage_quota_in_mb': ?coordinatorStorageQuotaInMb,
           'coordinator_vcore_count': ?coordinatorVcoreCount,
           'ha_enabled': ?haEnabled,
           'location': location,
           'name': name,
           'node_count': nodeCount,
           'node_public_ip_access_enabled': ?nodePublicIpAccessEnabled,
           'node_server_edition': ?nodeServerEdition,
           'node_storage_quota_in_mb': ?nodeStorageQuotaInMb,
           'node_vcores': ?nodeVcores,
           'point_in_time_in_utc': ?pointInTimeInUtc,
           'preferred_primary_zone': ?preferredPrimaryZone,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shards_on_coordinator_enabled': ?shardsOnCoordinatorEnabled,
           'source_location': ?sourceLocation,
           'source_resource_id': ?sourceResourceId,
           'sql_version': ?sqlVersion,
           'tags': ?tags,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbPostgresqlClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbPostgresqlCluster>`.
  RefTo<AzurermCosmosdbPostgresqlCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `earliest_restore_time` attribute.
  TfRef<String> get earliestRestoreTime =>
      TfRef.attribute<String>(this, 'earliest_restore_time');

  /// Reference to `servers` attribute.
  TfRef<List<Map<String, Object?>>> get servers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'servers');

  /// Reference to `administrator_login_password` attribute.
  TfRef<String> get administratorLoginPassword =>
      TfRef.attribute<String>(this, 'administrator_login_password');

  /// Reference to `citus_version` attribute.
  TfRef<String> get citusVersion =>
      TfRef.attribute<String>(this, 'citus_version');

  /// Reference to `coordinator_public_ip_access_enabled` attribute.
  TfRef<bool> get coordinatorPublicIpAccessEnabled =>
      TfRef.attribute<bool>(this, 'coordinator_public_ip_access_enabled');

  /// Reference to `coordinator_server_edition` attribute.
  TfRef<String> get coordinatorServerEdition =>
      TfRef.attribute<String>(this, 'coordinator_server_edition');

  /// Reference to `coordinator_storage_quota_in_mb` attribute.
  TfRef<num> get coordinatorStorageQuotaInMb =>
      TfRef.attribute<num>(this, 'coordinator_storage_quota_in_mb');

  /// Reference to `coordinator_vcore_count` attribute.
  TfRef<num> get coordinatorVcoreCount =>
      TfRef.attribute<num>(this, 'coordinator_vcore_count');

  /// Reference to `ha_enabled` attribute.
  TfRef<bool> get haEnabled => TfRef.attribute<bool>(this, 'ha_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_public_ip_access_enabled` attribute.
  TfRef<bool> get nodePublicIpAccessEnabled =>
      TfRef.attribute<bool>(this, 'node_public_ip_access_enabled');

  /// Reference to `node_server_edition` attribute.
  TfRef<String> get nodeServerEdition =>
      TfRef.attribute<String>(this, 'node_server_edition');

  /// Reference to `node_storage_quota_in_mb` attribute.
  TfRef<num> get nodeStorageQuotaInMb =>
      TfRef.attribute<num>(this, 'node_storage_quota_in_mb');

  /// Reference to `node_vcores` attribute.
  TfRef<num> get nodeVcores => TfRef.attribute<num>(this, 'node_vcores');

  /// Reference to `point_in_time_in_utc` attribute.
  TfRef<String> get pointInTimeInUtc =>
      TfRef.attribute<String>(this, 'point_in_time_in_utc');

  /// Reference to `preferred_primary_zone` attribute.
  TfRef<String> get preferredPrimaryZone =>
      TfRef.attribute<String>(this, 'preferred_primary_zone');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shards_on_coordinator_enabled` attribute.
  TfRef<bool> get shardsOnCoordinatorEnabled =>
      TfRef.attribute<bool>(this, 'shards_on_coordinator_enabled');

  /// Reference to `source_location` attribute.
  TfRef<String> get sourceLocation =>
      TfRef.attribute<String>(this, 'source_location');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `sql_version` attribute.
  TfRef<String> get sqlVersion => TfRef.attribute<String>(this, 'sql_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

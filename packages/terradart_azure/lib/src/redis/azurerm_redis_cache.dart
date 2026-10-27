// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_redis_cache`.
const Set<String> _azurermRedisCacheSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'redis_configuration.aof_storage_connection_string_0',
  'redis_configuration.aof_storage_connection_string_1',
  'redis_configuration.rdb_storage_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Redis Cache enum for `family`.
extension type const RedisCacheFamily._(TfArg<String> _)
    implements TfArg<String> {
  RedisCacheFamily.variable(String name) : this._(TfArg.variable(name));
  RedisCacheFamily.expression(String template)
    : this._(TfArg.expression(template));
  const RedisCacheFamily.arg(TfArg<String> arg) : this._(arg);

  static const c = RedisCacheFamily._(TfArgLiteral('C'));
  static const p = RedisCacheFamily._(TfArgLiteral('P'));

  static const List<RedisCacheFamily> values = [c, p];
}

/// Redis Cache Redis enum for `redis_version`.
extension type const RedisCacheRedisVersion._(TfArg<String> _)
    implements TfArg<String> {
  RedisCacheRedisVersion.variable(String name) : this._(TfArg.variable(name));
  RedisCacheRedisVersion.expression(String template)
    : this._(TfArg.expression(template));
  const RedisCacheRedisVersion.arg(TfArg<String> arg) : this._(arg);

  static const v4 = RedisCacheRedisVersion._(TfArgLiteral('4'));
  static const v6 = RedisCacheRedisVersion._(TfArgLiteral('6'));

  static const List<RedisCacheRedisVersion> values = [v4, v6];
}

/// Redis Cache Sku enum for `sku_name`.
extension type const RedisCacheSkuName._(TfArg<String> _)
    implements TfArg<String> {
  RedisCacheSkuName.variable(String name) : this._(TfArg.variable(name));
  RedisCacheSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const RedisCacheSkuName.arg(TfArg<String> arg) : this._(arg);

  static const basic = RedisCacheSkuName._(TfArgLiteral('Basic'));
  static const premium = RedisCacheSkuName._(TfArgLiteral('Premium'));
  static const standard = RedisCacheSkuName._(TfArgLiteral('Standard'));

  static const List<RedisCacheSkuName> values = [basic, premium, standard];
}

/// Typed helper for the `identity` block of
/// `azurerm_redis_cache` (derived from provider schema).
@immutable
final class RedisCacheIdentity {
  const RedisCacheIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `patch_schedule` block of
/// `azurerm_redis_cache` (derived from provider schema).
@immutable
final class RedisCachePatchSchedule {
  const RedisCachePatchSchedule({
    required this.dayOfWeek,
    this.maintenanceWindow,
    this.startHourUtc,
  });

  final TfArg<String> dayOfWeek;

  final TfArg<String>? maintenanceWindow;

  final TfArg<num>? startHourUtc;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'maintenance_window': ?maintenanceWindow?.toTfJson(),
    'start_hour_utc': ?startHourUtc?.toTfJson(),
  };
}

/// Typed helper for the `redis_configuration` block of
/// `azurerm_redis_cache` (derived from provider schema).
@immutable
final class RedisCacheRedisConfiguration {
  const RedisCacheRedisConfiguration({
    this.activeDirectoryAuthenticationEnabled,
    this.aofBackupEnabled,
    this.aofStorageConnectionString0,
    this.aofStorageConnectionString1,
    this.authenticationEnabled,
    this.dataPersistenceAuthenticationMethod,
    this.maxfragmentationmemoryReserved,
    this.maxmemoryDelta,
    this.maxmemoryPolicy,
    this.maxmemoryReserved,
    this.notifyKeyspaceEvents,
    this.rdbBackupEnabled,
    this.rdbBackupFrequency,
    this.rdbBackupMaxSnapshotCount,
    this.rdbStorageConnectionString,
    this.storageAccountSubscriptionId,
  });

  final TfArg<bool>? activeDirectoryAuthenticationEnabled;

  final TfArg<bool>? aofBackupEnabled;

  final Sensitive<String>? aofStorageConnectionString0;

  final Sensitive<String>? aofStorageConnectionString1;

  final TfArg<bool>? authenticationEnabled;

  final RedisCacheDataPersistenceAuthenticationMethod?
  dataPersistenceAuthenticationMethod;

  final TfArg<num>? maxfragmentationmemoryReserved;

  final TfArg<num>? maxmemoryDelta;

  final TfArg<String>? maxmemoryPolicy;

  final TfArg<num>? maxmemoryReserved;

  final TfArg<String>? notifyKeyspaceEvents;

  final TfArg<bool>? rdbBackupEnabled;

  final TfArg<num>? rdbBackupFrequency;

  final TfArg<num>? rdbBackupMaxSnapshotCount;

  final Sensitive<String>? rdbStorageConnectionString;

  final TfArg<String>? storageAccountSubscriptionId;

  @internal
  Map<String, Object?> encode() => {
    'active_directory_authentication_enabled':
        ?activeDirectoryAuthenticationEnabled?.toTfJson(),
    'aof_backup_enabled': ?aofBackupEnabled?.toTfJson(),
    'aof_storage_connection_string_0': ?aofStorageConnectionString0?.toTfJson(),
    'aof_storage_connection_string_1': ?aofStorageConnectionString1?.toTfJson(),
    'authentication_enabled': ?authenticationEnabled?.toTfJson(),
    'data_persistence_authentication_method':
        ?dataPersistenceAuthenticationMethod?.toTfJson(),
    'maxfragmentationmemory_reserved': ?maxfragmentationmemoryReserved
        ?.toTfJson(),
    'maxmemory_delta': ?maxmemoryDelta?.toTfJson(),
    'maxmemory_policy': ?maxmemoryPolicy?.toTfJson(),
    'maxmemory_reserved': ?maxmemoryReserved?.toTfJson(),
    'notify_keyspace_events': ?notifyKeyspaceEvents?.toTfJson(),
    'rdb_backup_enabled': ?rdbBackupEnabled?.toTfJson(),
    'rdb_backup_frequency': ?rdbBackupFrequency?.toTfJson(),
    'rdb_backup_max_snapshot_count': ?rdbBackupMaxSnapshotCount?.toTfJson(),
    'rdb_storage_connection_string': ?rdbStorageConnectionString?.toTfJson(),
    'storage_account_subscription_id': ?storageAccountSubscriptionId
        ?.toTfJson(),
  };
}

/// `data_persistence_authentication_method` — derived from the provider schema description.
extension type const RedisCacheDataPersistenceAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  RedisCacheDataPersistenceAuthenticationMethod.variable(String name)
    : this._(TfArg.variable(name));
  RedisCacheDataPersistenceAuthenticationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const RedisCacheDataPersistenceAuthenticationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const sas = RedisCacheDataPersistenceAuthenticationMethod._(
    TfArgLiteral('SAS'),
  );
  static const managedidentity =
      RedisCacheDataPersistenceAuthenticationMethod._(
        TfArgLiteral('ManagedIdentity'),
      );

  static const List<RedisCacheDataPersistenceAuthenticationMethod> values = [
    sas,
    managedidentity,
  ];
}

/// Factory wrapper for `azurerm_redis_cache`.
final class AzurermRedisCache extends Resource {
  static const String tfType = 'azurerm_redis_cache';

  AzurermRedisCache(
    super.localName, {
    TfArg<bool>? accessKeysAuthenticationEnabled,
    required TfArg<num> capacity,
    required RedisCacheFamily family,
    required TfArg<String> location,
    TfArg<String>? minimumTlsVersion,
    required TfArg<String> name,
    TfArg<bool>? nonSslPortEnabled,
    TfArg<String>? privateStaticIpAddress,
    TfArg<bool>? publicNetworkAccessEnabled,
    RedisCacheRedisVersion? redisVersion,
    TfArg<num>? replicasPerMaster,
    TfArg<num>? replicasPerPrimary,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? shardCount,
    required RedisCacheSkuName skuName,
    RefTo<AzurermSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? tenantSettings,
    TfArg<List<String>>? zones,
    RedisCacheIdentity? identity,
    List<RedisCachePatchSchedule>? patchSchedule,
    RedisCacheRedisConfiguration? redisConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_keys_authentication_enabled':
               ?accessKeysAuthenticationEnabled,
           'capacity': capacity,
           'family': family,
           'location': location,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'non_ssl_port_enabled': ?nonSslPortEnabled,
           'private_static_ip_address': ?privateStaticIpAddress,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'redis_version': ?redisVersion,
           'replicas_per_master': ?replicasPerMaster,
           'replicas_per_primary': ?replicasPerPrimary,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shard_count': ?shardCount,
           'sku_name': skuName,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'tenant_settings': ?tenantSettings,
           'zones': ?zones,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (patchSchedule != null)
             'patch_schedule': TfArg.literal([
               for (final e in patchSchedule) e.encode(),
             ]),
           if (redisConfiguration != null)
             'redis_configuration': TfArg.literal(redisConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRedisCacheSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedisCache>`.
  RefTo<AzurermRedisCache> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `ssl_port` attribute.
  TfRef<num> get sslPort => TfRef.attribute<num>(this, 'ssl_port');

  /// Reference to `access_keys_authentication_enabled` attribute.
  TfRef<bool> get accessKeysAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'access_keys_authentication_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `non_ssl_port_enabled` attribute.
  TfRef<bool> get nonSslPortEnabled =>
      TfRef.attribute<bool>(this, 'non_ssl_port_enabled');

  /// Reference to `private_static_ip_address` attribute.
  TfRef<String> get privateStaticIpAddress =>
      TfRef.attribute<String>(this, 'private_static_ip_address');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `redis_version` attribute.
  TfRef<String> get redisVersion =>
      TfRef.attribute<String>(this, 'redis_version');

  /// Reference to `replicas_per_master` attribute.
  TfRef<num> get replicasPerMaster =>
      TfRef.attribute<num>(this, 'replicas_per_master');

  /// Reference to `replicas_per_primary` attribute.
  TfRef<num> get replicasPerPrimary =>
      TfRef.attribute<num>(this, 'replicas_per_primary');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_settings` attribute.
  TfRef<Map<String, String>> get tenantSettings =>
      TfRef.attribute<Map<String, String>>(this, 'tenant_settings');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}

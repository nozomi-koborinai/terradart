// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_redis`.
const Set<String> _azurermManagedRedisSensitive = <String>{
  'default_database.primary_access_key',
  'default_database.secondary_access_key',
};

/// Managed Redis Public Network enum for `public_network_access`.
extension type const ManagedRedisPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  ManagedRedisPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  ManagedRedisPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedRedisPublicNetworkAccess.arg(TfArg<String> arg) : this._(arg);

  static const disabled = ManagedRedisPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = ManagedRedisPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<ManagedRedisPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_managed_redis` (derived from provider schema).
@immutable
final class ManagedRedisCustomerManagedKey {
  const ManagedRedisCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String> userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'user_assigned_identity_id': userAssignedIdentityId.toTfJson(),
  };
}

/// Typed helper for the `default_database` block of
/// `azurerm_managed_redis` (derived from provider schema).
@immutable
final class ManagedRedisDefaultDatabase {
  const ManagedRedisDefaultDatabase({
    this.accessKeysAuthenticationEnabled,
    this.clientProtocol,
    this.clusteringPolicy,
    this.evictionPolicy,
    this.geoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency,
    this.module,
  });

  final TfArg<bool>? accessKeysAuthenticationEnabled;

  final ManagedRedisClientProtocol? clientProtocol;

  final ManagedRedisClusteringPolicy? clusteringPolicy;

  final ManagedRedisEvictionPolicy? evictionPolicy;

  final ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency?
  geoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency;

  final List<ManagedRedisModule>? module;

  @internal
  Map<String, Object?> encode() => {
    'access_keys_authentication_enabled': ?accessKeysAuthenticationEnabled
        ?.toTfJson(),
    'client_protocol': ?clientProtocol?.toTfJson(),
    'clustering_policy': ?clusteringPolicy?.toTfJson(),
    'eviction_policy': ?evictionPolicy?.toTfJson(),
    ...?geoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency
        ?.encode(),
    if (module != null) 'module': [for (final e in module!) e.encode()],
  };
}

/// At most one of `geo_replication_group_name`, `persistence_append_only_file_backup_frequency`, `persistence_redis_database_backup_frequency` on the `default_database` block of `azurerm_managed_redis`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.geoReplicationGroupName(...)`.
sealed class ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency {
  const ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency();

  /// Sets `geo_replication_group_name`.
  const factory ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.geoReplicationGroupName(
    TfArg<String> geoReplicationGroupName,
  ) = ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyGeoReplicationGroupName;

  /// Sets `persistence_append_only_file_backup_frequency`.
  const factory ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.persistenceAppendOnlyFileBackupFrequency(
    TfArg<String> persistenceAppendOnlyFileBackupFrequency,
  ) = ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyPersistenceAppendOnlyFileBackupFrequency;

  /// Sets `persistence_redis_database_backup_frequency`.
  const factory ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.persistenceRedisDatabaseBackupFrequency(
    ManagedRedisPersistenceRedisDatabaseBackupFrequency
    persistenceRedisDatabaseBackupFrequency,
  ) = ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.geoReplicationGroupName] choice: sets `geo_replication_group_name`.
final class ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyGeoReplicationGroupName
    extends
        ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency {
  const ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyGeoReplicationGroupName(
    this.geoReplicationGroupName,
  );

  final TfArg<String> geoReplicationGroupName;

  @internal
  @override
  String get blockKey => 'geo_replication_group_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'geo_replication_group_name': geoReplicationGroupName.toTfJson(),
  };
}

/// The [ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.persistenceAppendOnlyFileBackupFrequency] choice: sets `persistence_append_only_file_backup_frequency`.
final class ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyPersistenceAppendOnlyFileBackupFrequency
    extends
        ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency {
  const ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyPersistenceAppendOnlyFileBackupFrequency(
    this.persistenceAppendOnlyFileBackupFrequency,
  );

  final TfArg<String> persistenceAppendOnlyFileBackupFrequency;

  @internal
  @override
  String get blockKey => 'persistence_append_only_file_backup_frequency';

  @internal
  @override
  Map<String, Object?> encode() => {
    'persistence_append_only_file_backup_frequency':
        persistenceAppendOnlyFileBackupFrequency.toTfJson(),
  };
}

/// The [ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency.persistenceRedisDatabaseBackupFrequency] choice: sets `persistence_redis_database_backup_frequency`.
final class ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyChoice
    extends
        ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequency {
  const ManagedRedisDefaultDatabaseGeoReplicationGroupNameOrPersistenceAppendOnlyFileBackupFrequencyOrPersistenceRedisDatabaseBackupFrequencyChoice(
    this.persistenceRedisDatabaseBackupFrequency,
  );

  final ManagedRedisPersistenceRedisDatabaseBackupFrequency
  persistenceRedisDatabaseBackupFrequency;

  @internal
  @override
  String get blockKey => 'persistence_redis_database_backup_frequency';

  @internal
  @override
  Map<String, Object?> encode() => {
    'persistence_redis_database_backup_frequency':
        persistenceRedisDatabaseBackupFrequency.toTfJson(),
  };
}

/// `client_protocol` — derived from the provider schema description.
extension type const ManagedRedisClientProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ManagedRedisClientProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ManagedRedisClientProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedRedisClientProtocol.arg(TfArg<String> arg) : this._(arg);

  static const encrypted = ManagedRedisClientProtocol._(
    TfArgLiteral('Encrypted'),
  );
  static const plaintext = ManagedRedisClientProtocol._(
    TfArgLiteral('Plaintext'),
  );

  static const List<ManagedRedisClientProtocol> values = [encrypted, plaintext];
}

/// `clustering_policy` — derived from the provider schema description.
extension type const ManagedRedisClusteringPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ManagedRedisClusteringPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ManagedRedisClusteringPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedRedisClusteringPolicy.arg(TfArg<String> arg) : this._(arg);

  static const enterprisecluster = ManagedRedisClusteringPolicy._(
    TfArgLiteral('EnterpriseCluster'),
  );
  static const nocluster = ManagedRedisClusteringPolicy._(
    TfArgLiteral('NoCluster'),
  );
  static const osscluster = ManagedRedisClusteringPolicy._(
    TfArgLiteral('OSSCluster'),
  );

  static const List<ManagedRedisClusteringPolicy> values = [
    enterprisecluster,
    nocluster,
    osscluster,
  ];
}

/// `eviction_policy` — derived from the provider schema description.
extension type const ManagedRedisEvictionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ManagedRedisEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ManagedRedisEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedRedisEvictionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const allkeyslfu = ManagedRedisEvictionPolicy._(
    TfArgLiteral('AllKeysLFU'),
  );
  static const allkeyslru = ManagedRedisEvictionPolicy._(
    TfArgLiteral('AllKeysLRU'),
  );
  static const allkeysrandom = ManagedRedisEvictionPolicy._(
    TfArgLiteral('AllKeysRandom'),
  );
  static const noeviction = ManagedRedisEvictionPolicy._(
    TfArgLiteral('NoEviction'),
  );
  static const volatilelfu = ManagedRedisEvictionPolicy._(
    TfArgLiteral('VolatileLFU'),
  );
  static const volatilelru = ManagedRedisEvictionPolicy._(
    TfArgLiteral('VolatileLRU'),
  );
  static const volatilerandom = ManagedRedisEvictionPolicy._(
    TfArgLiteral('VolatileRandom'),
  );
  static const volatilettl = ManagedRedisEvictionPolicy._(
    TfArgLiteral('VolatileTTL'),
  );

  static const List<ManagedRedisEvictionPolicy> values = [
    allkeyslfu,
    allkeyslru,
    allkeysrandom,
    noeviction,
    volatilelfu,
    volatilelru,
    volatilerandom,
    volatilettl,
  ];
}

/// `persistence_redis_database_backup_frequency` — derived from the provider schema description.
extension type const ManagedRedisPersistenceRedisDatabaseBackupFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  ManagedRedisPersistenceRedisDatabaseBackupFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ManagedRedisPersistenceRedisDatabaseBackupFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ManagedRedisPersistenceRedisDatabaseBackupFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const v12h = ManagedRedisPersistenceRedisDatabaseBackupFrequency._(
    TfArgLiteral('12h'),
  );
  static const v1h = ManagedRedisPersistenceRedisDatabaseBackupFrequency._(
    TfArgLiteral('1h'),
  );
  static const v6h = ManagedRedisPersistenceRedisDatabaseBackupFrequency._(
    TfArgLiteral('6h'),
  );

  static const List<ManagedRedisPersistenceRedisDatabaseBackupFrequency>
  values = [v12h, v1h, v6h];
}

/// Typed helper for the `default_database.module` block of
/// `azurerm_managed_redis` (derived from provider schema).
@immutable
final class ManagedRedisModule {
  const ManagedRedisModule({this.args, required this.name});

  final TfArg<String>? args;

  final ManagedRedisModuleName name;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const ManagedRedisModuleName._(TfArg<String> _)
    implements TfArg<String> {
  ManagedRedisModuleName.variable(String name) : this._(TfArg.variable(name));
  ManagedRedisModuleName.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedRedisModuleName.arg(TfArg<String> arg) : this._(arg);

  static const redisbloom = ManagedRedisModuleName._(
    TfArgLiteral('RedisBloom'),
  );
  static const redistimeseries = ManagedRedisModuleName._(
    TfArgLiteral('RedisTimeSeries'),
  );
  static const redisearch = ManagedRedisModuleName._(
    TfArgLiteral('RediSearch'),
  );
  static const redisjson = ManagedRedisModuleName._(TfArgLiteral('RedisJSON'));

  static const List<ManagedRedisModuleName> values = [
    redisbloom,
    redistimeseries,
    redisearch,
    redisjson,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_managed_redis` (derived from provider schema).
@immutable
final class ManagedRedisIdentity {
  const ManagedRedisIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_managed_redis`.
final class AzurermManagedRedis extends Resource {
  static const String tfType = 'azurerm_managed_redis';

  AzurermManagedRedis(
    super.localName, {
    TfArg<bool>? highAvailabilityEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    ManagedRedisPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    ManagedRedisCustomerManagedKey? customerManagedKey,
    ManagedRedisDefaultDatabase? defaultDatabase,
    ManagedRedisIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'high_availability_enabled': ?highAvailabilityEnabled,
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (defaultDatabase != null)
             'default_database': TfArg.literal(defaultDatabase.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedRedisSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedRedis>`.
  RefTo<AzurermManagedRedis> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `high_availability_enabled` attribute.
  TfRef<bool> get highAvailabilityEnabled =>
      TfRef.attribute<bool>(this, 'high_availability_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

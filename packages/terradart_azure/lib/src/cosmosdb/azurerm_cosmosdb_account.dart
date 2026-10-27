// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_account`.
const Set<String> _azurermCosmosdbAccountSensitive = <String>{
  'primary_key',
  'primary_mongodb_connection_string',
  'primary_readonly_key',
  'primary_readonly_mongodb_connection_string',
  'primary_readonly_sql_connection_string',
  'primary_sql_connection_string',
  'secondary_key',
  'secondary_mongodb_connection_string',
  'secondary_readonly_key',
  'secondary_readonly_mongodb_connection_string',
  'secondary_readonly_sql_connection_string',
  'secondary_sql_connection_string',
};

/// Cosmosdb Account Create enum for `create_mode`.
extension type const CosmosdbAccountCreateMode._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountCreateMode.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountCreateMode.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountCreateMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = CosmosdbAccountCreateMode._(
    TfArgLiteral('Default'),
  );
  static const restore = CosmosdbAccountCreateMode._(TfArgLiteral('Restore'));

  static const List<CosmosdbAccountCreateMode> values = [defaultCase, restore];
}

/// Cosmosdb Account enum for `kind`.
extension type const CosmosdbAccountKind._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountKind.variable(String name) : this._(TfArg.variable(name));
  CosmosdbAccountKind.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountKind.arg(TfArg<String> arg) : this._(arg);

  static const globaldocumentdb = CosmosdbAccountKind._(
    TfArgLiteral('GlobalDocumentDB'),
  );
  static const mongodb = CosmosdbAccountKind._(TfArgLiteral('MongoDB'));
  static const parse = CosmosdbAccountKind._(TfArgLiteral('Parse'));

  static const List<CosmosdbAccountKind> values = [
    globaldocumentdb,
    mongodb,
    parse,
  ];
}

/// Cosmosdb Account Mongo Server enum for `mongo_server_version`.
extension type const CosmosdbAccountMongoServerVersion._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountMongoServerVersion.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountMongoServerVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountMongoServerVersion.arg(TfArg<String> arg) : this._(arg);

  static const v5p0 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('5.0'));
  static const v4p2 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('4.2'));
  static const v4p0 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('4.0'));
  static const v7p0 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('7.0'));
  static const v6p0 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('6.0'));
  static const v3p6 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('3.6'));
  static const v3p2 = CosmosdbAccountMongoServerVersion._(TfArgLiteral('3.2'));

  static const List<CosmosdbAccountMongoServerVersion> values = [
    v5p0,
    v4p2,
    v4p0,
    v7p0,
    v6p0,
    v3p6,
    v3p2,
  ];
}

/// Typed helper for the `analytical_storage` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountAnalyticalStorage {
  const CosmosdbAccountAnalyticalStorage({required this.schemaType});

  final CosmosdbAccountSchemaType schemaType;

  @internal
  Map<String, Object?> encode() => {'schema_type': schemaType.toTfJson()};
}

/// `schema_type` — derived from the provider schema description.
extension type const CosmosdbAccountSchemaType._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountSchemaType.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountSchemaType.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountSchemaType.arg(TfArg<String> arg) : this._(arg);

  static const fullfidelity = CosmosdbAccountSchemaType._(
    TfArgLiteral('FullFidelity'),
  );
  static const welldefined = CosmosdbAccountSchemaType._(
    TfArgLiteral('WellDefined'),
  );

  static const List<CosmosdbAccountSchemaType> values = [
    fullfidelity,
    welldefined,
  ];
}

/// Typed helper for the `backup` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountBackup {
  const CosmosdbAccountBackup({
    this.intervalInMinutes,
    this.retentionInHours,
    this.storageRedundancy,
    this.tier,
    required this.type,
  });

  final TfArg<num>? intervalInMinutes;

  final TfArg<num>? retentionInHours;

  final CosmosdbAccountStorageRedundancy? storageRedundancy;

  final CosmosdbAccountTier? tier;

  final CosmosdbAccountType type;

  @internal
  Map<String, Object?> encode() => {
    'interval_in_minutes': ?intervalInMinutes?.toTfJson(),
    'retention_in_hours': ?retentionInHours?.toTfJson(),
    'storage_redundancy': ?storageRedundancy?.toTfJson(),
    'tier': ?tier?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `storage_redundancy` — derived from the provider schema description.
extension type const CosmosdbAccountStorageRedundancy._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountStorageRedundancy.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountStorageRedundancy.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountStorageRedundancy.arg(TfArg<String> arg) : this._(arg);

  static const geo = CosmosdbAccountStorageRedundancy._(TfArgLiteral('Geo'));
  static const local = CosmosdbAccountStorageRedundancy._(
    TfArgLiteral('Local'),
  );
  static const zone = CosmosdbAccountStorageRedundancy._(TfArgLiteral('Zone'));

  static const List<CosmosdbAccountStorageRedundancy> values = [
    geo,
    local,
    zone,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const CosmosdbAccountTier._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountTier.variable(String name) : this._(TfArg.variable(name));
  CosmosdbAccountTier.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountTier.arg(TfArg<String> arg) : this._(arg);

  static const continuous7days = CosmosdbAccountTier._(
    TfArgLiteral('Continuous7Days'),
  );
  static const continuous30days = CosmosdbAccountTier._(
    TfArgLiteral('Continuous30Days'),
  );

  static const List<CosmosdbAccountTier> values = [
    continuous7days,
    continuous30days,
  ];
}

/// `type` — derived from the provider schema description.
extension type const CosmosdbAccountType._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountType.variable(String name) : this._(TfArg.variable(name));
  CosmosdbAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountType.arg(TfArg<String> arg) : this._(arg);

  static const continuous = CosmosdbAccountType._(TfArgLiteral('Continuous'));
  static const periodic = CosmosdbAccountType._(TfArgLiteral('Periodic'));

  static const List<CosmosdbAccountType> values = [continuous, periodic];
}

/// Typed helper for the `capabilities` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountCapabilities {
  const CosmosdbAccountCapabilities({required this.name});

  final CosmosdbAccountCapabilitiesName name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// `name` — derived from the provider schema description.
extension type const CosmosdbAccountCapabilitiesName._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountCapabilitiesName.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountCapabilitiesName.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountCapabilitiesName.arg(TfArg<String> arg) : this._(arg);

  static const enableaggregationpipeline = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableAggregationPipeline'),
  );
  static const enablecassandra = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableCassandra'),
  );
  static const enablegremlin = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableGremlin'),
  );
  static const enabletable = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableTable'),
  );
  static const enableserverless = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableServerless'),
  );
  static const enablemongo = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableMongo'),
  );
  static const enablemongo16mbdocumentsupport =
      CosmosdbAccountCapabilitiesName._(
        TfArgLiteral('EnableMongo16MBDocumentSupport'),
      );
  static const mongodbv3p4 = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('MongoDBv3.4'),
  );
  static const mongoenabledoclevelttl = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('mongoEnableDocLevelTTL'),
  );
  static const deleteallitemsbypartitionkey = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('DeleteAllItemsByPartitionKey'),
  );
  static const disableratelimitingresponses = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('DisableRateLimitingResponses'),
  );
  static const allowselfserveupgradetomongo36 =
      CosmosdbAccountCapabilitiesName._(
        TfArgLiteral('AllowSelfServeUpgradeToMongo36'),
      );
  static const enablemongoretryablewrites = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableMongoRetryableWrites'),
  );
  static const enablemongorolebasedaccesscontrol =
      CosmosdbAccountCapabilitiesName._(
        TfArgLiteral('EnableMongoRoleBasedAccessControl'),
      );
  static const enableuniquecompoundnesteddocs =
      CosmosdbAccountCapabilitiesName._(
        TfArgLiteral('EnableUniqueCompoundNestedDocs'),
      );
  static const enablenosqlvectorsearch = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableNoSQLVectorSearch'),
  );
  static const enablenosqlfulltextsearch = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableNoSQLFullTextSearch'),
  );
  static const enablettloncustompath = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableTtlOnCustomPath'),
  );
  static const enablepartialuniqueindex = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnablePartialUniqueIndex'),
  );
  static const enablefabricnetworkaclbypass = CosmosdbAccountCapabilitiesName._(
    TfArgLiteral('EnableFabricNetworkAclBypass'),
  );

  static const List<CosmosdbAccountCapabilitiesName> values = [
    enableaggregationpipeline,
    enablecassandra,
    enablegremlin,
    enabletable,
    enableserverless,
    enablemongo,
    enablemongo16mbdocumentsupport,
    mongodbv3p4,
    mongoenabledoclevelttl,
    deleteallitemsbypartitionkey,
    disableratelimitingresponses,
    allowselfserveupgradetomongo36,
    enablemongoretryablewrites,
    enablemongorolebasedaccesscontrol,
    enableuniquecompoundnesteddocs,
    enablenosqlvectorsearch,
    enablenosqlfulltextsearch,
    enablettloncustompath,
    enablepartialuniqueindex,
    enablefabricnetworkaclbypass,
  ];
}

/// Typed helper for the `capacity` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountCapacity {
  const CosmosdbAccountCapacity({required this.totalThroughputLimit});

  final TfArg<num> totalThroughputLimit;

  @internal
  Map<String, Object?> encode() => {
    'total_throughput_limit': totalThroughputLimit.toTfJson(),
  };
}

/// Typed helper for the `consistency_policy` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountConsistencyPolicy {
  const CosmosdbAccountConsistencyPolicy({
    required this.consistencyLevel,
    this.maxIntervalInSeconds,
    this.maxStalenessPrefix,
  });

  final CosmosdbAccountConsistencyLevel consistencyLevel;

  final TfArg<num>? maxIntervalInSeconds;

  final TfArg<num>? maxStalenessPrefix;

  @internal
  Map<String, Object?> encode() => {
    'consistency_level': consistencyLevel.toTfJson(),
    'max_interval_in_seconds': ?maxIntervalInSeconds?.toTfJson(),
    'max_staleness_prefix': ?maxStalenessPrefix?.toTfJson(),
  };
}

/// `consistency_level` — derived from the provider schema description.
extension type const CosmosdbAccountConsistencyLevel._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbAccountConsistencyLevel.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbAccountConsistencyLevel.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbAccountConsistencyLevel.arg(TfArg<String> arg) : this._(arg);

  static const boundedstaleness = CosmosdbAccountConsistencyLevel._(
    TfArgLiteral('BoundedStaleness'),
  );
  static const consistentprefix = CosmosdbAccountConsistencyLevel._(
    TfArgLiteral('ConsistentPrefix'),
  );
  static const eventual = CosmosdbAccountConsistencyLevel._(
    TfArgLiteral('Eventual'),
  );
  static const session = CosmosdbAccountConsistencyLevel._(
    TfArgLiteral('Session'),
  );
  static const strong = CosmosdbAccountConsistencyLevel._(
    TfArgLiteral('Strong'),
  );

  static const List<CosmosdbAccountConsistencyLevel> values = [
    boundedstaleness,
    consistentprefix,
    eventual,
    session,
    strong,
  ];
}

/// Typed helper for the `cors_rule` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountCorsRule {
  const CosmosdbAccountCorsRule({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  final TfArg<List<String>> allowedHeaders;

  final TfArg<List<String>> allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<List<String>> exposedHeaders;

  final TfArg<num>? maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allowed_headers': allowedHeaders.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'exposed_headers': exposedHeaders.toTfJson(),
    'max_age_in_seconds': ?maxAgeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `geo_location` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountGeoLocation {
  const CosmosdbAccountGeoLocation({
    required this.failoverPriority,
    required this.location,
    this.zoneRedundant,
  });

  final TfArg<num> failoverPriority;

  final TfArg<String> location;

  final TfArg<bool>? zoneRedundant;

  @internal
  Map<String, Object?> encode() => {
    'failover_priority': failoverPriority.toTfJson(),
    'location': location.toTfJson(),
    'zone_redundant': ?zoneRedundant?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountIdentity {
  const CosmosdbAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `restore` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountRestore {
  const CosmosdbAccountRestore({
    required this.restoreTimestampInUtc,
    required this.sourceCosmosdbAccountId,
    this.tablesToRestore,
    this.database,
    this.gremlinDatabase,
  });

  final TfArg<String> restoreTimestampInUtc;

  final TfArg<String> sourceCosmosdbAccountId;

  final TfArg<List<String>>? tablesToRestore;

  final List<CosmosdbAccountDatabase>? database;

  final List<CosmosdbAccountGremlinDatabase>? gremlinDatabase;

  @internal
  Map<String, Object?> encode() => {
    'restore_timestamp_in_utc': restoreTimestampInUtc.toTfJson(),
    'source_cosmosdb_account_id': sourceCosmosdbAccountId.toTfJson(),
    'tables_to_restore': ?tablesToRestore?.toTfJson(),
    if (database != null) 'database': [for (final e in database!) e.encode()],
    if (gremlinDatabase != null)
      'gremlin_database': [for (final e in gremlinDatabase!) e.encode()],
  };
}

/// Typed helper for the `restore.database` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountDatabase {
  const CosmosdbAccountDatabase({this.collectionNames, required this.name});

  final TfArg<List<String>>? collectionNames;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'collection_names': ?collectionNames?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `restore.gremlin_database` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountGremlinDatabase {
  const CosmosdbAccountGremlinDatabase({this.graphNames, required this.name});

  final TfArg<List<String>>? graphNames;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'graph_names': ?graphNames?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `virtual_network_rule` block of
/// `azurerm_cosmosdb_account` (derived from provider schema).
@immutable
final class CosmosdbAccountVirtualNetworkRule {
  const CosmosdbAccountVirtualNetworkRule({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
  });

  final TfArg<String> id;

  final TfArg<bool>? ignoreMissingVnetServiceEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'ignore_missing_vnet_service_endpoint': ?ignoreMissingVnetServiceEndpoint
        ?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cosmosdb_account`.
final class AzurermCosmosdbAccount extends Resource {
  static const String tfType = 'azurerm_cosmosdb_account';

  AzurermCosmosdbAccount(
    super.localName, {
    TfArg<bool>? accessKeyMetadataWritesEnabled,
    TfArg<bool>? analyticalStorageEnabled,
    TfArg<bool>? automaticFailoverEnabled,
    TfArg<bool>? burstCapacityEnabled,
    CosmosdbAccountCreateMode? createMode,
    TfArg<String>? defaultIdentityType,
    TfArg<bool>? freeTierEnabled,
    TfArg<List<String>>? ipRangeFilter,
    TfArg<bool>? isVirtualNetworkFilterEnabled,
    TfArg<String>? keyVaultKeyId,
    CosmosdbAccountKind? kind,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    TfArg<String>? minimalTlsVersion,
    CosmosdbAccountMongoServerVersion? mongoServerVersion,
    TfArg<bool>? multipleWriteLocationsEnabled,
    required TfArg<String> name,
    TfArg<bool>? networkAclBypassForAzureServices,
    TfArg<List<String>>? networkAclBypassIds,
    required TfArg<String> offerType,
    TfArg<bool>? partitionMergeEnabled,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    CosmosdbAccountAnalyticalStorage? analyticalStorage,
    CosmosdbAccountBackup? backup,
    List<CosmosdbAccountCapabilities>? capabilities,
    CosmosdbAccountCapacity? capacity,
    required CosmosdbAccountConsistencyPolicy consistencyPolicy,
    CosmosdbAccountCorsRule? corsRule,
    required List<CosmosdbAccountGeoLocation> geoLocation,
    CosmosdbAccountIdentity? identity,
    CosmosdbAccountRestore? restore,
    List<CosmosdbAccountVirtualNetworkRule>? virtualNetworkRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_key_metadata_writes_enabled':
               ?accessKeyMetadataWritesEnabled,
           'analytical_storage_enabled': ?analyticalStorageEnabled,
           'automatic_failover_enabled': ?automaticFailoverEnabled,
           'burst_capacity_enabled': ?burstCapacityEnabled,
           'create_mode': ?createMode,
           'default_identity_type': ?defaultIdentityType,
           'free_tier_enabled': ?freeTierEnabled,
           'ip_range_filter': ?ipRangeFilter,
           'is_virtual_network_filter_enabled': ?isVirtualNetworkFilterEnabled,
           'key_vault_key_id': ?keyVaultKeyId,
           'kind': ?kind,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'minimal_tls_version': ?minimalTlsVersion,
           'mongo_server_version': ?mongoServerVersion,
           'multiple_write_locations_enabled': ?multipleWriteLocationsEnabled,
           'name': name,
           'network_acl_bypass_for_azure_services':
               ?networkAclBypassForAzureServices,
           'network_acl_bypass_ids': ?networkAclBypassIds,
           'offer_type': offerType,
           'partition_merge_enabled': ?partitionMergeEnabled,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (analyticalStorage != null)
             'analytical_storage': TfArg.literal(analyticalStorage.encode()),
           if (backup != null) 'backup': TfArg.literal(backup.encode()),
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.encode(),
             ]),
           if (capacity != null) 'capacity': TfArg.literal(capacity.encode()),
           'consistency_policy': TfArg.literal(consistencyPolicy.encode()),
           if (corsRule != null) 'cors_rule': TfArg.literal(corsRule.encode()),
           'geo_location': TfArg.literal([
             for (final e in geoLocation) e.encode(),
           ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (restore != null) 'restore': TfArg.literal(restore.encode()),
           if (virtualNetworkRule != null)
             'virtual_network_rule': TfArg.literal([
               for (final e in virtualNetworkRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbAccount>`.
  RefTo<AzurermCosmosdbAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `primary_mongodb_connection_string` attribute.
  TfRef<String> get primaryMongodbConnectionString =>
      TfRef.attribute<String>(this, 'primary_mongodb_connection_string');

  /// Reference to `primary_readonly_key` attribute.
  TfRef<String> get primaryReadonlyKey =>
      TfRef.attribute<String>(this, 'primary_readonly_key');

  /// Reference to `primary_readonly_mongodb_connection_string` attribute.
  TfRef<String> get primaryReadonlyMongodbConnectionString =>
      TfRef.attribute<String>(
        this,
        'primary_readonly_mongodb_connection_string',
      );

  /// Reference to `primary_readonly_sql_connection_string` attribute.
  TfRef<String> get primaryReadonlySqlConnectionString =>
      TfRef.attribute<String>(this, 'primary_readonly_sql_connection_string');

  /// Reference to `primary_sql_connection_string` attribute.
  TfRef<String> get primarySqlConnectionString =>
      TfRef.attribute<String>(this, 'primary_sql_connection_string');

  /// Reference to `read_endpoints` attribute.
  TfRef<List<String>> get readEndpoints =>
      TfRef.attribute<List<String>>(this, 'read_endpoints');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `secondary_mongodb_connection_string` attribute.
  TfRef<String> get secondaryMongodbConnectionString =>
      TfRef.attribute<String>(this, 'secondary_mongodb_connection_string');

  /// Reference to `secondary_readonly_key` attribute.
  TfRef<String> get secondaryReadonlyKey =>
      TfRef.attribute<String>(this, 'secondary_readonly_key');

  /// Reference to `secondary_readonly_mongodb_connection_string` attribute.
  TfRef<String> get secondaryReadonlyMongodbConnectionString =>
      TfRef.attribute<String>(
        this,
        'secondary_readonly_mongodb_connection_string',
      );

  /// Reference to `secondary_readonly_sql_connection_string` attribute.
  TfRef<String> get secondaryReadonlySqlConnectionString =>
      TfRef.attribute<String>(this, 'secondary_readonly_sql_connection_string');

  /// Reference to `secondary_sql_connection_string` attribute.
  TfRef<String> get secondarySqlConnectionString =>
      TfRef.attribute<String>(this, 'secondary_sql_connection_string');

  /// Reference to `write_endpoints` attribute.
  TfRef<List<String>> get writeEndpoints =>
      TfRef.attribute<List<String>>(this, 'write_endpoints');

  /// Reference to `access_key_metadata_writes_enabled` attribute.
  TfRef<bool> get accessKeyMetadataWritesEnabled =>
      TfRef.attribute<bool>(this, 'access_key_metadata_writes_enabled');

  /// Reference to `analytical_storage_enabled` attribute.
  TfRef<bool> get analyticalStorageEnabled =>
      TfRef.attribute<bool>(this, 'analytical_storage_enabled');

  /// Reference to `automatic_failover_enabled` attribute.
  TfRef<bool> get automaticFailoverEnabled =>
      TfRef.attribute<bool>(this, 'automatic_failover_enabled');

  /// Reference to `burst_capacity_enabled` attribute.
  TfRef<bool> get burstCapacityEnabled =>
      TfRef.attribute<bool>(this, 'burst_capacity_enabled');

  /// Reference to `create_mode` attribute.
  TfRef<String> get createMode => TfRef.attribute<String>(this, 'create_mode');

  /// Reference to `default_identity_type` attribute.
  TfRef<String> get defaultIdentityType =>
      TfRef.attribute<String>(this, 'default_identity_type');

  /// Reference to `free_tier_enabled` attribute.
  TfRef<bool> get freeTierEnabled =>
      TfRef.attribute<bool>(this, 'free_tier_enabled');

  /// Reference to `ip_range_filter` attribute.
  TfRef<List<String>> get ipRangeFilter =>
      TfRef.attribute<List<String>>(this, 'ip_range_filter');

  /// Reference to `is_virtual_network_filter_enabled` attribute.
  TfRef<bool> get isVirtualNetworkFilterEnabled =>
      TfRef.attribute<bool>(this, 'is_virtual_network_filter_enabled');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimal_tls_version` attribute.
  TfRef<String> get minimalTlsVersion =>
      TfRef.attribute<String>(this, 'minimal_tls_version');

  /// Reference to `mongo_server_version` attribute.
  TfRef<String> get mongoServerVersion =>
      TfRef.attribute<String>(this, 'mongo_server_version');

  /// Reference to `multiple_write_locations_enabled` attribute.
  TfRef<bool> get multipleWriteLocationsEnabled =>
      TfRef.attribute<bool>(this, 'multiple_write_locations_enabled');

  /// Reference to `network_acl_bypass_for_azure_services` attribute.
  TfRef<bool> get networkAclBypassForAzureServices =>
      TfRef.attribute<bool>(this, 'network_acl_bypass_for_azure_services');

  /// Reference to `network_acl_bypass_ids` attribute.
  TfRef<List<String>> get networkAclBypassIds =>
      TfRef.attribute<List<String>>(this, 'network_acl_bypass_ids');

  /// Reference to `offer_type` attribute.
  TfRef<String> get offerType => TfRef.attribute<String>(this, 'offer_type');

  /// Reference to `partition_merge_enabled` attribute.
  TfRef<bool> get partitionMergeEnabled =>
      TfRef.attribute<bool>(this, 'partition_merge_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

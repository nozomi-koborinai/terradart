// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mongo_cluster`.
const Set<String> _azurermMongoClusterSensitive = <String>{
  'administrator_password',
  'connection_strings',
};

/// Mongo Cluster Authentication enum for `authentication_methods`.
extension type const MongoClusterAuthenticationMethods._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterAuthenticationMethods.variable(String name)
    : this._(TfArg.variable(name));
  MongoClusterAuthenticationMethods.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterAuthenticationMethods.arg(TfArg<String> arg) : this._(arg);

  static const microsoftentraid = MongoClusterAuthenticationMethods._(
    TfArgLiteral('MicrosoftEntraID'),
  );
  static const nativeauth = MongoClusterAuthenticationMethods._(
    TfArgLiteral('NativeAuth'),
  );

  static const List<MongoClusterAuthenticationMethods> values = [
    microsoftentraid,
    nativeauth,
  ];
}

/// Mongo Cluster Compute enum for `compute_tier`.
extension type const MongoClusterComputeTier._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterComputeTier.variable(String name) : this._(TfArg.variable(name));
  MongoClusterComputeTier.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterComputeTier.arg(TfArg<String> arg) : this._(arg);

  static const free = MongoClusterComputeTier._(TfArgLiteral('Free'));
  static const m10 = MongoClusterComputeTier._(TfArgLiteral('M10'));
  static const m20 = MongoClusterComputeTier._(TfArgLiteral('M20'));
  static const m25 = MongoClusterComputeTier._(TfArgLiteral('M25'));
  static const m30 = MongoClusterComputeTier._(TfArgLiteral('M30'));
  static const m40 = MongoClusterComputeTier._(TfArgLiteral('M40'));
  static const m50 = MongoClusterComputeTier._(TfArgLiteral('M50'));
  static const m60 = MongoClusterComputeTier._(TfArgLiteral('M60'));
  static const m80 = MongoClusterComputeTier._(TfArgLiteral('M80'));
  static const m200 = MongoClusterComputeTier._(TfArgLiteral('M200'));

  static const List<MongoClusterComputeTier> values = [
    free,
    m10,
    m20,
    m25,
    m30,
    m40,
    m50,
    m60,
    m80,
    m200,
  ];
}

/// Mongo Cluster Create enum for `create_mode`.
extension type const MongoClusterCreateMode._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterCreateMode.variable(String name) : this._(TfArg.variable(name));
  MongoClusterCreateMode.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterCreateMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MongoClusterCreateMode._(TfArgLiteral('Default'));
  static const georeplica = MongoClusterCreateMode._(
    TfArgLiteral('GeoReplica'),
  );
  static const pointintimerestore = MongoClusterCreateMode._(
    TfArgLiteral('PointInTimeRestore'),
  );

  static const List<MongoClusterCreateMode> values = [
    defaultCase,
    georeplica,
    pointintimerestore,
  ];
}

/// Mongo Cluster High Availability enum for `high_availability_mode`.
extension type const MongoClusterHighAvailabilityMode._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterHighAvailabilityMode.variable(String name)
    : this._(TfArg.variable(name));
  MongoClusterHighAvailabilityMode.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterHighAvailabilityMode.arg(TfArg<String> arg) : this._(arg);

  static const disabled = MongoClusterHighAvailabilityMode._(
    TfArgLiteral('Disabled'),
  );
  static const zoneredundantpreferred = MongoClusterHighAvailabilityMode._(
    TfArgLiteral('ZoneRedundantPreferred'),
  );

  static const List<MongoClusterHighAvailabilityMode> values = [
    disabled,
    zoneredundantpreferred,
  ];
}

/// Mongo Cluster Public Network enum for `public_network_access`.
extension type const MongoClusterPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  MongoClusterPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterPublicNetworkAccess.arg(TfArg<String> arg) : this._(arg);

  static const disabled = MongoClusterPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = MongoClusterPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<MongoClusterPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Mongo Cluster Storage enum for `storage_type`.
extension type const MongoClusterStorageType._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterStorageType.variable(String name) : this._(TfArg.variable(name));
  MongoClusterStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterStorageType.arg(TfArg<String> arg) : this._(arg);

  static const premiumssd = MongoClusterStorageType._(
    TfArgLiteral('PremiumSSD'),
  );
  static const premiumssdv2 = MongoClusterStorageType._(
    TfArgLiteral('PremiumSSDv2'),
  );

  static const List<MongoClusterStorageType> values = [
    premiumssd,
    premiumssdv2,
  ];
}

/// Mongo Cluster enum for `version`.
extension type const MongoClusterVersion._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterVersion.variable(String name) : this._(TfArg.variable(name));
  MongoClusterVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterVersion.arg(TfArg<String> arg) : this._(arg);

  static const v5p0 = MongoClusterVersion._(TfArgLiteral('5.0'));
  static const v6p0 = MongoClusterVersion._(TfArgLiteral('6.0'));
  static const v7p0 = MongoClusterVersion._(TfArgLiteral('7.0'));
  static const v8p0 = MongoClusterVersion._(TfArgLiteral('8.0'));

  static const List<MongoClusterVersion> values = [v5p0, v6p0, v7p0, v8p0];
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_mongo_cluster` (derived from provider schema).
@immutable
final class MongoClusterCustomerManagedKey {
  const MongoClusterCustomerManagedKey({
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

/// Typed helper for the `identity` block of
/// `azurerm_mongo_cluster` (derived from provider schema).
@immutable
final class MongoClusterIdentity {
  const MongoClusterIdentity({required this.identityIds, required this.type});

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `restore` block of
/// `azurerm_mongo_cluster` (derived from provider schema).
@immutable
final class MongoClusterRestore {
  const MongoClusterRestore({
    required this.pointInTimeUtc,
    required this.sourceId,
  });

  final TfArg<String> pointInTimeUtc;

  final TfArg<String> sourceId;

  @internal
  Map<String, Object?> encode() => {
    'point_in_time_utc': pointInTimeUtc.toTfJson(),
    'source_id': sourceId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mongo_cluster`.
final class AzurermMongoCluster extends Resource {
  static const String tfType = 'azurerm_mongo_cluster';

  AzurermMongoCluster(
    super.localName, {
    Sensitive<String>? administratorPassword,
    TfArg<String>? administratorUsername,
    List<MongoClusterAuthenticationMethods>? authenticationMethods,
    MongoClusterComputeTier? computeTier,
    TfArg<bool>? cosmosDbNetworkBypassEnabled,
    MongoClusterCreateMode? createMode,
    TfArg<bool>? dataApiModeEnabled,
    MongoClusterHighAvailabilityMode? highAvailabilityMode,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<List<String>>? previewFeatures,
    MongoClusterPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? shardCount,
    TfArg<String>? sourceLocation,
    TfArg<String>? sourceServerId,
    TfArg<num>? storageSizeInGb,
    MongoClusterStorageType? storageType,
    TfArg<Map<String, String>>? tags,
    MongoClusterVersion? version,
    MongoClusterCustomerManagedKey? customerManagedKey,
    MongoClusterIdentity? identity,
    MongoClusterRestore? restore,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_password': ?administratorPassword,
           'administrator_username': ?administratorUsername,
           if (authenticationMethods != null)
             'authentication_methods': TfArg.literal([
               for (final e in authenticationMethods) e.toTfJson(),
             ]),
           'compute_tier': ?computeTier,
           'cosmos_db_network_bypass_enabled': ?cosmosDbNetworkBypassEnabled,
           'create_mode': ?createMode,
           'data_api_mode_enabled': ?dataApiModeEnabled,
           'high_availability_mode': ?highAvailabilityMode,
           'location': location,
           'name': name,
           'preview_features': ?previewFeatures,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shard_count': ?shardCount,
           'source_location': ?sourceLocation,
           'source_server_id': ?sourceServerId,
           'storage_size_in_gb': ?storageSizeInGb,
           'storage_type': ?storageType,
           'tags': ?tags,
           'version': ?version,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (restore != null) 'restore': TfArg.literal(restore.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMongoClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMongoCluster>`.
  RefTo<AzurermMongoCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_strings` attribute.
  TfRef<List<Map<String, Object?>>> get connectionStrings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_strings');

  /// Reference to `administrator_password` attribute.
  TfRef<String> get administratorPassword =>
      TfRef.attribute<String>(this, 'administrator_password');

  /// Reference to `administrator_username` attribute.
  TfRef<String> get administratorUsername =>
      TfRef.attribute<String>(this, 'administrator_username');

  /// Reference to `authentication_methods` attribute.
  TfRef<List<String>> get authenticationMethods =>
      TfRef.attribute<List<String>>(this, 'authentication_methods');

  /// Reference to `compute_tier` attribute.
  TfRef<String> get computeTier =>
      TfRef.attribute<String>(this, 'compute_tier');

  /// Reference to `cosmos_db_network_bypass_enabled` attribute.
  TfRef<bool> get cosmosDbNetworkBypassEnabled =>
      TfRef.attribute<bool>(this, 'cosmos_db_network_bypass_enabled');

  /// Reference to `create_mode` attribute.
  TfRef<String> get createMode => TfRef.attribute<String>(this, 'create_mode');

  /// Reference to `data_api_mode_enabled` attribute.
  TfRef<bool> get dataApiModeEnabled =>
      TfRef.attribute<bool>(this, 'data_api_mode_enabled');

  /// Reference to `high_availability_mode` attribute.
  TfRef<String> get highAvailabilityMode =>
      TfRef.attribute<String>(this, 'high_availability_mode');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `preview_features` attribute.
  TfRef<List<String>> get previewFeatures =>
      TfRef.attribute<List<String>>(this, 'preview_features');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `source_location` attribute.
  TfRef<String> get sourceLocation =>
      TfRef.attribute<String>(this, 'source_location');

  /// Reference to `source_server_id` attribute.
  TfRef<String> get sourceServerId =>
      TfRef.attribute<String>(this, 'source_server_id');

  /// Reference to `storage_size_in_gb` attribute.
  TfRef<num> get storageSizeInGb =>
      TfRef.attribute<num>(this, 'storage_size_in_gb');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}

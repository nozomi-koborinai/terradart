// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_postgresql_flexible_server`.
const Set<String> _azurermPostgresqlFlexibleServerSensitive = <String>{
  'administrator_password',
};

/// Postgresql Flexible Server Create enum for `create_mode`.
extension type const PostgresqlFlexibleServerCreateMode._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerCreateMode.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerCreateMode.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerCreateMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('Default'),
  );
  static const pointintimerestore = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('PointInTimeRestore'),
  );
  static const replica = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('Replica'),
  );
  static const revivedropped = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('ReviveDropped'),
  );
  static const georestore = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('GeoRestore'),
  );
  static const update = PostgresqlFlexibleServerCreateMode._(
    TfArgLiteral('Update'),
  );

  static const List<PostgresqlFlexibleServerCreateMode> values = [
    defaultCase,
    pointintimerestore,
    replica,
    revivedropped,
    georestore,
    update,
  ];
}

/// Postgresql Flexible Server Replication enum for `replication_role`.
extension type const PostgresqlFlexibleServerReplicationRole._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerReplicationRole.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerReplicationRole.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerReplicationRole.arg(TfArg<String> arg)
    : this._(arg);

  static const none = PostgresqlFlexibleServerReplicationRole._(
    TfArgLiteral('None'),
  );

  static const List<PostgresqlFlexibleServerReplicationRole> values = [none];
}

/// Postgresql Flexible Server Storage enum for `storage_tier`.
extension type const PostgresqlFlexibleServerStorageTier._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerStorageTier.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerStorageTier.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerStorageTier.arg(TfArg<String> arg)
    : this._(arg);

  static const p4 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P4'));
  static const p6 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P6'));
  static const p10 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P10'));
  static const p15 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P15'));
  static const p20 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P20'));
  static const p30 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P30'));
  static const p40 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P40'));
  static const p50 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P50'));
  static const p60 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P60'));
  static const p70 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P70'));
  static const p80 = PostgresqlFlexibleServerStorageTier._(TfArgLiteral('P80'));

  static const List<PostgresqlFlexibleServerStorageTier> values = [
    p4,
    p6,
    p10,
    p15,
    p20,
    p30,
    p40,
    p50,
    p60,
    p70,
    p80,
  ];
}

/// Postgresql Flexible Server Storage enum for `storage_type`.
extension type const PostgresqlFlexibleServerStorageType._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerStorageType.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerStorageType.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = PostgresqlFlexibleServerStorageType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const premiumv2Lrs = PostgresqlFlexibleServerStorageType._(
    TfArgLiteral('PremiumV2_LRS'),
  );

  static const List<PostgresqlFlexibleServerStorageType> values = [
    premiumLrs,
    premiumv2Lrs,
  ];
}

/// Postgresql Flexible Server enum for `version`.
extension type const PostgresqlFlexibleServerVersion._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerVersion.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerVersion.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerVersion.arg(TfArg<String> arg) : this._(arg);

  static const v18 = PostgresqlFlexibleServerVersion._(TfArgLiteral('18'));
  static const v15 = PostgresqlFlexibleServerVersion._(TfArgLiteral('15'));
  static const v14 = PostgresqlFlexibleServerVersion._(TfArgLiteral('14'));
  static const v11 = PostgresqlFlexibleServerVersion._(TfArgLiteral('11'));
  static const v17 = PostgresqlFlexibleServerVersion._(TfArgLiteral('17'));
  static const v16 = PostgresqlFlexibleServerVersion._(TfArgLiteral('16'));
  static const v13 = PostgresqlFlexibleServerVersion._(TfArgLiteral('13'));
  static const v12 = PostgresqlFlexibleServerVersion._(TfArgLiteral('12'));

  static const List<PostgresqlFlexibleServerVersion> values = [
    v18,
    v15,
    v14,
    v11,
    v17,
    v16,
    v13,
    v12,
  ];
}

/// At most one of `administrator_password`, `administrator_password_wo` on `azurerm_postgresql_flexible_server`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.administratorPassword(...)`.
sealed class PostgresqlFlexibleServerAdministratorPassword {
  const PostgresqlFlexibleServerAdministratorPassword();

  /// Sets `administrator_password`.
  const factory PostgresqlFlexibleServerAdministratorPassword.administratorPassword(
    Sensitive<String> administratorPassword,
  ) = PostgresqlFlexibleServerAdministratorPasswordChoice;

  /// Sets `administrator_password_wo`.
  const factory PostgresqlFlexibleServerAdministratorPassword.administratorPasswordWo(
    TfArg<String> administratorPasswordWo,
  ) = PostgresqlFlexibleServerAdministratorPasswordWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PostgresqlFlexibleServerAdministratorPassword.administratorPassword] choice: sets `administrator_password`.
final class PostgresqlFlexibleServerAdministratorPasswordChoice
    extends PostgresqlFlexibleServerAdministratorPassword {
  const PostgresqlFlexibleServerAdministratorPasswordChoice(
    this.administratorPassword,
  );

  final Sensitive<String> administratorPassword;

  @internal
  @override
  String get blockKey => 'administrator_password';

  @internal
  @override
  Map<String, Object?> encode() => {
    'administrator_password': administratorPassword.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'administrator_password': administratorPassword,
  };
}

/// The [PostgresqlFlexibleServerAdministratorPassword.administratorPasswordWo] choice: sets `administrator_password_wo`.
final class PostgresqlFlexibleServerAdministratorPasswordWo
    extends PostgresqlFlexibleServerAdministratorPassword {
  const PostgresqlFlexibleServerAdministratorPasswordWo(
    this.administratorPasswordWo,
  );

  final TfArg<String> administratorPasswordWo;

  @internal
  @override
  String get blockKey => 'administrator_password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'administrator_password_wo': administratorPasswordWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'administrator_password_wo': administratorPasswordWo,
  };
}

/// Typed helper for the `authentication` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerAuthentication {
  const PostgresqlFlexibleServerAuthentication({
    this.activeDirectoryAuthEnabled,
    this.passwordAuthEnabled,
    this.tenantId,
  });

  final TfArg<bool>? activeDirectoryAuthEnabled;

  final TfArg<bool>? passwordAuthEnabled;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'active_directory_auth_enabled': ?activeDirectoryAuthEnabled?.toTfJson(),
    'password_auth_enabled': ?passwordAuthEnabled?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `cluster` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerCluster {
  const PostgresqlFlexibleServerCluster({
    this.defaultDatabaseName,
    required this.size,
  });

  final TfArg<String>? defaultDatabaseName;

  final TfArg<num> size;

  @internal
  Map<String, Object?> encode() => {
    'default_database_name': ?defaultDatabaseName?.toTfJson(),
    'size': size.toTfJson(),
  };
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerCustomerManagedKey {
  const PostgresqlFlexibleServerCustomerManagedKey({
    this.geoBackupKeyVaultKeyId,
    this.geoBackupUserAssignedIdentityId,
    required this.keyVaultKeyId,
    this.primaryUserAssignedIdentityId,
  });

  final TfArg<String>? geoBackupKeyVaultKeyId;

  final TfArg<String>? geoBackupUserAssignedIdentityId;

  final TfArg<String> keyVaultKeyId;

  final TfArg<String>? primaryUserAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'geo_backup_key_vault_key_id': ?geoBackupKeyVaultKeyId?.toTfJson(),
    'geo_backup_user_assigned_identity_id': ?geoBackupUserAssignedIdentityId
        ?.toTfJson(),
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'primary_user_assigned_identity_id': ?primaryUserAssignedIdentityId
        ?.toTfJson(),
  };
}

/// Typed helper for the `high_availability` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerHighAvailability {
  const PostgresqlFlexibleServerHighAvailability({
    required this.mode,
    this.standbyAvailabilityZone,
  });

  final PostgresqlFlexibleServerMode mode;

  final TfArg<String>? standbyAvailabilityZone;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'standby_availability_zone': ?standbyAvailabilityZone?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const PostgresqlFlexibleServerMode._(TfArg<String> _)
    implements TfArg<String> {
  PostgresqlFlexibleServerMode.variable(String name)
    : this._(TfArg.variable(name));
  PostgresqlFlexibleServerMode.expression(String template)
    : this._(TfArg.expression(template));
  const PostgresqlFlexibleServerMode.arg(TfArg<String> arg) : this._(arg);

  static const samezone = PostgresqlFlexibleServerMode._(
    TfArgLiteral('SameZone'),
  );
  static const zoneredundant = PostgresqlFlexibleServerMode._(
    TfArgLiteral('ZoneRedundant'),
  );

  static const List<PostgresqlFlexibleServerMode> values = [
    samezone,
    zoneredundant,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerIdentity {
  const PostgresqlFlexibleServerIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window` block of
/// `azurerm_postgresql_flexible_server` (derived from provider schema).
@immutable
final class PostgresqlFlexibleServerMaintenanceWindow {
  const PostgresqlFlexibleServerMaintenanceWindow({
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

/// Factory wrapper for `azurerm_postgresql_flexible_server`.
final class AzurermPostgresqlFlexibleServer extends Resource {
  static const String tfType = 'azurerm_postgresql_flexible_server';

  AzurermPostgresqlFlexibleServer(
    super.localName, {
    TfArg<String>? administratorLogin,
    PostgresqlFlexibleServerAdministratorPassword? administratorPassword,
    TfArg<num>? administratorPasswordWoVersion,
    TfArg<bool>? autoGrowEnabled,
    TfArg<num>? backupRetentionDays,
    PostgresqlFlexibleServerCreateMode? createMode,
    TfArg<String>? delegatedSubnetId,
    TfArg<bool>? geoRedundantBackupEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? pointInTimeRestoreTimeInUtc,
    TfArg<String>? privateDnsZoneId,
    TfArg<bool>? publicNetworkAccessEnabled,
    PostgresqlFlexibleServerReplicationRole? replicationRole,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? skuName,
    TfArg<String>? sourceServerId,
    TfArg<num>? storageIops,
    TfArg<num>? storageMb,
    TfArg<num>? storageThroughput,
    PostgresqlFlexibleServerStorageTier? storageTier,
    PostgresqlFlexibleServerStorageType? storageType,
    TfArg<Map<String, String>>? tags,
    PostgresqlFlexibleServerVersion? version,
    TfArg<String>? zone,
    PostgresqlFlexibleServerAuthentication? authentication,
    PostgresqlFlexibleServerCluster? cluster,
    PostgresqlFlexibleServerCustomerManagedKey? customerManagedKey,
    PostgresqlFlexibleServerHighAvailability? highAvailability,
    PostgresqlFlexibleServerIdentity? identity,
    PostgresqlFlexibleServerMaintenanceWindow? maintenanceWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_login': ?administratorLogin,
           ...?administratorPassword?.argMap,
           'administrator_password_wo_version': ?administratorPasswordWoVersion,
           'auto_grow_enabled': ?autoGrowEnabled,
           'backup_retention_days': ?backupRetentionDays,
           'create_mode': ?createMode,
           'delegated_subnet_id': ?delegatedSubnetId,
           'geo_redundant_backup_enabled': ?geoRedundantBackupEnabled,
           'location': location,
           'name': name,
           'point_in_time_restore_time_in_utc': ?pointInTimeRestoreTimeInUtc,
           'private_dns_zone_id': ?privateDnsZoneId,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'replication_role': ?replicationRole,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': ?skuName,
           'source_server_id': ?sourceServerId,
           'storage_iops': ?storageIops,
           'storage_mb': ?storageMb,
           'storage_throughput': ?storageThroughput,
           'storage_tier': ?storageTier,
           'storage_type': ?storageType,
           'tags': ?tags,
           'version': ?version,
           'zone': ?zone,
           if (authentication != null)
             'authentication': TfArg.literal(authentication.encode()),
           if (cluster != null) 'cluster': TfArg.literal(cluster.encode()),
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (highAvailability != null)
             'high_availability': TfArg.literal(highAvailability.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPostgresqlFlexibleServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServer>`.
  RefTo<AzurermPostgresqlFlexibleServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `administrator_password` attribute.
  TfRef<String> get administratorPassword =>
      TfRef.attribute<String>(this, 'administrator_password');

  /// Reference to `administrator_password_wo_version` attribute.
  TfRef<num> get administratorPasswordWoVersion =>
      TfRef.attribute<num>(this, 'administrator_password_wo_version');

  /// Reference to `auto_grow_enabled` attribute.
  TfRef<bool> get autoGrowEnabled =>
      TfRef.attribute<bool>(this, 'auto_grow_enabled');

  /// Reference to `backup_retention_days` attribute.
  TfRef<num> get backupRetentionDays =>
      TfRef.attribute<num>(this, 'backup_retention_days');

  /// Reference to `create_mode` attribute.
  TfRef<String> get createMode => TfRef.attribute<String>(this, 'create_mode');

  /// Reference to `delegated_subnet_id` attribute.
  TfRef<String> get delegatedSubnetId =>
      TfRef.attribute<String>(this, 'delegated_subnet_id');

  /// Reference to `geo_redundant_backup_enabled` attribute.
  TfRef<bool> get geoRedundantBackupEnabled =>
      TfRef.attribute<bool>(this, 'geo_redundant_backup_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `point_in_time_restore_time_in_utc` attribute.
  TfRef<String> get pointInTimeRestoreTimeInUtc =>
      TfRef.attribute<String>(this, 'point_in_time_restore_time_in_utc');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `replication_role` attribute.
  TfRef<String> get replicationRole =>
      TfRef.attribute<String>(this, 'replication_role');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `source_server_id` attribute.
  TfRef<String> get sourceServerId =>
      TfRef.attribute<String>(this, 'source_server_id');

  /// Reference to `storage_iops` attribute.
  TfRef<num> get storageIops => TfRef.attribute<num>(this, 'storage_iops');

  /// Reference to `storage_mb` attribute.
  TfRef<num> get storageMb => TfRef.attribute<num>(this, 'storage_mb');

  /// Reference to `storage_throughput` attribute.
  TfRef<num> get storageThroughput =>
      TfRef.attribute<num>(this, 'storage_throughput');

  /// Reference to `storage_tier` attribute.
  TfRef<String> get storageTier =>
      TfRef.attribute<String>(this, 'storage_tier');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

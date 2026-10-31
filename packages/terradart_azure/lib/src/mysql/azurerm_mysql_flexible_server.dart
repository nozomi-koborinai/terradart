// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mysql_flexible_server`.
const Set<String> _azurermMysqlFlexibleServerSensitive = <String>{
  'administrator_password',
};

/// Mysql Flexible Server Create enum for `create_mode`.
extension type const MysqlFlexibleServerCreateMode._(TfArg<String> _)
    implements TfArg<String> {
  MysqlFlexibleServerCreateMode.variable(String name)
    : this._(TfArg.variable(name));
  MysqlFlexibleServerCreateMode.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlFlexibleServerCreateMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MysqlFlexibleServerCreateMode._(
    TfArgLiteral('Default'),
  );
  static const georestore = MysqlFlexibleServerCreateMode._(
    TfArgLiteral('GeoRestore'),
  );
  static const pointintimerestore = MysqlFlexibleServerCreateMode._(
    TfArgLiteral('PointInTimeRestore'),
  );
  static const replica = MysqlFlexibleServerCreateMode._(
    TfArgLiteral('Replica'),
  );

  static const List<MysqlFlexibleServerCreateMode> values = [
    defaultCase,
    georestore,
    pointintimerestore,
    replica,
  ];
}

/// Mysql Flexible Server Public Network enum for `public_network_access`.
extension type const MysqlFlexibleServerPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  MysqlFlexibleServerPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  MysqlFlexibleServerPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlFlexibleServerPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = MysqlFlexibleServerPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = MysqlFlexibleServerPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<MysqlFlexibleServerPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Mysql Flexible Server Replication enum for `replication_role`.
extension type const MysqlFlexibleServerReplicationRole._(TfArg<String> _)
    implements TfArg<String> {
  MysqlFlexibleServerReplicationRole.variable(String name)
    : this._(TfArg.variable(name));
  MysqlFlexibleServerReplicationRole.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlFlexibleServerReplicationRole.arg(TfArg<String> arg) : this._(arg);

  static const none = MysqlFlexibleServerReplicationRole._(
    TfArgLiteral('None'),
  );

  static const List<MysqlFlexibleServerReplicationRole> values = [none];
}

/// Mysql Flexible Server enum for `version`.
extension type const MysqlFlexibleServerVersion._(TfArg<String> _)
    implements TfArg<String> {
  MysqlFlexibleServerVersion.variable(String name)
    : this._(TfArg.variable(name));
  MysqlFlexibleServerVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlFlexibleServerVersion.arg(TfArg<String> arg) : this._(arg);

  static const v5p7 = MysqlFlexibleServerVersion._(TfArgLiteral('5.7'));
  static const v8p0p21 = MysqlFlexibleServerVersion._(TfArgLiteral('8.0.21'));
  static const v8p4 = MysqlFlexibleServerVersion._(TfArgLiteral('8.4'));

  static const List<MysqlFlexibleServerVersion> values = [v5p7, v8p0p21, v8p4];
}

/// At most one of `administrator_password`, `administrator_password_wo` on `azurerm_mysql_flexible_server`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.administratorPassword(...)`.
sealed class MysqlFlexibleServerAdministratorPassword {
  const MysqlFlexibleServerAdministratorPassword();

  /// Sets `administrator_password`.
  const factory MysqlFlexibleServerAdministratorPassword.administratorPassword(
    Sensitive<String> administratorPassword,
  ) = MysqlFlexibleServerAdministratorPasswordChoice;

  /// Sets `administrator_password_wo`.
  const factory MysqlFlexibleServerAdministratorPassword.administratorPasswordWo(
    TfArg<String> administratorPasswordWo,
  ) = MysqlFlexibleServerAdministratorPasswordWo;

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

/// The [MysqlFlexibleServerAdministratorPassword.administratorPassword] choice: sets `administrator_password`.
final class MysqlFlexibleServerAdministratorPasswordChoice
    extends MysqlFlexibleServerAdministratorPassword {
  const MysqlFlexibleServerAdministratorPasswordChoice(
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

/// The [MysqlFlexibleServerAdministratorPassword.administratorPasswordWo] choice: sets `administrator_password_wo`.
final class MysqlFlexibleServerAdministratorPasswordWo
    extends MysqlFlexibleServerAdministratorPassword {
  const MysqlFlexibleServerAdministratorPasswordWo(
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

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_mysql_flexible_server` (derived from provider schema).
@immutable
final class MysqlFlexibleServerCustomerManagedKey {
  const MysqlFlexibleServerCustomerManagedKey({
    this.geoBackupKeyVaultKeyId,
    this.geoBackupUserAssignedIdentityId,
    this.keyVaultKeyId,
    this.primaryUserAssignedIdentityId,
  });

  final TfArg<String>? geoBackupKeyVaultKeyId;

  final TfArg<String>? geoBackupUserAssignedIdentityId;

  final TfArg<String>? keyVaultKeyId;

  final TfArg<String>? primaryUserAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'geo_backup_key_vault_key_id': ?geoBackupKeyVaultKeyId?.toTfJson(),
    'geo_backup_user_assigned_identity_id': ?geoBackupUserAssignedIdentityId
        ?.toTfJson(),
    'key_vault_key_id': ?keyVaultKeyId?.toTfJson(),
    'primary_user_assigned_identity_id': ?primaryUserAssignedIdentityId
        ?.toTfJson(),
  };
}

/// Typed helper for the `high_availability` block of
/// `azurerm_mysql_flexible_server` (derived from provider schema).
@immutable
final class MysqlFlexibleServerHighAvailability {
  const MysqlFlexibleServerHighAvailability({
    required this.mode,
    this.standbyAvailabilityZone,
  });

  final MysqlFlexibleServerMode mode;

  final TfArg<String>? standbyAvailabilityZone;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'standby_availability_zone': ?standbyAvailabilityZone?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const MysqlFlexibleServerMode._(TfArg<String> _)
    implements TfArg<String> {
  MysqlFlexibleServerMode.variable(String name) : this._(TfArg.variable(name));
  MysqlFlexibleServerMode.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlFlexibleServerMode.arg(TfArg<String> arg) : this._(arg);

  static const zoneredundant = MysqlFlexibleServerMode._(
    TfArgLiteral('ZoneRedundant'),
  );
  static const samezone = MysqlFlexibleServerMode._(TfArgLiteral('SameZone'));

  static const List<MysqlFlexibleServerMode> values = [zoneredundant, samezone];
}

/// Typed helper for the `identity` block of
/// `azurerm_mysql_flexible_server` (derived from provider schema).
@immutable
final class MysqlFlexibleServerIdentity {
  const MysqlFlexibleServerIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window` block of
/// `azurerm_mysql_flexible_server` (derived from provider schema).
@immutable
final class MysqlFlexibleServerMaintenanceWindow {
  const MysqlFlexibleServerMaintenanceWindow({
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

/// Typed helper for the `storage` block of
/// `azurerm_mysql_flexible_server` (derived from provider schema).
@immutable
final class MysqlFlexibleServerStorage {
  const MysqlFlexibleServerStorage({
    this.autoGrowEnabled,
    this.ioScalingEnabled,
    this.iops,
    this.logOnDiskEnabled,
    this.sizeGb,
  });

  final TfArg<bool>? autoGrowEnabled;

  final TfArg<bool>? ioScalingEnabled;

  final TfArg<num>? iops;

  final TfArg<bool>? logOnDiskEnabled;

  final TfArg<num>? sizeGb;

  @internal
  Map<String, Object?> encode() => {
    'auto_grow_enabled': ?autoGrowEnabled?.toTfJson(),
    'io_scaling_enabled': ?ioScalingEnabled?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'log_on_disk_enabled': ?logOnDiskEnabled?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mysql_flexible_server`.
final class AzurermMysqlFlexibleServer extends Resource {
  static const String tfType = 'azurerm_mysql_flexible_server';

  AzurermMysqlFlexibleServer(
    super.localName, {
    TfArg<String>? administratorLogin,
    MysqlFlexibleServerAdministratorPassword? administratorPassword,
    TfArg<num>? administratorPasswordWoVersion,
    TfArg<num>? backupRetentionDays,
    MysqlFlexibleServerCreateMode? createMode,
    TfArg<String>? delegatedSubnetId,
    TfArg<bool>? geoRedundantBackupEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? pointInTimeRestoreTimeInUtc,
    TfArg<String>? privateDnsZoneId,
    MysqlFlexibleServerPublicNetworkAccess? publicNetworkAccess,
    MysqlFlexibleServerReplicationRole? replicationRole,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? skuName,
    TfArg<String>? sourceServerId,
    TfArg<Map<String, String>>? tags,
    MysqlFlexibleServerVersion? version,
    TfArg<String>? zone,
    MysqlFlexibleServerCustomerManagedKey? customerManagedKey,
    MysqlFlexibleServerHighAvailability? highAvailability,
    MysqlFlexibleServerIdentity? identity,
    MysqlFlexibleServerMaintenanceWindow? maintenanceWindow,
    MysqlFlexibleServerStorage? storage,
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
           'backup_retention_days': ?backupRetentionDays,
           'create_mode': ?createMode,
           'delegated_subnet_id': ?delegatedSubnetId,
           'geo_redundant_backup_enabled': ?geoRedundantBackupEnabled,
           'location': location,
           'name': name,
           'point_in_time_restore_time_in_utc': ?pointInTimeRestoreTimeInUtc,
           'private_dns_zone_id': ?privateDnsZoneId,
           'public_network_access': ?publicNetworkAccess,
           'replication_role': ?replicationRole,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': ?skuName,
           'source_server_id': ?sourceServerId,
           'tags': ?tags,
           'version': ?version,
           'zone': ?zone,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (highAvailability != null)
             'high_availability': TfArg.literal(highAvailability.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (storage != null) 'storage': TfArg.literal(storage.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMysqlFlexibleServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMysqlFlexibleServer>`.
  RefTo<AzurermMysqlFlexibleServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `replica_capacity` attribute.
  TfRef<num> get replicaCapacity =>
      TfRef.attribute<num>(this, 'replica_capacity');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `administrator_password` attribute.
  TfRef<String> get administratorPassword =>
      TfRef.attribute<String>(this, 'administrator_password');

  /// Reference to `administrator_password_wo_version` attribute.
  TfRef<num> get administratorPasswordWoVersion =>
      TfRef.attribute<num>(this, 'administrator_password_wo_version');

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

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

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

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

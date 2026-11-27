// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_horizondb_cluster`.
const Set<String> _azurermHorizondbClusterSensitive = <String>{
  'administrator_password',
};

/// Horizondb Cluster Postgresql enum for `postgresql_version`.
extension type const HorizondbClusterPostgresqlVersion._(TfArg<String> _)
    implements TfArg<String> {
  HorizondbClusterPostgresqlVersion.variable(String name)
    : this._(TfArg.variable(name));
  HorizondbClusterPostgresqlVersion.expression(String template)
    : this._(TfArg.expression(template));
  const HorizondbClusterPostgresqlVersion.arg(TfArg<String> arg) : this._(arg);

  static const v18 = HorizondbClusterPostgresqlVersion._(TfArgLiteral('18'));
  static const v17 = HorizondbClusterPostgresqlVersion._(TfArgLiteral('17'));

  static const List<HorizondbClusterPostgresqlVersion> values = [v18, v17];
}

/// Horizondb Cluster Public Network enum for `public_network_access`.
extension type const HorizondbClusterPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  HorizondbClusterPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  HorizondbClusterPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const HorizondbClusterPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = HorizondbClusterPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = HorizondbClusterPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<HorizondbClusterPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Exactly one of `administrator_password`, `administrator_password_wo` on `azurerm_horizondb_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.administratorPassword(...)`.
sealed class HorizondbClusterAdministratorPassword {
  const HorizondbClusterAdministratorPassword();

  /// Sets `administrator_password`.
  const factory HorizondbClusterAdministratorPassword.administratorPassword(
    Sensitive<String> administratorPassword,
  ) = HorizondbClusterAdministratorPasswordChoice;

  /// Sets `administrator_password_wo`.
  const factory HorizondbClusterAdministratorPassword.administratorPasswordWo(
    TfArg<String> administratorPasswordWo,
  ) = HorizondbClusterAdministratorPasswordWo;

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

/// The [HorizondbClusterAdministratorPassword.administratorPassword] choice: sets `administrator_password`.
final class HorizondbClusterAdministratorPasswordChoice
    extends HorizondbClusterAdministratorPassword {
  const HorizondbClusterAdministratorPasswordChoice(this.administratorPassword);

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

/// The [HorizondbClusterAdministratorPassword.administratorPasswordWo] choice: sets `administrator_password_wo`.
final class HorizondbClusterAdministratorPasswordWo
    extends HorizondbClusterAdministratorPassword {
  const HorizondbClusterAdministratorPasswordWo(this.administratorPasswordWo);

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

/// Exactly one of `point_in_time_restore`, `postgresql_version` on `azurerm_horizondb_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pointInTimeRestore(...)`.
sealed class HorizondbClusterPointInTimeRestoreOrPostgresqlVersion {
  const HorizondbClusterPointInTimeRestoreOrPostgresqlVersion();

  /// Sets `point_in_time_restore`.
  const factory HorizondbClusterPointInTimeRestoreOrPostgresqlVersion.pointInTimeRestore(
    HorizondbClusterPointInTimeRestore pointInTimeRestore,
  ) = HorizondbClusterPointInTimeRestoreOrPostgresqlVersionPointInTimeRestore;

  /// Sets `postgresql_version`.
  const factory HorizondbClusterPointInTimeRestoreOrPostgresqlVersion.postgresqlVersion(
    HorizondbClusterPostgresqlVersion postgresqlVersion,
  ) = HorizondbClusterPointInTimeRestoreOrPostgresqlVersionChoice;

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

/// The [HorizondbClusterPointInTimeRestoreOrPostgresqlVersion.pointInTimeRestore] choice: sets `point_in_time_restore`.
final class HorizondbClusterPointInTimeRestoreOrPostgresqlVersionPointInTimeRestore
    extends HorizondbClusterPointInTimeRestoreOrPostgresqlVersion {
  const HorizondbClusterPointInTimeRestoreOrPostgresqlVersionPointInTimeRestore(
    this.pointInTimeRestore,
  );

  final HorizondbClusterPointInTimeRestore pointInTimeRestore;

  @internal
  @override
  String get blockKey => 'point_in_time_restore';

  @internal
  @override
  Map<String, Object?> encode() => {
    'point_in_time_restore': pointInTimeRestore.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'point_in_time_restore': TfArg.literal(pointInTimeRestore.encode()),
  };
}

/// The [HorizondbClusterPointInTimeRestoreOrPostgresqlVersion.postgresqlVersion] choice: sets `postgresql_version`.
final class HorizondbClusterPointInTimeRestoreOrPostgresqlVersionChoice
    extends HorizondbClusterPointInTimeRestoreOrPostgresqlVersion {
  const HorizondbClusterPointInTimeRestoreOrPostgresqlVersionChoice(
    this.postgresqlVersion,
  );

  final HorizondbClusterPostgresqlVersion postgresqlVersion;

  @internal
  @override
  String get blockKey => 'postgresql_version';

  @internal
  @override
  Map<String, Object?> encode() => {
    'postgresql_version': postgresqlVersion.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'postgresql_version': postgresqlVersion,
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_horizondb_cluster` (derived from provider schema).
@immutable
final class HorizondbClusterIdentity {
  const HorizondbClusterIdentity({
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

/// Typed helper for the `point_in_time_restore` block of
/// `azurerm_horizondb_cluster` (derived from provider schema).
@immutable
final class HorizondbClusterPointInTimeRestore {
  const HorizondbClusterPointInTimeRestore({
    required this.pointInTimeUtc,
    required this.sourceHorizondbClusterId,
    this.sourceLocation,
  });

  final TfArg<String> pointInTimeUtc;

  final TfArg<String> sourceHorizondbClusterId;

  final TfArg<String>? sourceLocation;

  @internal
  Map<String, Object?> encode() => {
    'point_in_time_utc': pointInTimeUtc.toTfJson(),
    'source_horizondb_cluster_id': sourceHorizondbClusterId.toTfJson(),
    'source_location': ?sourceLocation?.toTfJson(),
  };
}

/// Typed helper for the `read_write_pool` block of
/// `azurerm_horizondb_cluster` (derived from provider schema).
@immutable
final class HorizondbClusterReadWritePool {
  const HorizondbClusterReadWritePool({
    required this.highAvailabilityMode,
    required this.name,
    required this.nodeCount,
    required this.compute,
  });

  final HorizondbClusterHighAvailabilityMode highAvailabilityMode;

  final TfArg<String> name;

  final TfArg<num> nodeCount;

  final HorizondbClusterCompute compute;

  @internal
  Map<String, Object?> encode() => {
    'high_availability_mode': highAvailabilityMode.toTfJson(),
    'name': name.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'compute': compute.encode(),
  };
}

/// `high_availability_mode` — derived from the provider schema description.
extension type const HorizondbClusterHighAvailabilityMode._(TfArg<String> _)
    implements TfArg<String> {
  HorizondbClusterHighAvailabilityMode.variable(String name)
    : this._(TfArg.variable(name));
  HorizondbClusterHighAvailabilityMode.expression(String template)
    : this._(TfArg.expression(template));
  const HorizondbClusterHighAvailabilityMode.arg(TfArg<String> arg)
    : this._(arg);

  static const anyzone = HorizondbClusterHighAvailabilityMode._(
    TfArgLiteral('AnyZone'),
  );
  static const disabled = HorizondbClusterHighAvailabilityMode._(
    TfArgLiteral('Disabled'),
  );
  static const zoneredundant = HorizondbClusterHighAvailabilityMode._(
    TfArgLiteral('ZoneRedundant'),
  );

  static const List<HorizondbClusterHighAvailabilityMode> values = [
    anyzone,
    disabled,
    zoneredundant,
  ];
}

/// Typed helper for the `read_write_pool.compute` block of
/// `azurerm_horizondb_cluster` (derived from provider schema).
@immutable
final class HorizondbClusterCompute {
  const HorizondbClusterCompute({
    required this.generation,
    required this.processor,
    required this.vcores,
  });

  final TfArg<num> generation;

  final HorizondbClusterProcessor processor;

  final TfArg<num> vcores;

  @internal
  Map<String, Object?> encode() => {
    'generation': generation.toTfJson(),
    'processor': processor.toTfJson(),
    'vcores': vcores.toTfJson(),
  };
}

/// `processor` — derived from the provider schema description.
extension type const HorizondbClusterProcessor._(TfArg<String> _)
    implements TfArg<String> {
  HorizondbClusterProcessor.variable(String name)
    : this._(TfArg.variable(name));
  HorizondbClusterProcessor.expression(String template)
    : this._(TfArg.expression(template));
  const HorizondbClusterProcessor.arg(TfArg<String> arg) : this._(arg);

  static const amd = HorizondbClusterProcessor._(TfArgLiteral('AMD'));
  static const intel = HorizondbClusterProcessor._(TfArgLiteral('Intel'));

  static const List<HorizondbClusterProcessor> values = [amd, intel];
}

/// Factory wrapper for `azurerm_horizondb_cluster`.
final class AzurermHorizondbCluster extends Resource {
  static const String tfType = 'azurerm_horizondb_cluster';

  AzurermHorizondbCluster(
    super.localName, {
    required TfArg<String> administratorLogin,
    required HorizondbClusterAdministratorPassword administratorPassword,
    TfArg<num>? administratorPasswordWoVersion,
    TfArg<num>? backupRetentionInDays,
    TfArg<bool>? geoRedundantBackupEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required HorizondbClusterPointInTimeRestoreOrPostgresqlVersion
    pointInTimeRestoreOrPostgresqlVersion,
    HorizondbClusterPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    HorizondbClusterIdentity? identity,
    required HorizondbClusterReadWritePool readWritePool,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_login': administratorLogin,
           ...administratorPassword.argMap,
           'administrator_password_wo_version': ?administratorPasswordWoVersion,
           'backup_retention_in_days': ?backupRetentionInDays,
           'geo_redundant_backup_enabled': ?geoRedundantBackupEnabled,
           'location': location,
           'name': name,
           ...pointInTimeRestoreOrPostgresqlVersion.argMap,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'read_write_pool': TfArg.literal(readWritePool.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHorizondbClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHorizondbCluster>`.
  RefTo<AzurermHorizondbCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `administrator_password` attribute.
  TfRef<String> get administratorPassword =>
      TfRef.attribute<String>(this, 'administrator_password');

  /// Reference to `administrator_password_wo_version` attribute.
  TfRef<num> get administratorPasswordWoVersion =>
      TfRef.attribute<num>(this, 'administrator_password_wo_version');

  /// Reference to `backup_retention_in_days` attribute.
  TfRef<num> get backupRetentionInDays =>
      TfRef.attribute<num>(this, 'backup_retention_in_days');

  /// Reference to `geo_redundant_backup_enabled` attribute.
  TfRef<bool> get geoRedundantBackupEnabled =>
      TfRef.attribute<bool>(this, 'geo_redundant_backup_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `postgresql_version` attribute.
  TfRef<String> get postgresqlVersion =>
      TfRef.attribute<String>(this, 'postgresql_version');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_database_migration_service_connection_profile`.
const Set<String> _googleDatabaseMigrationServiceConnectionProfileSensitive =
    <String>{
      'alloydb.settings.initial_user.password',
      'cloudsql.settings.root_password',
      'mysql.password',
      'mysql.ssl.ca_certificate',
      'mysql.ssl.client_certificate',
      'mysql.ssl.client_key',
      'oracle.forward_ssh_connectivity.password',
      'oracle.forward_ssh_connectivity.private_key',
      'oracle.password',
      'oracle.ssl.ca_certificate',
      'oracle.ssl.client_certificate',
      'oracle.ssl.client_key',
      'postgresql.password',
      'postgresql.ssl.ca_certificate',
      'postgresql.ssl.client_certificate',
      'postgresql.ssl.client_key',
    };

/// Exactly one of `mysql`, `postgresql`, `oracle`, `cloudsql`, `alloydb` on `google_database_migration_service_connection_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.mysql(...)`.
sealed class DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEngine();

  /// Sets `mysql`.
  const factory DatabaseMigrationServiceConnectionProfileEngine.mysql(
    DatabaseMigrationServiceConnectionProfileMysql mysql,
  ) = DatabaseMigrationServiceConnectionProfileEngineMysql;

  /// Sets `postgresql`.
  const factory DatabaseMigrationServiceConnectionProfileEngine.postgresql(
    DatabaseMigrationServiceConnectionProfilePostgresql postgresql,
  ) = DatabaseMigrationServiceConnectionProfileEnginePostgresql;

  /// Sets `oracle`.
  const factory DatabaseMigrationServiceConnectionProfileEngine.oracle(
    DatabaseMigrationServiceConnectionProfileOracle oracle,
  ) = DatabaseMigrationServiceConnectionProfileEngineOracle;

  /// Sets `cloudsql`.
  const factory DatabaseMigrationServiceConnectionProfileEngine.cloudsql(
    DatabaseMigrationServiceConnectionProfileCloudsql cloudsql,
  ) = DatabaseMigrationServiceConnectionProfileEngineCloudsql;

  /// Sets `alloydb`.
  const factory DatabaseMigrationServiceConnectionProfileEngine.alloydb(
    DatabaseMigrationServiceConnectionProfileAlloydb alloydb,
  ) = DatabaseMigrationServiceConnectionProfileEngineAlloydb;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatabaseMigrationServiceConnectionProfileEngine.mysql] choice: sets `mysql`.
final class DatabaseMigrationServiceConnectionProfileEngineMysql
    extends DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEngineMysql(this.mysql);

  final DatabaseMigrationServiceConnectionProfileMysql mysql;

  @override
  String get blockKey => 'mysql';

  @override
  Map<String, Object?> encode() => {'mysql': mysql.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mysql': TfArg.literal(mysql.encode()),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileEngine.postgresql] choice: sets `postgresql`.
final class DatabaseMigrationServiceConnectionProfileEnginePostgresql
    extends DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEnginePostgresql(
    this.postgresql,
  );

  final DatabaseMigrationServiceConnectionProfilePostgresql postgresql;

  @override
  String get blockKey => 'postgresql';

  @override
  Map<String, Object?> encode() => {'postgresql': postgresql.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'postgresql': TfArg.literal(postgresql.encode()),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileEngine.oracle] choice: sets `oracle`.
final class DatabaseMigrationServiceConnectionProfileEngineOracle
    extends DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEngineOracle(this.oracle);

  final DatabaseMigrationServiceConnectionProfileOracle oracle;

  @override
  String get blockKey => 'oracle';

  @override
  Map<String, Object?> encode() => {'oracle': oracle.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oracle': TfArg.literal(oracle.encode()),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileEngine.cloudsql] choice: sets `cloudsql`.
final class DatabaseMigrationServiceConnectionProfileEngineCloudsql
    extends DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEngineCloudsql(this.cloudsql);

  final DatabaseMigrationServiceConnectionProfileCloudsql cloudsql;

  @override
  String get blockKey => 'cloudsql';

  @override
  Map<String, Object?> encode() => {'cloudsql': cloudsql.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloudsql': TfArg.literal(cloudsql.encode()),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileEngine.alloydb] choice: sets `alloydb`.
final class DatabaseMigrationServiceConnectionProfileEngineAlloydb
    extends DatabaseMigrationServiceConnectionProfileEngine {
  const DatabaseMigrationServiceConnectionProfileEngineAlloydb(this.alloydb);

  final DatabaseMigrationServiceConnectionProfileAlloydb alloydb;

  @override
  String get blockKey => 'alloydb';

  @override
  Map<String, Object?> encode() => {'alloydb': alloydb.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'alloydb': TfArg.literal(alloydb.encode()),
  };
}

/// Typed helper for the `alloydb` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileAlloydb {
  const DatabaseMigrationServiceConnectionProfileAlloydb({
    required this.clusterId,
    this.settings,
  });

  final TfArg<String> clusterId;

  final DatabaseMigrationServiceConnectionProfileAlloydbSettings? settings;

  Map<String, Object?> encode() => {
    'cluster_id': clusterId.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `alloydb.settings` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileAlloydbSettings {
  const DatabaseMigrationServiceConnectionProfileAlloydbSettings({
    this.labels,
    required this.vpcNetwork,
    required this.initialUser,
    this.primaryInstanceSettings,
  });

  final TfArg<Map<String, String>>? labels;

  final RefTo<GoogleComputeNetwork> vpcNetwork;

  final DatabaseMigrationServiceConnectionProfileInitialUser initialUser;

  final DatabaseMigrationServiceConnectionProfilePrimaryInstanceSettings?
  primaryInstanceSettings;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'vpc_network': vpcNetwork.encodeAs('id').toTfJson(),
    'initial_user': initialUser.encode(),
    'primary_instance_settings': ?primaryInstanceSettings?.encode(),
  };
}

/// Typed helper for the `alloydb.settings.initial_user` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileInitialUser {
  const DatabaseMigrationServiceConnectionProfileInitialUser({
    required this.password,
    required this.user,
  });

  final TfArg<String> password;

  final TfArg<String> user;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'user': user.toTfJson(),
  };
}

/// Typed helper for the `alloydb.settings.primary_instance_settings` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfilePrimaryInstanceSettings {
  const DatabaseMigrationServiceConnectionProfilePrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    required this.machineConfig,
  });

  final TfArg<Map<String, String>>? databaseFlags;

  final TfArg<String> id;

  final TfArg<Map<String, String>>? labels;

  final DatabaseMigrationServiceConnectionProfileMachineConfig machineConfig;

  Map<String, Object?> encode() => {
    'database_flags': ?databaseFlags?.toTfJson(),
    'id': id.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'machine_config': machineConfig.encode(),
  };
}

/// Typed helper for the `alloydb.settings.primary_instance_settings.machine_config` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileMachineConfig {
  const DatabaseMigrationServiceConnectionProfileMachineConfig({
    required this.cpuCount,
  });

  final TfArg<num> cpuCount;

  Map<String, Object?> encode() => {'cpu_count': cpuCount.toTfJson()};
}

/// Typed helper for the `cloudsql` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileCloudsql {
  const DatabaseMigrationServiceConnectionProfileCloudsql({this.settings});

  final DatabaseMigrationServiceConnectionProfileCloudsqlSettings? settings;

  Map<String, Object?> encode() => {'settings': ?settings?.encode()};
}

/// Typed helper for the `cloudsql.settings` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileCloudsqlSettings {
  const DatabaseMigrationServiceConnectionProfileCloudsqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.cmekKeyName,
    this.collation,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
    this.rootPassword,
    required this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
    this.ipConfig,
  });

  final TfArg<DatabaseMigrationServiceConnectionProfileActivationPolicy>?
  activationPolicy;

  final TfArg<bool>? autoStorageIncrease;

  final TfArg<String>? cmekKeyName;

  final TfArg<String>? collation;

  final TfArg<String>? dataDiskSizeGb;

  final TfArg<DatabaseMigrationServiceConnectionProfileDataDiskType>?
  dataDiskType;

  final TfArg<Map<String, String>>? databaseFlags;

  final TfArg<String>? databaseVersion;

  final TfArg<DatabaseMigrationServiceConnectionProfileEdition>? edition;

  final TfArg<String>? rootPassword;

  final TfArg<String> sourceId;

  final TfArg<String>? storageAutoResizeLimit;

  final TfArg<String>? tier;

  final TfArg<Map<String, String>>? userLabels;

  final TfArg<String>? zone;

  final DatabaseMigrationServiceConnectionProfileIpConfig? ipConfig;

  Map<String, Object?> encode() => {
    'activation_policy': ?activationPolicy?.toTfJson(),
    'auto_storage_increase': ?autoStorageIncrease?.toTfJson(),
    'cmek_key_name': ?cmekKeyName?.toTfJson(),
    'collation': ?collation?.toTfJson(),
    'data_disk_size_gb': ?dataDiskSizeGb?.toTfJson(),
    'data_disk_type': ?dataDiskType?.toTfJson(),
    'database_flags': ?databaseFlags?.toTfJson(),
    'database_version': ?databaseVersion?.toTfJson(),
    'edition': ?edition?.toTfJson(),
    'root_password': ?rootPassword?.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'storage_auto_resize_limit': ?storageAutoResizeLimit?.toTfJson(),
    'tier': ?tier?.toTfJson(),
    'user_labels': ?userLabels?.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'ip_config': ?ipConfig?.encode(),
  };
}

/// `activation_policy` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileActivationPolicy
    implements TerraformEnum {
  always('ALWAYS'),
  never('NEVER');

  const DatabaseMigrationServiceConnectionProfileActivationPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `data_disk_type` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileDataDiskType
    implements TerraformEnum {
  pdSsd('PD_SSD'),
  pdHdd('PD_HDD');

  const DatabaseMigrationServiceConnectionProfileDataDiskType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `edition` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileEdition implements TerraformEnum {
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const DatabaseMigrationServiceConnectionProfileEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cloudsql.settings.ip_config` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileIpConfig {
  const DatabaseMigrationServiceConnectionProfileIpConfig({
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
    this.authorizedNetworks,
  });

  final TfArg<bool>? enableIpv4;

  final RefTo<GoogleComputeNetwork>? privateNetwork;

  final TfArg<bool>? requireSsl;

  final List<DatabaseMigrationServiceConnectionProfileAuthorizedNetworks>?
  authorizedNetworks;

  Map<String, Object?> encode() => {
    'enable_ipv4': ?enableIpv4?.toTfJson(),
    'private_network': ?privateNetwork?.encodeAs('id').toTfJson(),
    'require_ssl': ?requireSsl?.toTfJson(),
    if (authorizedNetworks != null)
      'authorized_networks': [for (final e in authorizedNetworks!) e.encode()],
  };
}

/// Typed helper for the `cloudsql.settings.ip_config.authorized_networks` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileAuthorizedNetworks {
  const DatabaseMigrationServiceConnectionProfileAuthorizedNetworks({
    required this.expiration,
    this.label,
    required this.value,
  });

  final DatabaseMigrationServiceConnectionProfileExpiration expiration;

  final TfArg<String>? label;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    ...expiration.encode(),
    'label': ?label?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Exactly one of `expire_time`, `ttl` on the `cloudsql.settings.ip_config.authorized_networks` block of `google_database_migration_service_connection_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.expireTime(...)`.
sealed class DatabaseMigrationServiceConnectionProfileExpiration {
  const DatabaseMigrationServiceConnectionProfileExpiration();

  /// Sets `expire_time`.
  const factory DatabaseMigrationServiceConnectionProfileExpiration.expireTime(
    TfArg<String> expireTime,
  ) = DatabaseMigrationServiceConnectionProfileExpirationExpireTime;

  /// Sets `ttl`.
  const factory DatabaseMigrationServiceConnectionProfileExpiration.ttl(
    TfArg<String> ttl,
  ) = DatabaseMigrationServiceConnectionProfileExpirationTtl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DatabaseMigrationServiceConnectionProfileExpiration.expireTime] choice: sets `expire_time`.
final class DatabaseMigrationServiceConnectionProfileExpirationExpireTime
    extends DatabaseMigrationServiceConnectionProfileExpiration {
  const DatabaseMigrationServiceConnectionProfileExpirationExpireTime(
    this.expireTime,
  );

  final TfArg<String> expireTime;

  @override
  String get blockKey => 'expire_time';

  @override
  Map<String, Object?> encode() => {'expire_time': expireTime.toTfJson()};
}

/// The [DatabaseMigrationServiceConnectionProfileExpiration.ttl] choice: sets `ttl`.
final class DatabaseMigrationServiceConnectionProfileExpirationTtl
    extends DatabaseMigrationServiceConnectionProfileExpiration {
  const DatabaseMigrationServiceConnectionProfileExpirationTtl(this.ttl);

  final TfArg<String> ttl;

  @override
  String get blockKey => 'ttl';

  @override
  Map<String, Object?> encode() => {'ttl': ttl.toTfJson()};
}

/// Typed helper for the `mysql` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileMysql {
  const DatabaseMigrationServiceConnectionProfileMysql({
    this.cloudSqlId,
    this.host,
    this.password,
    this.port,
    this.username,
    this.ssl,
  });

  final TfArg<String>? cloudSqlId;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? username;

  final DatabaseMigrationServiceConnectionProfileMysqlSsl? ssl;

  Map<String, Object?> encode() => {
    'cloud_sql_id': ?cloudSqlId?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'username': ?username?.toTfJson(),
    'ssl': ?ssl?.encode(),
  };
}

/// Typed helper for the `mysql.ssl` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatabaseMigrationServiceConnectionProfileMysqlSsl {
  const DatabaseMigrationServiceConnectionProfileMysqlSsl({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.type,
  });

  final TfArg<String>? caCertificate;

  final TfArg<String>? clientCertificate;

  final TfArg<String>? clientKey;

  final TfArg<DatabaseMigrationServiceConnectionProfileType>? type;

  Map<String, Object?> encode() => {
    'ca_certificate': ?caCertificate?.toTfJson(),
    'client_certificate': ?clientCertificate?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileType implements TerraformEnum {
  serverOnly('SERVER_ONLY'),
  serverClient('SERVER_CLIENT'),
  required('REQUIRED'),
  none('NONE');

  const DatabaseMigrationServiceConnectionProfileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `oracle` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileOracle {
  const DatabaseMigrationServiceConnectionProfileOracle({
    required this.databaseService,
    required this.host,
    required this.password,
    required this.port,
    required this.username,
    required this.connectivity,
    this.ssl,
  });

  final TfArg<String> databaseService;

  final TfArg<String> host;

  final TfArg<String> password;

  final TfArg<num> port;

  final TfArg<String> username;

  final DatabaseMigrationServiceConnectionProfileConnectivity connectivity;

  final DatabaseMigrationServiceConnectionProfileOracleSsl? ssl;

  Map<String, Object?> encode() => {
    'database_service': databaseService.toTfJson(),
    'host': host.toTfJson(),
    'password': password.toTfJson(),
    'port': port.toTfJson(),
    'username': username.toTfJson(),
    ...connectivity.encode(),
    'ssl': ?ssl?.encode(),
  };
}

/// Exactly one of `static_service_ip_connectivity`, `forward_ssh_connectivity`, `private_connectivity` on the `oracle` block of `google_database_migration_service_connection_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.staticServiceIpConnectivity(...)`.
sealed class DatabaseMigrationServiceConnectionProfileConnectivity {
  const DatabaseMigrationServiceConnectionProfileConnectivity();

  /// Sets `static_service_ip_connectivity`.
  const factory DatabaseMigrationServiceConnectionProfileConnectivity.staticServiceIpConnectivity(
    DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivity
    staticServiceIpConnectivity,
  ) = DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivityChoice;

  /// Sets `forward_ssh_connectivity`.
  const factory DatabaseMigrationServiceConnectionProfileConnectivity.forwardSshConnectivity(
    DatabaseMigrationServiceConnectionProfileForwardSshConnectivity
    forwardSshConnectivity,
  ) = DatabaseMigrationServiceConnectionProfileForwardSshConnectivityChoice;

  /// Sets `private_connectivity`.
  const factory DatabaseMigrationServiceConnectionProfileConnectivity.privateConnectivity(
    DatabaseMigrationServiceConnectionProfilePrivateConnectivity
    privateConnectivity,
  ) = DatabaseMigrationServiceConnectionProfilePrivateConnectivityChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DatabaseMigrationServiceConnectionProfileConnectivity.staticServiceIpConnectivity] choice: sets `static_service_ip_connectivity`.
final class DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivityChoice
    extends DatabaseMigrationServiceConnectionProfileConnectivity {
  const DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivityChoice(
    this.staticServiceIpConnectivity,
  );

  final DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivity
  staticServiceIpConnectivity;

  @override
  String get blockKey => 'static_service_ip_connectivity';

  @override
  Map<String, Object?> encode() => {
    'static_service_ip_connectivity': staticServiceIpConnectivity.encode(),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileConnectivity.forwardSshConnectivity] choice: sets `forward_ssh_connectivity`.
final class DatabaseMigrationServiceConnectionProfileForwardSshConnectivityChoice
    extends DatabaseMigrationServiceConnectionProfileConnectivity {
  const DatabaseMigrationServiceConnectionProfileForwardSshConnectivityChoice(
    this.forwardSshConnectivity,
  );

  final DatabaseMigrationServiceConnectionProfileForwardSshConnectivity
  forwardSshConnectivity;

  @override
  String get blockKey => 'forward_ssh_connectivity';

  @override
  Map<String, Object?> encode() => {
    'forward_ssh_connectivity': forwardSshConnectivity.encode(),
  };
}

/// The [DatabaseMigrationServiceConnectionProfileConnectivity.privateConnectivity] choice: sets `private_connectivity`.
final class DatabaseMigrationServiceConnectionProfilePrivateConnectivityChoice
    extends DatabaseMigrationServiceConnectionProfileConnectivity {
  const DatabaseMigrationServiceConnectionProfilePrivateConnectivityChoice(
    this.privateConnectivity,
  );

  final DatabaseMigrationServiceConnectionProfilePrivateConnectivity
  privateConnectivity;

  @override
  String get blockKey => 'private_connectivity';

  @override
  Map<String, Object?> encode() => {
    'private_connectivity': privateConnectivity.encode(),
  };
}

/// Typed helper for the `oracle.forward_ssh_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileForwardSshConnectivity {
  const DatabaseMigrationServiceConnectionProfileForwardSshConnectivity({
    required this.hostname,
    required this.credential,
    required this.port,
    required this.username,
  });

  final TfArg<String> hostname;

  final DatabaseMigrationServiceConnectionProfileCredential credential;

  final TfArg<num> port;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    ...credential.encode(),
    'port': port.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Exactly one of `password`, `private_key` on the `oracle.forward_ssh_connectivity` block of `google_database_migration_service_connection_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class DatabaseMigrationServiceConnectionProfileCredential {
  const DatabaseMigrationServiceConnectionProfileCredential();

  /// Sets `password`.
  const factory DatabaseMigrationServiceConnectionProfileCredential.password(
    TfArg<String> password,
  ) = DatabaseMigrationServiceConnectionProfileCredentialPassword;

  /// Sets `private_key`.
  const factory DatabaseMigrationServiceConnectionProfileCredential.privateKey(
    TfArg<String> privateKey,
  ) = DatabaseMigrationServiceConnectionProfileCredentialPrivateKey;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DatabaseMigrationServiceConnectionProfileCredential.password] choice: sets `password`.
final class DatabaseMigrationServiceConnectionProfileCredentialPassword
    extends DatabaseMigrationServiceConnectionProfileCredential {
  const DatabaseMigrationServiceConnectionProfileCredentialPassword(
    this.password,
  );

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [DatabaseMigrationServiceConnectionProfileCredential.privateKey] choice: sets `private_key`.
final class DatabaseMigrationServiceConnectionProfileCredentialPrivateKey
    extends DatabaseMigrationServiceConnectionProfileCredential {
  const DatabaseMigrationServiceConnectionProfileCredentialPrivateKey(
    this.privateKey,
  );

  final TfArg<String> privateKey;

  @override
  String get blockKey => 'private_key';

  @override
  Map<String, Object?> encode() => {'private_key': privateKey.toTfJson()};
}

/// Typed helper for the `oracle.private_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatabaseMigrationServiceConnectionProfilePrivateConnectivity {
  const DatabaseMigrationServiceConnectionProfilePrivateConnectivity({
    required this.privateConnection,
  });

  final TfArg<String> privateConnection;

  Map<String, Object?> encode() => {
    'private_connection': privateConnection.toTfJson(),
  };
}

/// Typed helper for the `oracle.ssl` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileOracleSsl {
  const DatabaseMigrationServiceConnectionProfileOracleSsl({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
  });

  final TfArg<String>? caCertificate;

  final TfArg<String>? clientCertificate;

  final TfArg<String>? clientKey;

  Map<String, Object?> encode() => {
    'ca_certificate': ?caCertificate?.toTfJson(),
    'client_certificate': ?clientCertificate?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
  };
}

/// Typed helper for the `oracle.static_service_ip_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivity {
  const DatabaseMigrationServiceConnectionProfileStaticServiceIpConnectivity();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `postgresql` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfilePostgresql {
  const DatabaseMigrationServiceConnectionProfilePostgresql({
    this.alloydbClusterId,
    this.cloudSqlId,
    this.database,
    this.host,
    this.password,
    this.port,
    this.username,
    this.privateConnectivity,
    this.ssl,
  });

  final TfArg<String>? alloydbClusterId;

  final TfArg<String>? cloudSqlId;

  final TfArg<String>? database;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? username;

  final DatabaseMigrationServiceConnectionProfilePrivateConnectivity?
  privateConnectivity;

  final DatabaseMigrationServiceConnectionProfileMysqlSsl? ssl;

  Map<String, Object?> encode() => {
    'alloydb_cluster_id': ?alloydbClusterId?.toTfJson(),
    'cloud_sql_id': ?cloudSqlId?.toTfJson(),
    'database': ?database?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'username': ?username?.toTfJson(),
    'private_connectivity': ?privateConnectivity?.encode(),
    'ssl': ?ssl?.encode(),
  };
}

/// Factory wrapper for `google_database_migration_service_connection_profile`.
///
/// A connection profile definition.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatabaseMigrationServiceConnectionProfile extends Resource {
  static const String tfType =
      'google_database_migration_service_connection_profile';

  GoogleDatabaseMigrationServiceConnectionProfile({
    required super.localName,
    required TfArg<String> connectionProfileId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<String>? role,
    required DatabaseMigrationServiceConnectionProfileEngine engine,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_profile_id': connectionProfileId,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'labels': ?labels,
           'location': ?location,
           'project': ?project,
           'role': ?role,
           ...engine.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServiceConnectionProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatabaseMigrationServiceConnectionProfile>`.
  RefTo<GoogleDatabaseMigrationServiceConnectionProfile> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dbprovider` attribute.
  TfRef<String> get dbprovider => TfRef.attribute<String>(this, 'dbprovider');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `connection_profile_id` attribute.
  TfRef<String> get connectionProfileIdRef =>
      TfRef.attribute<String>(this, 'connection_profile_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}

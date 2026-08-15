// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (settings != null) 'settings': settings!.encode(),
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

  final TfArg<String> vpcNetwork;

  final DatabaseMigrationServiceConnectionProfileAlloydbSettingsInitialUser
  initialUser;

  final DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettings?
  primaryInstanceSettings;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    'vpc_network': vpcNetwork.toTfJson(),
    'initial_user': initialUser.encode(),
    if (primaryInstanceSettings != null)
      'primary_instance_settings': primaryInstanceSettings!.encode(),
  };
}

/// Typed helper for the `alloydb.settings.initial_user` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileAlloydbSettingsInitialUser {
  const DatabaseMigrationServiceConnectionProfileAlloydbSettingsInitialUser({
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
final class DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettings {
  const DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    required this.machineConfig,
  });

  final TfArg<Map<String, String>>? databaseFlags;

  final TfArg<String> id;

  final TfArg<Map<String, String>>? labels;

  final DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig
  machineConfig;

  Map<String, Object?> encode() => {
    if (databaseFlags != null) 'database_flags': databaseFlags!.toTfJson(),
    'id': id.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'machine_config': machineConfig.encode(),
  };
}

/// Typed helper for the `alloydb.settings.primary_instance_settings.machine_config` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig {
  const DatabaseMigrationServiceConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig({
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

  Map<String, Object?> encode() => {
    if (settings != null) 'settings': settings!.encode(),
  };
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

  final TfArg<
    DatabaseMigrationServiceConnectionProfileCloudsqlSettingsActivationPolicy
  >?
  activationPolicy;

  final TfArg<bool>? autoStorageIncrease;

  final TfArg<String>? cmekKeyName;

  final TfArg<String>? collation;

  final TfArg<String>? dataDiskSizeGb;

  final TfArg<
    DatabaseMigrationServiceConnectionProfileCloudsqlSettingsDataDiskType
  >?
  dataDiskType;

  final TfArg<Map<String, String>>? databaseFlags;

  final TfArg<String>? databaseVersion;

  final TfArg<DatabaseMigrationServiceConnectionProfileCloudsqlSettingsEdition>?
  edition;

  final TfArg<String>? rootPassword;

  final TfArg<String> sourceId;

  final TfArg<String>? storageAutoResizeLimit;

  final TfArg<String>? tier;

  final TfArg<Map<String, String>>? userLabels;

  final TfArg<String>? zone;

  final DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfig?
  ipConfig;

  Map<String, Object?> encode() => {
    if (activationPolicy != null)
      'activation_policy': activationPolicy!.toTfJson(),
    if (autoStorageIncrease != null)
      'auto_storage_increase': autoStorageIncrease!.toTfJson(),
    if (cmekKeyName != null) 'cmek_key_name': cmekKeyName!.toTfJson(),
    if (collation != null) 'collation': collation!.toTfJson(),
    if (dataDiskSizeGb != null) 'data_disk_size_gb': dataDiskSizeGb!.toTfJson(),
    if (dataDiskType != null) 'data_disk_type': dataDiskType!.toTfJson(),
    if (databaseFlags != null) 'database_flags': databaseFlags!.toTfJson(),
    if (databaseVersion != null)
      'database_version': databaseVersion!.toTfJson(),
    if (edition != null) 'edition': edition!.toTfJson(),
    if (rootPassword != null) 'root_password': rootPassword!.toTfJson(),
    'source_id': sourceId.toTfJson(),
    if (storageAutoResizeLimit != null)
      'storage_auto_resize_limit': storageAutoResizeLimit!.toTfJson(),
    if (tier != null) 'tier': tier!.toTfJson(),
    if (userLabels != null) 'user_labels': userLabels!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
    if (ipConfig != null) 'ip_config': ipConfig!.encode(),
  };
}

/// `activation_policy` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileCloudsqlSettingsActivationPolicy
    implements TerraformEnum {
  always('ALWAYS'),
  never('NEVER');

  const DatabaseMigrationServiceConnectionProfileCloudsqlSettingsActivationPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `data_disk_type` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileCloudsqlSettingsDataDiskType
    implements TerraformEnum {
  pdSsd('PD_SSD'),
  pdHdd('PD_HDD');

  const DatabaseMigrationServiceConnectionProfileCloudsqlSettingsDataDiskType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `edition` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileCloudsqlSettingsEdition
    implements TerraformEnum {
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const DatabaseMigrationServiceConnectionProfileCloudsqlSettingsEdition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cloudsql.settings.ip_config` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfig {
  const DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfig({
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
    this.authorizedNetworks,
  });

  final TfArg<bool>? enableIpv4;

  final TfArg<String>? privateNetwork;

  final TfArg<bool>? requireSsl;

  final List<
    DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetworks
  >?
  authorizedNetworks;

  Map<String, Object?> encode() => {
    if (enableIpv4 != null) 'enable_ipv4': enableIpv4!.toTfJson(),
    if (privateNetwork != null) 'private_network': privateNetwork!.toTfJson(),
    if (requireSsl != null) 'require_ssl': requireSsl!.toTfJson(),
    if (authorizedNetworks != null)
      'authorized_networks': [for (final e in authorizedNetworks!) e.encode()],
  };
}

/// Typed helper for the `cloudsql.settings.ip_config.authorized_networks` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetworks {
  const DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetworks({
    this.expireTime,
    this.label,
    this.ttl,
    required this.value,
  });

  final TfArg<String>? expireTime;

  final TfArg<String>? label;

  final TfArg<String>? ttl;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (expireTime != null) 'expire_time': expireTime!.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    'value': value.toTfJson(),
  };
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
    if (cloudSqlId != null) 'cloud_sql_id': cloudSqlId!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
    if (ssl != null) 'ssl': ssl!.encode(),
  };
}

/// Typed helper for the `mysql.ssl` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
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

  final TfArg<DatabaseMigrationServiceConnectionProfileMysqlSslType>? type;

  Map<String, Object?> encode() => {
    if (caCertificate != null) 'ca_certificate': caCertificate!.toTfJson(),
    if (clientCertificate != null)
      'client_certificate': clientCertificate!.toTfJson(),
    if (clientKey != null) 'client_key': clientKey!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfileMysqlSslType
    implements TerraformEnum {
  serverOnly('SERVER_ONLY'),
  serverClient('SERVER_CLIENT'),
  required('REQUIRED'),
  none('NONE');

  const DatabaseMigrationServiceConnectionProfileMysqlSslType(
    this.terraformValue,
  );
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
    this.forwardSshConnectivity,
    this.privateConnectivity,
    this.ssl,
    this.staticServiceIpConnectivity,
  });

  final TfArg<String> databaseService;

  final TfArg<String> host;

  final TfArg<String> password;

  final TfArg<num> port;

  final TfArg<String> username;

  final DatabaseMigrationServiceConnectionProfileOracleForwardSshConnectivity?
  forwardSshConnectivity;

  final DatabaseMigrationServiceConnectionProfileOraclePrivateConnectivity?
  privateConnectivity;

  final DatabaseMigrationServiceConnectionProfileOracleSsl? ssl;

  final DatabaseMigrationServiceConnectionProfileOracleStaticServiceIpConnectivity?
  staticServiceIpConnectivity;

  Map<String, Object?> encode() => {
    'database_service': databaseService.toTfJson(),
    'host': host.toTfJson(),
    'password': password.toTfJson(),
    'port': port.toTfJson(),
    'username': username.toTfJson(),
    if (forwardSshConnectivity != null)
      'forward_ssh_connectivity': forwardSshConnectivity!.encode(),
    if (privateConnectivity != null)
      'private_connectivity': privateConnectivity!.encode(),
    if (ssl != null) 'ssl': ssl!.encode(),
    if (staticServiceIpConnectivity != null)
      'static_service_ip_connectivity': staticServiceIpConnectivity!.encode(),
  };
}

/// Typed helper for the `oracle.forward_ssh_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileOracleForwardSshConnectivity {
  const DatabaseMigrationServiceConnectionProfileOracleForwardSshConnectivity({
    required this.hostname,
    this.password,
    required this.port,
    this.privateKey,
    required this.username,
  });

  final TfArg<String> hostname;

  final TfArg<String>? password;

  final TfArg<num> port;

  final TfArg<String>? privateKey;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    'port': port.toTfJson(),
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `oracle.private_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileOraclePrivateConnectivity {
  const DatabaseMigrationServiceConnectionProfileOraclePrivateConnectivity({
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
    if (caCertificate != null) 'ca_certificate': caCertificate!.toTfJson(),
    if (clientCertificate != null)
      'client_certificate': clientCertificate!.toTfJson(),
    if (clientKey != null) 'client_key': clientKey!.toTfJson(),
  };
}

/// Typed helper for the `oracle.static_service_ip_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfileOracleStaticServiceIpConnectivity {
  const DatabaseMigrationServiceConnectionProfileOracleStaticServiceIpConnectivity();

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

  final DatabaseMigrationServiceConnectionProfilePostgresqlPrivateConnectivity?
  privateConnectivity;

  final DatabaseMigrationServiceConnectionProfilePostgresqlSsl? ssl;

  Map<String, Object?> encode() => {
    if (alloydbClusterId != null)
      'alloydb_cluster_id': alloydbClusterId!.toTfJson(),
    if (cloudSqlId != null) 'cloud_sql_id': cloudSqlId!.toTfJson(),
    if (database != null) 'database': database!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
    if (privateConnectivity != null)
      'private_connectivity': privateConnectivity!.encode(),
    if (ssl != null) 'ssl': ssl!.encode(),
  };
}

/// Typed helper for the `postgresql.private_connectivity` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfilePostgresqlPrivateConnectivity {
  const DatabaseMigrationServiceConnectionProfilePostgresqlPrivateConnectivity({
    required this.privateConnection,
  });

  final TfArg<String> privateConnection;

  Map<String, Object?> encode() => {
    'private_connection': privateConnection.toTfJson(),
  };
}

/// Typed helper for the `postgresql.ssl` block of
/// `google_database_migration_service_connection_profile` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceConnectionProfilePostgresqlSsl {
  const DatabaseMigrationServiceConnectionProfilePostgresqlSsl({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.type,
  });

  final TfArg<String>? caCertificate;

  final TfArg<String>? clientCertificate;

  final TfArg<String>? clientKey;

  final TfArg<DatabaseMigrationServiceConnectionProfilePostgresqlSslType>? type;

  Map<String, Object?> encode() => {
    if (caCertificate != null) 'ca_certificate': caCertificate!.toTfJson(),
    if (clientCertificate != null)
      'client_certificate': clientCertificate!.toTfJson(),
    if (clientKey != null) 'client_key': clientKey!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DatabaseMigrationServiceConnectionProfilePostgresqlSslType
    implements TerraformEnum {
  serverOnly('SERVER_ONLY'),
  serverClient('SERVER_CLIENT'),
  required('REQUIRED'),
  none('NONE');

  const DatabaseMigrationServiceConnectionProfilePostgresqlSslType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    DatabaseMigrationServiceConnectionProfilePostgresql? postgresql,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_profile_id': connectionProfileId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (role != null) 'role': role,
           if (postgresql != null)
             'postgresql': TfArg.literal(postgresql.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServiceConnectionProfileSensitive;

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
}

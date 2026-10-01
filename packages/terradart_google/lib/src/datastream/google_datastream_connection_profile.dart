// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_datastream_connection_profile`.
const Set<String> _googleDatastreamConnectionProfileSensitive = <String>{
  'forward_ssh_connectivity.password',
  'forward_ssh_connectivity.private_key',
  'mongodb_profile.password',
  'mongodb_profile.ssl_config.ca_certificate',
  'mongodb_profile.ssl_config.client_certificate',
  'mongodb_profile.ssl_config.client_key',
  'mongodb_profile.ssl_config.secret_manager_stored_client_key',
  'mysql_profile.password',
  'mysql_profile.ssl_config.ca_certificate',
  'mysql_profile.ssl_config.client_certificate',
  'mysql_profile.ssl_config.client_key',
  'oracle_profile.password',
  'postgresql_profile.password',
  'postgresql_profile.ssl_config.server_and_client_verification.ca_certificate',
  'postgresql_profile.ssl_config.server_and_client_verification.client_certificate',
  'postgresql_profile.ssl_config.server_and_client_verification.client_key',
  'postgresql_profile.ssl_config.server_verification.ca_certificate',
  'sql_server_profile.password',
};

/// Exactly one of `oracle_profile`, `gcs_profile`, `mysql_profile`, `bigquery_profile`, `postgresql_profile`, `sql_server_profile`, `mongodb_profile` on `google_datastream_connection_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.oracleProfile(...)`.
sealed class DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpoint();

  /// Sets `oracle_profile`.
  const factory DatastreamConnectionProfileEndpoint.oracleProfile(
    DatastreamConnectionProfileOracleProfile oracleProfile,
  ) = DatastreamConnectionProfileEndpointOracleProfile;

  /// Sets `gcs_profile`.
  const factory DatastreamConnectionProfileEndpoint.gcsProfile(
    DatastreamConnectionProfileGcsProfile gcsProfile,
  ) = DatastreamConnectionProfileEndpointGcsProfile;

  /// Sets `mysql_profile`.
  const factory DatastreamConnectionProfileEndpoint.mysqlProfile(
    DatastreamConnectionProfileMysqlProfile mysqlProfile,
  ) = DatastreamConnectionProfileEndpointMysqlProfile;

  /// Sets `bigquery_profile`.
  const factory DatastreamConnectionProfileEndpoint.bigqueryProfile(
    DatastreamConnectionProfileBigqueryProfile bigqueryProfile,
  ) = DatastreamConnectionProfileEndpointBigqueryProfile;

  /// Sets `postgresql_profile`.
  const factory DatastreamConnectionProfileEndpoint.postgresqlProfile(
    DatastreamConnectionProfilePostgresqlProfile postgresqlProfile,
  ) = DatastreamConnectionProfileEndpointPostgresqlProfile;

  /// Sets `sql_server_profile`.
  const factory DatastreamConnectionProfileEndpoint.sqlServerProfile(
    DatastreamConnectionProfileSqlServerProfile sqlServerProfile,
  ) = DatastreamConnectionProfileEndpointSqlServerProfile;

  /// Sets `mongodb_profile`.
  const factory DatastreamConnectionProfileEndpoint.mongodbProfile(
    DatastreamConnectionProfileMongodbProfile mongodbProfile,
  ) = DatastreamConnectionProfileEndpointMongodbProfile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatastreamConnectionProfileEndpoint.oracleProfile] choice: sets `oracle_profile`.
final class DatastreamConnectionProfileEndpointOracleProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointOracleProfile(this.oracleProfile);

  final DatastreamConnectionProfileOracleProfile oracleProfile;

  @override
  String get blockKey => 'oracle_profile';

  @override
  Map<String, Object?> encode() => {'oracle_profile': oracleProfile.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oracle_profile': TfArg.literal(oracleProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.gcsProfile] choice: sets `gcs_profile`.
final class DatastreamConnectionProfileEndpointGcsProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointGcsProfile(this.gcsProfile);

  final DatastreamConnectionProfileGcsProfile gcsProfile;

  @override
  String get blockKey => 'gcs_profile';

  @override
  Map<String, Object?> encode() => {'gcs_profile': gcsProfile.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gcs_profile': TfArg.literal(gcsProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.mysqlProfile] choice: sets `mysql_profile`.
final class DatastreamConnectionProfileEndpointMysqlProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointMysqlProfile(this.mysqlProfile);

  final DatastreamConnectionProfileMysqlProfile mysqlProfile;

  @override
  String get blockKey => 'mysql_profile';

  @override
  Map<String, Object?> encode() => {'mysql_profile': mysqlProfile.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mysql_profile': TfArg.literal(mysqlProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.bigqueryProfile] choice: sets `bigquery_profile`.
final class DatastreamConnectionProfileEndpointBigqueryProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointBigqueryProfile(
    this.bigqueryProfile,
  );

  final DatastreamConnectionProfileBigqueryProfile bigqueryProfile;

  @override
  String get blockKey => 'bigquery_profile';

  @override
  Map<String, Object?> encode() => {
    'bigquery_profile': bigqueryProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bigquery_profile': TfArg.literal(bigqueryProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.postgresqlProfile] choice: sets `postgresql_profile`.
final class DatastreamConnectionProfileEndpointPostgresqlProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointPostgresqlProfile(
    this.postgresqlProfile,
  );

  final DatastreamConnectionProfilePostgresqlProfile postgresqlProfile;

  @override
  String get blockKey => 'postgresql_profile';

  @override
  Map<String, Object?> encode() => {
    'postgresql_profile': postgresqlProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'postgresql_profile': TfArg.literal(postgresqlProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.sqlServerProfile] choice: sets `sql_server_profile`.
final class DatastreamConnectionProfileEndpointSqlServerProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointSqlServerProfile(
    this.sqlServerProfile,
  );

  final DatastreamConnectionProfileSqlServerProfile sqlServerProfile;

  @override
  String get blockKey => 'sql_server_profile';

  @override
  Map<String, Object?> encode() => {
    'sql_server_profile': sqlServerProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'sql_server_profile': TfArg.literal(sqlServerProfile.encode()),
  };
}

/// The [DatastreamConnectionProfileEndpoint.mongodbProfile] choice: sets `mongodb_profile`.
final class DatastreamConnectionProfileEndpointMongodbProfile
    extends DatastreamConnectionProfileEndpoint {
  const DatastreamConnectionProfileEndpointMongodbProfile(this.mongodbProfile);

  final DatastreamConnectionProfileMongodbProfile mongodbProfile;

  @override
  String get blockKey => 'mongodb_profile';

  @override
  Map<String, Object?> encode() => {'mongodb_profile': mongodbProfile.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mongodb_profile': TfArg.literal(mongodbProfile.encode()),
  };
}

/// At most one of `forward_ssh_connectivity`, `private_connectivity` on `google_datastream_connection_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.forwardSshConnectivity(...)`.
sealed class DatastreamConnectionProfileConnectivity {
  const DatastreamConnectionProfileConnectivity();

  /// Sets `forward_ssh_connectivity`.
  const factory DatastreamConnectionProfileConnectivity.forwardSshConnectivity(
    DatastreamConnectionProfileForwardSshConnectivity forwardSshConnectivity,
  ) = DatastreamConnectionProfileForwardSshConnectivityChoice;

  /// Sets `private_connectivity`.
  const factory DatastreamConnectionProfileConnectivity.privateConnectivity(
    DatastreamConnectionProfilePrivateConnectivity privateConnectivity,
  ) = DatastreamConnectionProfilePrivateConnectivityChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatastreamConnectionProfileConnectivity.forwardSshConnectivity] choice: sets `forward_ssh_connectivity`.
final class DatastreamConnectionProfileForwardSshConnectivityChoice
    extends DatastreamConnectionProfileConnectivity {
  const DatastreamConnectionProfileForwardSshConnectivityChoice(
    this.forwardSshConnectivity,
  );

  final DatastreamConnectionProfileForwardSshConnectivity
  forwardSshConnectivity;

  @override
  String get blockKey => 'forward_ssh_connectivity';

  @override
  Map<String, Object?> encode() => {
    'forward_ssh_connectivity': forwardSshConnectivity.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'forward_ssh_connectivity': TfArg.literal(forwardSshConnectivity.encode()),
  };
}

/// The [DatastreamConnectionProfileConnectivity.privateConnectivity] choice: sets `private_connectivity`.
final class DatastreamConnectionProfilePrivateConnectivityChoice
    extends DatastreamConnectionProfileConnectivity {
  const DatastreamConnectionProfilePrivateConnectivityChoice(
    this.privateConnectivity,
  );

  final DatastreamConnectionProfilePrivateConnectivity privateConnectivity;

  @override
  String get blockKey => 'private_connectivity';

  @override
  Map<String, Object?> encode() => {
    'private_connectivity': privateConnectivity.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'private_connectivity': TfArg.literal(privateConnectivity.encode()),
  };
}

/// Typed helper for the `bigquery_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileBigqueryProfile {
  const DatastreamConnectionProfileBigqueryProfile();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `forward_ssh_connectivity` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileForwardSshConnectivity {
  const DatastreamConnectionProfileForwardSshConnectivity({
    required this.hostname,
    this.credential,
    this.port,
    required this.username,
  });

  final TfArg<String> hostname;

  final DatastreamConnectionProfileCredential? credential;

  final TfArg<num>? port;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    ...?credential?.encode(),
    'port': ?port?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// At most one of `password`, `private_key` on the `forward_ssh_connectivity` block of `google_datastream_connection_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class DatastreamConnectionProfileCredential {
  const DatastreamConnectionProfileCredential();

  /// Sets `password`.
  const factory DatastreamConnectionProfileCredential.password(
    Sensitive<String> password,
  ) = DatastreamConnectionProfileCredentialPassword;

  /// Sets `private_key`.
  const factory DatastreamConnectionProfileCredential.privateKey(
    Sensitive<String> privateKey,
  ) = DatastreamConnectionProfileCredentialPrivateKey;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DatastreamConnectionProfileCredential.password] choice: sets `password`.
final class DatastreamConnectionProfileCredentialPassword
    extends DatastreamConnectionProfileCredential {
  const DatastreamConnectionProfileCredentialPassword(this.password);

  final Sensitive<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [DatastreamConnectionProfileCredential.privateKey] choice: sets `private_key`.
final class DatastreamConnectionProfileCredentialPrivateKey
    extends DatastreamConnectionProfileCredential {
  const DatastreamConnectionProfileCredentialPrivateKey(this.privateKey);

  final Sensitive<String> privateKey;

  @override
  String get blockKey => 'private_key';

  @override
  Map<String, Object?> encode() => {'private_key': privateKey.toTfJson()};
}

/// Typed helper for the `gcs_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileGcsProfile {
  const DatastreamConnectionProfileGcsProfile({
    required this.bucket,
    this.rootPath,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? rootPath;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'root_path': ?rootPath?.toTfJson(),
  };
}

/// Typed helper for the `mongodb_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMongodbProfile {
  const DatastreamConnectionProfileMongodbProfile({
    this.additionalOptions,
    this.password,
    this.replicaSet,
    this.secretManagerStoredPassword,
    required this.username,
    required this.hostAddresses,
    this.srvConnectionFormat,
    this.sslConfig,
    this.standardConnectionFormat,
  });

  final TfArg<Map<String, String>>? additionalOptions;

  final Sensitive<String>? password;

  final TfArg<String>? replicaSet;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final List<DatastreamConnectionProfileHostAddresses> hostAddresses;

  final DatastreamConnectionProfileSrvConnectionFormat? srvConnectionFormat;

  final DatastreamConnectionProfileMongodbProfileSslConfig? sslConfig;

  final DatastreamConnectionProfileStandardConnectionFormat?
  standardConnectionFormat;

  Map<String, Object?> encode() => {
    'additional_options': ?additionalOptions?.toTfJson(),
    'password': ?password?.toTfJson(),
    'replica_set': ?replicaSet?.toTfJson(),
    'secret_manager_stored_password': ?secretManagerStoredPassword?.toTfJson(),
    'username': username.toTfJson(),
    'host_addresses': [for (final e in hostAddresses) e.encode()],
    'srv_connection_format': ?srvConnectionFormat?.encode(),
    'ssl_config': ?sslConfig?.encode(),
    'standard_connection_format': ?standardConnectionFormat?.encode(),
  };
}

/// Typed helper for the `mongodb_profile.host_addresses` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileHostAddresses {
  const DatastreamConnectionProfileHostAddresses({
    required this.hostname,
    this.port,
  });

  final TfArg<String> hostname;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `mongodb_profile.srv_connection_format` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileSrvConnectionFormat {
  const DatastreamConnectionProfileSrvConnectionFormat();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `mongodb_profile.ssl_config` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMongodbProfileSslConfig {
  const DatastreamConnectionProfileMongodbProfileSslConfig({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.secretManagerStoredClientKey,
  });

  final Sensitive<String>? caCertificate;

  final Sensitive<String>? clientCertificate;

  final Sensitive<String>? clientKey;

  final Sensitive<String>? secretManagerStoredClientKey;

  Map<String, Object?> encode() => {
    'ca_certificate': ?caCertificate?.toTfJson(),
    'client_certificate': ?clientCertificate?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
    'secret_manager_stored_client_key': ?secretManagerStoredClientKey
        ?.toTfJson(),
  };
}

/// Typed helper for the `mongodb_profile.standard_connection_format` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileStandardConnectionFormat {
  const DatastreamConnectionProfileStandardConnectionFormat({
    this.directConnection,
  });

  final TfArg<bool>? directConnection;

  Map<String, Object?> encode() => {
    'direct_connection': ?directConnection?.toTfJson(),
  };
}

/// Typed helper for the `mysql_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMysqlProfile {
  const DatastreamConnectionProfileMysqlProfile({
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
    this.sslConfig,
  });

  final TfArg<String> hostname;

  final Sensitive<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final DatastreamConnectionProfileMysqlProfileSslConfig? sslConfig;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'secret_manager_stored_password': ?secretManagerStoredPassword?.toTfJson(),
    'username': username.toTfJson(),
    'ssl_config': ?sslConfig?.encode(),
  };
}

/// Typed helper for the `mysql_profile.ssl_config` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMysqlProfileSslConfig {
  const DatastreamConnectionProfileMysqlProfileSslConfig({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
  });

  final Sensitive<String>? caCertificate;

  final Sensitive<String>? clientCertificate;

  final Sensitive<String>? clientKey;

  Map<String, Object?> encode() => {
    'ca_certificate': ?caCertificate?.toTfJson(),
    'client_certificate': ?clientCertificate?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
  };
}

/// Typed helper for the `oracle_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileOracleProfile {
  const DatastreamConnectionProfileOracleProfile({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  final TfArg<Map<String, String>>? connectionAttributes;

  final TfArg<String> databaseService;

  final TfArg<String> hostname;

  final Sensitive<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'connection_attributes': ?connectionAttributes?.toTfJson(),
    'database_service': databaseService.toTfJson(),
    'hostname': hostname.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'secret_manager_stored_password': ?secretManagerStoredPassword?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `postgresql_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfilePostgresqlProfile {
  const DatastreamConnectionProfilePostgresqlProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
    this.sslConfig,
  });

  final TfArg<String> database;

  final TfArg<String> hostname;

  final Sensitive<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final DatastreamConnectionProfilePostgresqlProfileSslConfig? sslConfig;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'hostname': hostname.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'secret_manager_stored_password': ?secretManagerStoredPassword?.toTfJson(),
    'username': username.toTfJson(),
    'ssl_config': ?sslConfig?.encode(),
  };
}

/// Typed helper for the `postgresql_profile.ssl_config` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfilePostgresqlProfileSslConfig {
  const DatastreamConnectionProfilePostgresqlProfileSslConfig({
    this.serverAndClientVerification,
    this.serverVerification,
  });

  final DatastreamConnectionProfileServerAndClientVerification?
  serverAndClientVerification;

  final DatastreamConnectionProfileServerVerification? serverVerification;

  Map<String, Object?> encode() => {
    'server_and_client_verification': ?serverAndClientVerification?.encode(),
    'server_verification': ?serverVerification?.encode(),
  };
}

/// Typed helper for the `postgresql_profile.ssl_config.server_and_client_verification` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileServerAndClientVerification {
  const DatastreamConnectionProfileServerAndClientVerification({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
  });

  final Sensitive<String> caCertificate;

  final Sensitive<String> clientCertificate;

  final Sensitive<String> clientKey;

  Map<String, Object?> encode() => {
    'ca_certificate': caCertificate.toTfJson(),
    'client_certificate': clientCertificate.toTfJson(),
    'client_key': clientKey.toTfJson(),
  };
}

/// Typed helper for the `postgresql_profile.ssl_config.server_verification` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileServerVerification {
  const DatastreamConnectionProfileServerVerification({
    required this.caCertificate,
  });

  final Sensitive<String> caCertificate;

  Map<String, Object?> encode() => {'ca_certificate': caCertificate.toTfJson()};
}

/// Typed helper for the `private_connectivity` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfilePrivateConnectivity {
  const DatastreamConnectionProfilePrivateConnectivity({
    required this.privateConnection,
  });

  final TfArg<String> privateConnection;

  Map<String, Object?> encode() => {
    'private_connection': privateConnection.toTfJson(),
  };
}

/// Typed helper for the `sql_server_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileSqlServerProfile {
  const DatastreamConnectionProfileSqlServerProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  final TfArg<String> database;

  final TfArg<String> hostname;

  final Sensitive<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'hostname': hostname.toTfJson(),
    'password': ?password?.toTfJson(),
    'port': ?port?.toTfJson(),
    'secret_manager_stored_password': ?secretManagerStoredPassword?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `google_datastream_connection_profile`.
///
/// A set of reusable connection configurations to be used as a source or
/// destination for a stream.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatastreamConnectionProfile extends Resource {
  static const String tfType = 'google_datastream_connection_profile';

  GoogleDatastreamConnectionProfile(
    super.localName, {
    required TfArg<String> connectionProfileId,
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    DatastreamConnectionProfileConnectivity? connectivity,
    required DatastreamConnectionProfileEndpoint endpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_profile_id': connectionProfileId,
           'create_without_validation': ?createWithoutValidation,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           ...?connectivity?.argMap,
           ...endpoint.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatastreamConnectionProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatastreamConnectionProfile>`.
  RefTo<GoogleDatastreamConnectionProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `connection_profile_id` attribute.
  TfRef<String> get connectionProfileId =>
      TfRef.attribute<String>(this, 'connection_profile_id');

  /// Reference to `create_without_validation` attribute.
  TfRef<bool> get createWithoutValidation =>
      TfRef.attribute<bool>(this, 'create_without_validation');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

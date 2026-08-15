// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    this.password,
    this.port,
    this.privateKey,
    required this.username,
  });

  final TfArg<String> hostname;

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? privateKey;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `gcs_profile` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileGcsProfile {
  const DatastreamConnectionProfileGcsProfile({
    required this.bucket,
    this.rootPath,
  });

  final TfArg<String> bucket;

  final TfArg<String>? rootPath;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (rootPath != null) 'root_path': rootPath!.toTfJson(),
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

  final TfArg<String>? password;

  final TfArg<String>? replicaSet;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final List<DatastreamConnectionProfileMongodbProfileHostAddresses>
  hostAddresses;

  final DatastreamConnectionProfileMongodbProfileSrvConnectionFormat?
  srvConnectionFormat;

  final DatastreamConnectionProfileMongodbProfileSslConfig? sslConfig;

  final DatastreamConnectionProfileMongodbProfileStandardConnectionFormat?
  standardConnectionFormat;

  Map<String, Object?> encode() => {
    if (additionalOptions != null)
      'additional_options': additionalOptions!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (replicaSet != null) 'replica_set': replicaSet!.toTfJson(),
    if (secretManagerStoredPassword != null)
      'secret_manager_stored_password': secretManagerStoredPassword!.toTfJson(),
    'username': username.toTfJson(),
    'host_addresses': [for (final e in hostAddresses) e.encode()],
    if (srvConnectionFormat != null)
      'srv_connection_format': srvConnectionFormat!.encode(),
    if (sslConfig != null) 'ssl_config': sslConfig!.encode(),
    if (standardConnectionFormat != null)
      'standard_connection_format': standardConnectionFormat!.encode(),
  };
}

/// Typed helper for the `mongodb_profile.host_addresses` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMongodbProfileHostAddresses {
  const DatastreamConnectionProfileMongodbProfileHostAddresses({
    required this.hostname,
    this.port,
  });

  final TfArg<String> hostname;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `mongodb_profile.srv_connection_format` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMongodbProfileSrvConnectionFormat {
  const DatastreamConnectionProfileMongodbProfileSrvConnectionFormat();

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

  final TfArg<String>? caCertificate;

  final TfArg<String>? clientCertificate;

  final TfArg<String>? clientKey;

  final TfArg<String>? secretManagerStoredClientKey;

  Map<String, Object?> encode() => {
    if (caCertificate != null) 'ca_certificate': caCertificate!.toTfJson(),
    if (clientCertificate != null)
      'client_certificate': clientCertificate!.toTfJson(),
    if (clientKey != null) 'client_key': clientKey!.toTfJson(),
    if (secretManagerStoredClientKey != null)
      'secret_manager_stored_client_key': secretManagerStoredClientKey!
          .toTfJson(),
  };
}

/// Typed helper for the `mongodb_profile.standard_connection_format` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfileMongodbProfileStandardConnectionFormat {
  const DatastreamConnectionProfileMongodbProfileStandardConnectionFormat({
    this.directConnection,
  });

  final TfArg<bool>? directConnection;

  Map<String, Object?> encode() => {
    if (directConnection != null)
      'direct_connection': directConnection!.toTfJson(),
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

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final DatastreamConnectionProfileMysqlProfileSslConfig? sslConfig;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (secretManagerStoredPassword != null)
      'secret_manager_stored_password': secretManagerStoredPassword!.toTfJson(),
    'username': username.toTfJson(),
    if (sslConfig != null) 'ssl_config': sslConfig!.encode(),
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

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    if (connectionAttributes != null)
      'connection_attributes': connectionAttributes!.toTfJson(),
    'database_service': databaseService.toTfJson(),
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (secretManagerStoredPassword != null)
      'secret_manager_stored_password': secretManagerStoredPassword!.toTfJson(),
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

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  final DatastreamConnectionProfilePostgresqlProfileSslConfig? sslConfig;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (secretManagerStoredPassword != null)
      'secret_manager_stored_password': secretManagerStoredPassword!.toTfJson(),
    'username': username.toTfJson(),
    if (sslConfig != null) 'ssl_config': sslConfig!.encode(),
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

  final DatastreamConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification?
  serverAndClientVerification;

  final DatastreamConnectionProfilePostgresqlProfileSslConfigServerVerification?
  serverVerification;

  Map<String, Object?> encode() => {
    if (serverAndClientVerification != null)
      'server_and_client_verification': serverAndClientVerification!.encode(),
    if (serverVerification != null)
      'server_verification': serverVerification!.encode(),
  };
}

/// Typed helper for the `postgresql_profile.ssl_config.server_and_client_verification` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification {
  const DatastreamConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
  });

  final TfArg<String> caCertificate;

  final TfArg<String> clientCertificate;

  final TfArg<String> clientKey;

  Map<String, Object?> encode() => {
    'ca_certificate': caCertificate.toTfJson(),
    'client_certificate': clientCertificate.toTfJson(),
    'client_key': clientKey.toTfJson(),
  };
}

/// Typed helper for the `postgresql_profile.ssl_config.server_verification` block of
/// `google_datastream_connection_profile` (derived from provider schema).
@immutable
final class DatastreamConnectionProfilePostgresqlProfileSslConfigServerVerification {
  const DatastreamConnectionProfilePostgresqlProfileSslConfigServerVerification({
    required this.caCertificate,
  });

  final TfArg<String> caCertificate;

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

  final TfArg<String>? password;

  final TfArg<num>? port;

  final TfArg<String>? secretManagerStoredPassword;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'hostname': hostname.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (secretManagerStoredPassword != null)
      'secret_manager_stored_password': secretManagerStoredPassword!.toTfJson(),
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

  GoogleDatastreamConnectionProfile({
    required super.localName,
    required TfArg<String> connectionProfileId,
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    DatastreamConnectionProfileForwardSshConnectivity? forwardSshConnectivity,
    DatastreamConnectionProfileGcsProfile? gcsProfile,
    DatastreamConnectionProfilePrivateConnectivity? privateConnectivity,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_profile_id': connectionProfileId,
           if (createWithoutValidation != null)
             'create_without_validation': createWithoutValidation,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           if (forwardSshConnectivity != null)
             'forward_ssh_connectivity': TfArg.literal(
               forwardSshConnectivity.encode(),
             ),
           if (gcsProfile != null)
             'gcs_profile': TfArg.literal(gcsProfile.encode()),
           if (privateConnectivity != null)
             'private_connectivity': TfArg.literal(
               privateConnectivity.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatastreamConnectionProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}

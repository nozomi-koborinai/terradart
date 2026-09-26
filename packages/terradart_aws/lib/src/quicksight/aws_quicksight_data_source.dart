// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_data_source`.
const Set<String> _awsQuicksightDataSourceSensitive = <String>{
  'credentials.credential_pair.password',
  'credentials.credential_pair.username',
};

/// Typed helper for the `credentials` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceCredentials {
  const QuicksightDataSourceCredentials({
    this.copySourceArn,
    this.secretArn,
    this.credentialPair,
  });

  final TfArg<String>? copySourceArn;

  final TfArg<String>? secretArn;

  final QuicksightDataSourceCredentialsCredentialPair? credentialPair;

  Map<String, Object?> encode() => {
    if (copySourceArn != null) 'copy_source_arn': copySourceArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
    if (credentialPair != null) 'credential_pair': credentialPair!.encode(),
  };
}

/// Typed helper for the `credentials.credential_pair` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceCredentialsCredentialPair {
  const QuicksightDataSourceCredentialsCredentialPair({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `parameters` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParameters {
  const QuicksightDataSourceParameters({
    this.amazonElasticsearch,
    this.athena,
    this.aurora,
    this.auroraPostgresql,
    this.awsIotAnalytics,
    this.databricks,
    this.jira,
    this.mariaDb,
    this.mysql,
    this.oracle,
    this.postgresql,
    this.presto,
    this.rds,
    this.redshift,
    this.s3,
    this.serviceNow,
    this.snowflake,
    this.spark,
    this.sqlServer,
    this.teradata,
    this.twitter,
  });

  final QuicksightDataSourceParametersAmazonElasticsearch? amazonElasticsearch;

  final QuicksightDataSourceParametersAthena? athena;

  final QuicksightDataSourceParametersAurora? aurora;

  final QuicksightDataSourceParametersAuroraPostgresql? auroraPostgresql;

  final QuicksightDataSourceParametersAwsIotAnalytics? awsIotAnalytics;

  final QuicksightDataSourceParametersDatabricks? databricks;

  final QuicksightDataSourceParametersJira? jira;

  final QuicksightDataSourceParametersMariaDb? mariaDb;

  final QuicksightDataSourceParametersMysql? mysql;

  final QuicksightDataSourceParametersOracle? oracle;

  final QuicksightDataSourceParametersPostgresql? postgresql;

  final QuicksightDataSourceParametersPresto? presto;

  final QuicksightDataSourceParametersRds? rds;

  final QuicksightDataSourceParametersRedshift? redshift;

  final QuicksightDataSourceParametersS3? s3;

  final QuicksightDataSourceParametersServiceNow? serviceNow;

  final QuicksightDataSourceParametersSnowflake? snowflake;

  final QuicksightDataSourceParametersSpark? spark;

  final QuicksightDataSourceParametersSqlServer? sqlServer;

  final QuicksightDataSourceParametersTeradata? teradata;

  final QuicksightDataSourceParametersTwitter? twitter;

  Map<String, Object?> encode() => {
    if (amazonElasticsearch != null)
      'amazon_elasticsearch': amazonElasticsearch!.encode(),
    if (athena != null) 'athena': athena!.encode(),
    if (aurora != null) 'aurora': aurora!.encode(),
    if (auroraPostgresql != null)
      'aurora_postgresql': auroraPostgresql!.encode(),
    if (awsIotAnalytics != null) 'aws_iot_analytics': awsIotAnalytics!.encode(),
    if (databricks != null) 'databricks': databricks!.encode(),
    if (jira != null) 'jira': jira!.encode(),
    if (mariaDb != null) 'maria_db': mariaDb!.encode(),
    if (mysql != null) 'mysql': mysql!.encode(),
    if (oracle != null) 'oracle': oracle!.encode(),
    if (postgresql != null) 'postgresql': postgresql!.encode(),
    if (presto != null) 'presto': presto!.encode(),
    if (rds != null) 'rds': rds!.encode(),
    if (redshift != null) 'redshift': redshift!.encode(),
    if (s3 != null) 's3': s3!.encode(),
    if (serviceNow != null) 'service_now': serviceNow!.encode(),
    if (snowflake != null) 'snowflake': snowflake!.encode(),
    if (spark != null) 'spark': spark!.encode(),
    if (sqlServer != null) 'sql_server': sqlServer!.encode(),
    if (teradata != null) 'teradata': teradata!.encode(),
    if (twitter != null) 'twitter': twitter!.encode(),
  };
}

/// Typed helper for the `parameters.amazon_elasticsearch` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersAmazonElasticsearch {
  const QuicksightDataSourceParametersAmazonElasticsearch({
    required this.domain,
  });

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `parameters.athena` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersAthena {
  const QuicksightDataSourceParametersAthena({this.roleArn, this.workGroup});

  final TfArg<String>? roleArn;

  final TfArg<String>? workGroup;

  Map<String, Object?> encode() => {
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (workGroup != null) 'work_group': workGroup!.toTfJson(),
  };
}

/// Typed helper for the `parameters.aurora` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersAurora {
  const QuicksightDataSourceParametersAurora({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.aurora_postgresql` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersAuroraPostgresql {
  const QuicksightDataSourceParametersAuroraPostgresql({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.aws_iot_analytics` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersAwsIotAnalytics {
  const QuicksightDataSourceParametersAwsIotAnalytics({
    required this.dataSetName,
  });

  final TfArg<String> dataSetName;

  Map<String, Object?> encode() => {'data_set_name': dataSetName.toTfJson()};
}

/// Typed helper for the `parameters.databricks` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersDatabricks {
  const QuicksightDataSourceParametersDatabricks({
    required this.host,
    required this.port,
    required this.sqlEndpointPath,
  });

  final TfArg<String> host;

  final TfArg<num> port;

  final TfArg<String> sqlEndpointPath;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': port.toTfJson(),
    'sql_endpoint_path': sqlEndpointPath.toTfJson(),
  };
}

/// Typed helper for the `parameters.jira` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersJira {
  const QuicksightDataSourceParametersJira({required this.siteBaseUrl});

  final TfArg<String> siteBaseUrl;

  Map<String, Object?> encode() => {'site_base_url': siteBaseUrl.toTfJson()};
}

/// Typed helper for the `parameters.maria_db` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersMariaDb {
  const QuicksightDataSourceParametersMariaDb({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.mysql` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersMysql {
  const QuicksightDataSourceParametersMysql({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.oracle` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersOracle {
  const QuicksightDataSourceParametersOracle({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.postgresql` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersPostgresql {
  const QuicksightDataSourceParametersPostgresql({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.presto` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersPresto {
  const QuicksightDataSourceParametersPresto({
    required this.catalog,
    required this.host,
    required this.port,
  });

  final TfArg<String> catalog;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'catalog': catalog.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.rds` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersRds {
  const QuicksightDataSourceParametersRds({
    required this.database,
    required this.instanceId,
  });

  final TfArg<String> database;

  final TfArg<String> instanceId;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'instance_id': instanceId.toTfJson(),
  };
}

/// Typed helper for the `parameters.redshift` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersRedshift {
  const QuicksightDataSourceParametersRedshift({
    this.clusterId,
    required this.database,
    this.host,
    this.port,
  });

  final TfArg<String>? clusterId;

  final TfArg<String> database;

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (clusterId != null) 'cluster_id': clusterId!.toTfJson(),
    'database': database.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `parameters.s3` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersS3 {
  const QuicksightDataSourceParametersS3({
    this.roleArn,
    required this.manifestFileLocation,
  });

  final TfArg<String>? roleArn;

  final QuicksightDataSourceParametersS3ManifestFileLocation
  manifestFileLocation;

  Map<String, Object?> encode() => {
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    'manifest_file_location': manifestFileLocation.encode(),
  };
}

/// Typed helper for the `parameters.s3.manifest_file_location` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersS3ManifestFileLocation {
  const QuicksightDataSourceParametersS3ManifestFileLocation({
    required this.bucket,
    required this.key,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Typed helper for the `parameters.service_now` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersServiceNow {
  const QuicksightDataSourceParametersServiceNow({required this.siteBaseUrl});

  final TfArg<String> siteBaseUrl;

  Map<String, Object?> encode() => {'site_base_url': siteBaseUrl.toTfJson()};
}

/// Typed helper for the `parameters.snowflake` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersSnowflake {
  const QuicksightDataSourceParametersSnowflake({
    required this.database,
    required this.host,
    required this.warehouse,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<String> warehouse;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'warehouse': warehouse.toTfJson(),
  };
}

/// Typed helper for the `parameters.spark` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersSpark {
  const QuicksightDataSourceParametersSpark({
    required this.host,
    required this.port,
  });

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.sql_server` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersSqlServer {
  const QuicksightDataSourceParametersSqlServer({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.teradata` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersTeradata {
  const QuicksightDataSourceParametersTeradata({
    required this.database,
    required this.host,
    required this.port,
  });

  final TfArg<String> database;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `parameters.twitter` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceParametersTwitter {
  const QuicksightDataSourceParametersTwitter({
    required this.maxRows,
    required this.query,
  });

  final TfArg<num> maxRows;

  final TfArg<String> query;

  Map<String, Object?> encode() => {
    'max_rows': maxRows.toTfJson(),
    'query': query.toTfJson(),
  };
}

/// Typed helper for the `permission` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourcePermission {
  const QuicksightDataSourcePermission({
    required this.actions,
    required this.principal,
  });

  final TfArg<List<Object?>> actions;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Typed helper for the `ssl_properties` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceSslProperties {
  const QuicksightDataSourceSslProperties({required this.disableSsl});

  final TfArg<bool> disableSsl;

  Map<String, Object?> encode() => {'disable_ssl': disableSsl.toTfJson()};
}

/// Typed helper for the `vpc_connection_properties` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceVpcConnectionProperties {
  const QuicksightDataSourceVpcConnectionProperties({
    required this.vpcConnectionArn,
  });

  final TfArg<String> vpcConnectionArn;

  Map<String, Object?> encode() => {
    'vpc_connection_arn': vpcConnectionArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_data_source`.
final class AwsQuicksightDataSource extends Resource {
  static const String tfType = 'aws_quicksight_data_source';

  AwsQuicksightDataSource({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSourceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    QuicksightDataSourceCredentials? credentials,
    required QuicksightDataSourceParameters parameters,
    List<QuicksightDataSourcePermission>? permission,
    QuicksightDataSourceSslProperties? sslProperties,
    QuicksightDataSourceVpcConnectionProperties? vpcConnectionProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'data_source_id': dataSourceId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           if (credentials != null)
             'credentials': TfArg.literal(credentials.encode()),
           'parameters': TfArg.literal(parameters.encode()),
           if (permission != null)
             'permission': TfArg.literal([
               for (final e in permission) e.encode(),
             ]),
           if (sslProperties != null)
             'ssl_properties': TfArg.literal(sslProperties.encode()),
           if (vpcConnectionProperties != null)
             'vpc_connection_properties': TfArg.literal(
               vpcConnectionProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightDataSourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

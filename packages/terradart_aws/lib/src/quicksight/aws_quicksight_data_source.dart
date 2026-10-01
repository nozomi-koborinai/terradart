// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_quicksight_data_source`.
const Set<String> _awsQuicksightDataSourceSensitive = <String>{
  'credentials.credential_pair.password',
  'credentials.credential_pair.username',
};

/// Quicksight Data Source enum for `type`.
enum QuicksightDataSourceType implements TerraformEnum {
  adobeAnalytics('ADOBE_ANALYTICS'),
  amazonElasticsearch('AMAZON_ELASTICSEARCH'),
  athena('ATHENA'),
  aurora('AURORA'),
  auroraPostgresql('AURORA_POSTGRESQL'),
  awsIotAnalytics('AWS_IOT_ANALYTICS'),
  github('GITHUB'),
  jira('JIRA'),
  mariadb('MARIADB'),
  mysql('MYSQL'),
  oracle('ORACLE'),
  postgresql('POSTGRESQL'),
  presto('PRESTO'),
  redshift('REDSHIFT'),
  s3('S3'),
  s3Tables('S3_TABLES'),
  salesforce('SALESFORCE'),
  servicenow('SERVICENOW'),
  snowflake('SNOWFLAKE'),
  spark('SPARK'),
  sqlserver('SQLSERVER'),
  teradata('TERADATA'),
  twitter('TWITTER'),
  timestream('TIMESTREAM'),
  amazonOpensearch('AMAZON_OPENSEARCH'),
  exasol('EXASOL'),
  databricks('DATABRICKS'),
  starburst('STARBURST'),
  trino('TRINO'),
  bigquery('BIGQUERY'),
  googlesheets('GOOGLESHEETS'),
  googleDrive('GOOGLE_DRIVE'),
  confluence('CONFLUENCE'),
  sharepoint('SHAREPOINT'),
  oneDrive('ONE_DRIVE'),
  webCrawler('WEB_CRAWLER'),
  s3KnowledgeBase('S3_KNOWLEDGE_BASE'),
  qbusiness('QBUSINESS');

  const QuicksightDataSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final QuicksightDataSourceCredentialPair? credentialPair;

  Map<String, Object?> encode() => {
    'copy_source_arn': ?copySourceArn?.toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
    'credential_pair': ?credentialPair?.encode(),
  };
}

/// Typed helper for the `credentials.credential_pair` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceCredentialPair {
  const QuicksightDataSourceCredentialPair({
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

  final QuicksightDataSourceAmazonElasticsearch? amazonElasticsearch;

  final QuicksightDataSourceAthena? athena;

  final QuicksightDataSourceAurora? aurora;

  final QuicksightDataSourceAuroraPostgresql? auroraPostgresql;

  final QuicksightDataSourceAwsIotAnalytics? awsIotAnalytics;

  final QuicksightDataSourceDatabricks? databricks;

  final QuicksightDataSourceJira? jira;

  final QuicksightDataSourceMariaDb? mariaDb;

  final QuicksightDataSourceMysql? mysql;

  final QuicksightDataSourceOracle? oracle;

  final QuicksightDataSourcePostgresql? postgresql;

  final QuicksightDataSourcePresto? presto;

  final QuicksightDataSourceRds? rds;

  final QuicksightDataSourceRedshift? redshift;

  final QuicksightDataSourceS3? s3;

  final QuicksightDataSourceServiceNow? serviceNow;

  final QuicksightDataSourceSnowflake? snowflake;

  final QuicksightDataSourceSpark? spark;

  final QuicksightDataSourceSqlServer? sqlServer;

  final QuicksightDataSourceTeradata? teradata;

  final QuicksightDataSourceTwitter? twitter;

  Map<String, Object?> encode() => {
    'amazon_elasticsearch': ?amazonElasticsearch?.encode(),
    'athena': ?athena?.encode(),
    'aurora': ?aurora?.encode(),
    'aurora_postgresql': ?auroraPostgresql?.encode(),
    'aws_iot_analytics': ?awsIotAnalytics?.encode(),
    'databricks': ?databricks?.encode(),
    'jira': ?jira?.encode(),
    'maria_db': ?mariaDb?.encode(),
    'mysql': ?mysql?.encode(),
    'oracle': ?oracle?.encode(),
    'postgresql': ?postgresql?.encode(),
    'presto': ?presto?.encode(),
    'rds': ?rds?.encode(),
    'redshift': ?redshift?.encode(),
    's3': ?s3?.encode(),
    'service_now': ?serviceNow?.encode(),
    'snowflake': ?snowflake?.encode(),
    'spark': ?spark?.encode(),
    'sql_server': ?sqlServer?.encode(),
    'teradata': ?teradata?.encode(),
    'twitter': ?twitter?.encode(),
  };
}

/// Typed helper for the `parameters.amazon_elasticsearch` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceAmazonElasticsearch {
  const QuicksightDataSourceAmazonElasticsearch({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `parameters.athena` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceAthena {
  const QuicksightDataSourceAthena({this.roleArn, this.workGroup});

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? workGroup;

  Map<String, Object?> encode() => {
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'work_group': ?workGroup?.toTfJson(),
  };
}

/// Typed helper for the `parameters.aurora` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceAurora {
  const QuicksightDataSourceAurora({
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
final class QuicksightDataSourceAuroraPostgresql {
  const QuicksightDataSourceAuroraPostgresql({
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
final class QuicksightDataSourceAwsIotAnalytics {
  const QuicksightDataSourceAwsIotAnalytics({required this.dataSetName});

  final TfArg<String> dataSetName;

  Map<String, Object?> encode() => {'data_set_name': dataSetName.toTfJson()};
}

/// Typed helper for the `parameters.databricks` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceDatabricks {
  const QuicksightDataSourceDatabricks({
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
final class QuicksightDataSourceJira {
  const QuicksightDataSourceJira({required this.siteBaseUrl});

  final TfArg<String> siteBaseUrl;

  Map<String, Object?> encode() => {'site_base_url': siteBaseUrl.toTfJson()};
}

/// Typed helper for the `parameters.maria_db` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceMariaDb {
  const QuicksightDataSourceMariaDb({
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
final class QuicksightDataSourceMysql {
  const QuicksightDataSourceMysql({
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
final class QuicksightDataSourceOracle {
  const QuicksightDataSourceOracle({
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
final class QuicksightDataSourcePostgresql {
  const QuicksightDataSourcePostgresql({
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
final class QuicksightDataSourcePresto {
  const QuicksightDataSourcePresto({
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
final class QuicksightDataSourceRds {
  const QuicksightDataSourceRds({
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
final class QuicksightDataSourceRedshift {
  const QuicksightDataSourceRedshift({
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
    'cluster_id': ?clusterId?.toTfJson(),
    'database': database.toTfJson(),
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `parameters.s3` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceS3 {
  const QuicksightDataSourceS3({
    this.roleArn,
    required this.manifestFileLocation,
  });

  final RefTo<AwsIamRole>? roleArn;

  final QuicksightDataSourceManifestFileLocation manifestFileLocation;

  Map<String, Object?> encode() => {
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'manifest_file_location': manifestFileLocation.encode(),
  };
}

/// Typed helper for the `parameters.s3.manifest_file_location` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceManifestFileLocation {
  const QuicksightDataSourceManifestFileLocation({
    required this.bucket,
    required this.key,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Typed helper for the `parameters.service_now` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceServiceNow {
  const QuicksightDataSourceServiceNow({required this.siteBaseUrl});

  final TfArg<String> siteBaseUrl;

  Map<String, Object?> encode() => {'site_base_url': siteBaseUrl.toTfJson()};
}

/// Typed helper for the `parameters.snowflake` block of
/// `aws_quicksight_data_source` (derived from provider schema).
@immutable
final class QuicksightDataSourceSnowflake {
  const QuicksightDataSourceSnowflake({
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
final class QuicksightDataSourceSpark {
  const QuicksightDataSourceSpark({required this.host, required this.port});

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
final class QuicksightDataSourceSqlServer {
  const QuicksightDataSourceSqlServer({
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
final class QuicksightDataSourceTeradata {
  const QuicksightDataSourceTeradata({
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
final class QuicksightDataSourceTwitter {
  const QuicksightDataSourceTwitter({
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

  final TfArg<List<String>> actions;

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
    required TfArg<QuicksightDataSourceType> type,
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
           'aws_account_id': ?awsAccountId,
           'data_source_id': dataSourceId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightDataSource>`.
  RefTo<AwsQuicksightDataSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceIdRef =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}

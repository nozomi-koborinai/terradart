// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_connection`.
const Set<String> _googleBigqueryConnectionSensitive = <String>{
  'cloud_sql.credential.password',
  'configuration.authentication.username_password.password.plaintext',
};

// ===========================================================================
// Enums
// ===========================================================================

/// `cloud_sql.type` — Cloud SQL database engine. The schema includes
/// `DATABASE_TYPE_UNSPECIFIED` as a sentinel; do not pick it for new
/// connections. `SQL_SERVER` is not exposed by the GA provider schema as
/// of this curation.
enum BigqueryConnectionCloudSqlType {
  databaseTypeUnspecified('DATABASE_TYPE_UNSPECIFIED'),
  postgres('POSTGRES'),
  mysql('MYSQL');

  const BigqueryConnectionCloudSqlType(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// cloud_sql variant
// ===========================================================================

/// `cloud_sql.credential` block — username / password the BigQuery
/// federation layer presents to the Cloud SQL instance. The password is
/// schema-flagged `sensitive: true` and is masked on synth.
@immutable
class BigqueryConnectionCloudSqlCredential {
  const BigqueryConnectionCloudSqlCredential({
    required this.username,
    required this.password,
  });

  /// Required. Database user name.
  final TfArg<String> username;

  /// Required. Database user password. Wire via [TfArg.ref] to a Secret
  /// Manager-backed variable rather than a literal — the value is
  /// schema-flagged sensitive and is masked in the rendered
  /// `main.tf.json` via the generated `$sensitiveFields` set.
  final TfArg<String> password;

  Map<String, Object?> toArgMap() => {
    'username': username.toTfJson(),
    'password': password.toTfJson(),
  };
}

/// `cloud_sql` block — federated queries against a Cloud SQL Postgres
/// or MySQL instance.
@immutable
class BigqueryConnectionCloudSql {
  const BigqueryConnectionCloudSql({
    required this.instanceId,
    required this.database,
    required this.type,
    required this.credential,
  });

  /// Required. Cloud SQL instance id in the form
  /// `project:location:instance` (NOT a self-link). Mirror the project
  /// and region of the BigQuery connection (see [GoogleBigqueryConnection]
  /// `location` rules) — Cloud SQL `us-central1` maps to BigQuery `US`,
  /// Cloud SQL `europe-west1` maps to BigQuery `EU`.
  final TfArg<String> instanceId;

  /// Required. Database name inside the Cloud SQL instance.
  final TfArg<String> database;

  /// Required. Cloud SQL database engine — see
  /// [BigqueryConnectionCloudSqlType].
  final BigqueryConnectionCloudSqlType type;

  /// Required. Database credentials. The `password` field is sensitive.
  final BigqueryConnectionCloudSqlCredential credential;

  Map<String, Object?> toArgMap() => {
    'instance_id': instanceId.toTfJson(),
    'database': database.toTfJson(),
    'type': type.terraformValue,
    'credential': [credential.toArgMap()],
  };
}

// ===========================================================================
// cloud_spanner variant
// ===========================================================================

/// `cloud_spanner` block — federated reads against a Cloud Spanner
/// database. The connection's BigQuery region must match the Spanner
/// region.
@immutable
class BigqueryConnectionCloudSpanner {
  const BigqueryConnectionCloudSpanner({
    required this.database,
    this.useParallelism,
    this.maxParallelism,
    this.useDataBoost,
    this.databaseRole,
    @Deprecated(
      'Cloud Spanner serverless analytics is deprecated by the provider; '
      'prefer Data Boost (useDataBoost) for new workloads.',
    )
    this.useServerlessAnalytics,
  });

  /// Required. Fully-qualified Cloud Spanner database in the form
  /// `project/instance/database`.
  final TfArg<String> database;

  /// If `true`, BigQuery splits reads across Spanner shards in parallel.
  /// Must be set when [maxParallelism] or [useDataBoost] is set.
  final TfArg<bool>? useParallelism;

  /// Caps parallel splits per query when executing on Spanner
  /// independent compute resources. Requires [useParallelism] AND
  /// [useDataBoost].
  final TfArg<int>? maxParallelism;

  /// If `true`, reads execute on Spanner Data Boost (independent compute
  /// — does not consume the leader replica's compute budget). Requires
  /// [useParallelism].
  final TfArg<bool>? useDataBoost;

  /// Cloud Spanner database role for fine-grained access control. Must
  /// be provisioned by the Spanner admin with the necessary `SELECT` /
  /// `INSERT` permissions; consult
  /// `https://cloud.google.com/spanner/docs/fgac-about`.
  final TfArg<String>? databaseRole;

  /// Deprecated by the provider — use [useDataBoost] for new workloads.
  /// Retained for parity with the schema.
  @Deprecated(
    'Cloud Spanner serverless analytics is deprecated by the provider; '
    'prefer Data Boost (useDataBoost) for new workloads.',
  )
  final TfArg<bool>? useServerlessAnalytics;

  Map<String, Object?> toArgMap() => {
    'database': database.toTfJson(),
    if (useParallelism != null) 'use_parallelism': useParallelism!.toTfJson(),
    if (maxParallelism != null) 'max_parallelism': maxParallelism!.toTfJson(),
    if (useDataBoost != null) 'use_data_boost': useDataBoost!.toTfJson(),
    if (databaseRole != null) 'database_role': databaseRole!.toTfJson(),
    if (useServerlessAnalytics != null)
      // ignore: deprecated_member_use_from_same_package
      'use_serverless_analytics': useServerlessAnalytics!.toTfJson(),
  };
}

// ===========================================================================
// aws variant
// ===========================================================================

/// `aws.access_role` block — IAM role the Google-owned AWS identity
/// assumes when reading from S3 / Glue on behalf of BigQuery.
@immutable
class BigqueryConnectionAwsAccessRole {
  const BigqueryConnectionAwsAccessRole({required this.iamRoleId});

  /// Required. AWS IAM role ARN (e.g.
  /// `arn:aws:iam::111122223333:role/bq-omni`). The role's trust policy
  /// must trust the connection's Google-owned identity (surfaced as
  /// `aws.access_role.identity` after apply).
  final TfArg<String> iamRoleId;

  Map<String, Object?> toArgMap() => {'iam_role_id': iamRoleId.toTfJson()};
}

/// `aws` block — BigQuery Omni federation into AWS (S3 / Glue, BigLake-
/// on-AWS). The BigQuery `location` must be `aws-us-east-1`.
@immutable
class BigqueryConnectionAws {
  const BigqueryConnectionAws({required this.accessRole});

  /// Required. Wraps the customer-side IAM role BigQuery's Google-owned
  /// AWS user assumes on each query.
  final BigqueryConnectionAwsAccessRole accessRole;

  Map<String, Object?> toArgMap() => {
    'access_role': [accessRole.toArgMap()],
  };
}

// ===========================================================================
// azure variant
// ===========================================================================

/// `azure` block — BigQuery Omni federation into Azure Data Lake
/// Storage. The BigQuery `location` must be `azure-eastus2`. Most fields
/// are computed and consumed by the Azure side of the federation
/// bridge; only [customerTenantId] is required input.
@immutable
class BigqueryConnectionAzure {
  const BigqueryConnectionAzure({
    required this.customerTenantId,
    this.federatedApplicationClientId,
  });

  /// Required. Tenant id of the Azure AD directory hosting the data.
  final TfArg<String> customerTenantId;

  /// Optional. Azure Application (client) id where the federated
  /// credentials are hosted.
  final TfArg<String>? federatedApplicationClientId;

  Map<String, Object?> toArgMap() => {
    'customer_tenant_id': customerTenantId.toTfJson(),
    if (federatedApplicationClientId != null)
      'federated_application_client_id': federatedApplicationClientId!
          .toTfJson(),
  };
}

// ===========================================================================
// cloud_resource variant
// ===========================================================================

/// `cloud_resource` block — generic delegation for cross-project reads
/// (BigLake tables over Cloud Storage in a different project, etc.).
/// The block is empty on input; after apply,
/// `cloud_resource.service_account_id` surfaces the connection's
/// Google-managed service account, which the consuming project must
/// grant access to.
@immutable
class BigqueryConnectionCloudResource {
  const BigqueryConnectionCloudResource();

  Map<String, Object?> toArgMap() => const <String, Object?>{};
}

// ===========================================================================
// spark variant
// ===========================================================================

/// `spark.metastore_service_config` block — optional binding to a
/// Dataproc Metastore service so Spark stored procedures see Hive
/// tables.
@immutable
class BigqueryConnectionSparkMetastoreServiceConfig {
  const BigqueryConnectionSparkMetastoreServiceConfig({this.metastoreService});

  /// Resource name of an existing Dataproc Metastore service in the
  /// form `projects/{projectId}/locations/{region}/services/{serviceId}`.
  final TfArg<String>? metastoreService;

  Map<String, Object?> toArgMap() => {
    if (metastoreService != null)
      'metastore_service': metastoreService!.toTfJson(),
  };
}

/// `spark.spark_history_server_config` block — optional binding to a
/// Dataproc Cluster acting as Spark History Server for the connection.
@immutable
class BigqueryConnectionSparkSparkHistoryServerConfig {
  const BigqueryConnectionSparkSparkHistoryServerConfig({this.dataprocCluster});

  /// Resource name of an existing Dataproc Cluster in the form
  /// `projects/{projectId}/regions/{region}/clusters/{clusterName}`.
  final TfArg<String>? dataprocCluster;

  Map<String, Object?> toArgMap() => {
    if (dataprocCluster != null)
      'dataproc_cluster': dataprocCluster!.toTfJson(),
  };
}

/// `spark` block — stored procedures for Apache Spark on BigQuery. The
/// block is empty-by-default on input; provide nested
/// [metastoreServiceConfig] / [sparkHistoryServerConfig] only when the
/// procedures need to read Hive tables or surface history-server logs.
@immutable
class BigqueryConnectionSpark {
  const BigqueryConnectionSpark({
    this.metastoreServiceConfig,
    this.sparkHistoryServerConfig,
  });

  /// Optional Dataproc Metastore binding for Hive table visibility.
  final BigqueryConnectionSparkMetastoreServiceConfig? metastoreServiceConfig;

  /// Optional Dataproc Cluster binding for Spark History Server.
  final BigqueryConnectionSparkSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  Map<String, Object?> toArgMap() => {
    if (metastoreServiceConfig != null)
      'metastore_service_config': [metastoreServiceConfig!.toArgMap()],
    if (sparkHistoryServerConfig != null)
      'spark_history_server_config': [sparkHistoryServerConfig!.toArgMap()],
  };
}

// ===========================================================================
// configuration variant (BigQuery Connector framework — AlloyDB / MySQL /
// PostgreSQL, etc.)
// ===========================================================================

/// `configuration.asset` block — points the connector at a Google Cloud
/// resource (AlloyDB cluster / instance, etc.).
@immutable
class BigqueryConnectionConfigurationAsset {
  const BigqueryConnectionConfigurationAsset({
    this.database,
    this.googleCloudResource,
  });

  /// Optional. Database name inside the asset.
  final TfArg<String>? database;

  /// Optional. Full Google Cloud resource self-link, e.g.
  /// `//alloydb.googleapis.com/projects/{project}/locations/{region}/clusters/{cluster}/instances/{instance}`.
  final TfArg<String>? googleCloudResource;

  Map<String, Object?> toArgMap() => {
    if (database != null) 'database': database!.toTfJson(),
    if (googleCloudResource != null)
      'google_cloud_resource': googleCloudResource!.toTfJson(),
  };
}

/// `configuration.authentication.username_password.password` block —
/// holds the plaintext password the connector forwards to the upstream
/// engine. `plaintext` is schema-flagged sensitive and masked on synth.
@immutable
class BigqueryConnectionConfigurationAuthenticationPassword {
  const BigqueryConnectionConfigurationAuthenticationPassword({
    required this.plaintext,
  });

  /// Required. Plaintext password. Wire via [TfArg.ref] to a Secret
  /// Manager-backed variable; the value is masked in the rendered
  /// `main.tf.json` via the generated `$sensitiveFields` set.
  final TfArg<String> plaintext;

  Map<String, Object?> toArgMap() => {'plaintext': plaintext.toTfJson()};
}

/// `configuration.authentication.username_password` block — username /
/// password authentication for the connector framework.
@immutable
class BigqueryConnectionConfigurationAuthenticationUsernamePassword {
  const BigqueryConnectionConfigurationAuthenticationUsernamePassword({
    required this.username,
    required this.password,
  });

  /// Required. Username forwarded to the connector.
  final TfArg<String> username;

  /// Required. Password block — see
  /// [BigqueryConnectionConfigurationAuthenticationPassword].
  final BigqueryConnectionConfigurationAuthenticationPassword password;

  Map<String, Object?> toArgMap() => {
    'username': username.toTfJson(),
    'password': [password.toArgMap()],
  };
}

/// `configuration.authentication` block — authentication configuration
/// for the connector. Output-only `service_account` is consumed via the
/// generated factory state, not a constructor input.
@immutable
class BigqueryConnectionConfigurationAuthentication {
  const BigqueryConnectionConfigurationAuthentication({this.usernamePassword});

  /// Optional. Username / password block. Only one authentication
  /// mechanism is exposed by the schema today.
  final BigqueryConnectionConfigurationAuthenticationUsernamePassword?
  usernamePassword;

  Map<String, Object?> toArgMap() => {
    if (usernamePassword != null)
      'username_password': [usernamePassword!.toArgMap()],
  };
}

/// `configuration.endpoint` block — host:port override for the
/// connector's upstream endpoint (when the default endpoint derived
/// from [BigqueryConnectionConfigurationAsset] is not appropriate).
@immutable
class BigqueryConnectionConfigurationEndpoint {
  const BigqueryConnectionConfigurationEndpoint({this.hostPort});

  /// Optional. `host:port` string.
  final TfArg<String>? hostPort;

  Map<String, Object?> toArgMap() => {
    if (hostPort != null) 'host_port': hostPort!.toTfJson(),
  };
}

/// `configuration.network.private_service_connect` block — Private
/// Service Connect network attachment for connector traffic.
@immutable
class BigqueryConnectionConfigurationNetworkPrivateServiceConnect {
  const BigqueryConnectionConfigurationNetworkPrivateServiceConnect({
    required this.networkAttachment,
  });

  /// Required. Network attachment resource name in the form
  /// `projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`.
  final TfArg<String> networkAttachment;

  Map<String, Object?> toArgMap() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

/// `configuration.network` block — network configuration for the
/// connector. The schema only exposes `private_service_connect` today.
@immutable
class BigqueryConnectionConfigurationNetwork {
  const BigqueryConnectionConfigurationNetwork({this.privateServiceConnect});

  /// Optional. PSC network attachment.
  final BigqueryConnectionConfigurationNetworkPrivateServiceConnect?
  privateServiceConnect;

  Map<String, Object?> toArgMap() => {
    if (privateServiceConnect != null)
      'private_service_connect': [privateServiceConnect!.toArgMap()],
  };
}

/// `configuration` block — BigQuery Connector framework. Picks an
/// upstream engine via [connectorId] (`google-alloydb`,
/// `google-cloudsql-mysql`, `google-cloudsql-postgres`, and other ids
/// supported by the framework) and wires it through asset /
/// authentication / endpoint / network blocks.
@immutable
class BigqueryConnectionConfiguration {
  const BigqueryConnectionConfiguration({
    required this.connectorId,
    required this.asset,
    this.authentication,
    this.endpoint,
    this.network,
  });

  /// Required. Connector id (e.g. `google-alloydb`,
  /// `google-cloudsql-mysql`, `google-cloudsql-postgres`).
  final TfArg<String> connectorId;

  /// Required. Asset configuration — see
  /// [BigqueryConnectionConfigurationAsset].
  final BigqueryConnectionConfigurationAsset asset;

  /// Optional authentication block. Required for engines that need
  /// per-query credentials; AlloyDB IAM auth can omit it.
  final BigqueryConnectionConfigurationAuthentication? authentication;

  /// Optional endpoint override.
  final BigqueryConnectionConfigurationEndpoint? endpoint;

  /// Optional PSC network wiring.
  final BigqueryConnectionConfigurationNetwork? network;

  Map<String, Object?> toArgMap() => {
    'connector_id': connectorId.toTfJson(),
    'asset': [asset.toArgMap()],
    if (authentication != null) 'authentication': [authentication!.toArgMap()],
    if (endpoint != null) 'endpoint': [endpoint!.toArgMap()],
    if (network != null) 'network': [network!.toArgMap()],
  };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_bigquery_connection` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A BigQuery **connection** stores the credentials and configuration
/// BigQuery uses to read data from sources that live outside BigQuery
/// storage. Federated queries (`EXTERNAL_QUERY`), BigQuery Omni (multi-
/// cloud reads), BigLake tables, stored procedures for Apache Spark, and
/// generic Connector framework integrations all hang off a connection.
/// The credentials never travel through BigQuery query state — at query
/// time BigQuery loads them via the connection's service identity.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_connection.`).
/// - [connectionId]: optional. When omitted the API auto-generates a
///   UUID-shaped id. Pin it explicitly for stable references from SQL
///   (`EXTERNAL_QUERY('projects/.../locations/.../connections/<id>', ...)`).
/// - [location]: BigQuery region (`US`, `EU`, `asia-northeast1`,
///   `us-central1`, ...). The connection target must be reachable from
///   this region. Cloud SQL `us-central1` maps to BigQuery `US`; Cloud
///   SQL `europe-west1` maps to BigQuery `EU`; AWS connections must be
///   in `aws-us-east-1`; Azure connections in `azure-eastus2`. Schema
///   marks `location` optional — set it for any non-default deployment.
///
/// **Connection-type one-of**: pick **at most one** of [cloudSql],
/// [cloudSpanner], [aws], [azure], [cloudResource], [spark], or
/// [configuration]. Supplying more than one errors at apply time. Use
/// case per variant:
/// - [cloudSql] — federated queries against Cloud SQL Postgres / MySQL
///   (the most common BigQuery federation pattern). Credentials live
///   inside the [BigqueryConnectionCloudSqlCredential] block.
/// - [cloudSpanner] — federated reads against a Cloud Spanner database,
///   optionally via Spanner Data Boost / independent compute.
/// - [aws] — BigQuery Omni federation into Amazon S3 / Glue (BigLake
///   on AWS). The Google-side identity (output-only) trusts a
///   customer-owned IAM role.
/// - [azure] — BigQuery Omni federation into Azure Data Lake Storage.
///   Uses Azure AD federation; most fields are computed and consumed by
///   the Azure side of the bridge.
/// - [cloudResource] — generic GCP delegation. Surfaces an output-only
///   service account id that the connection acts as for cross-project
///   reads (e.g. BigLake tables over Cloud Storage in a different
///   project).
/// - [spark] — stored procedures for Apache Spark on BigQuery. Optional
///   wiring to a Dataproc Metastore and Spark History Server.
/// - [configuration] — the BigQuery Connector framework (AlloyDB,
///   `google-cloudsql-mysql`, `google-cloudsql-postgres`, and other
///   connector ids). Includes its own nested asset / authentication /
///   endpoint / network configuration.
///
/// Variants the plan mentioned but the schema does not yet expose:
/// `vertex_ai`, `salesforce_data_cloud`. These are gated behind the
/// beta provider as of the pinned `~> 7.0` GA schema and will surface
/// once the upstream MagicModules definitions promote to GA.
///
/// Example (Cloud SQL — federated queries against a Postgres replica):
/// ```dart
/// final pg = GoogleBigqueryConnection(
///   localName: 'analytics_pg',
///   connectionId: TfArg.literal('analytics-pg'),
///   location: TfArg.literal('US'),
///   friendlyName: TfArg.literal('Analytics Postgres (read-replica)'),
///   cloudSql: BigqueryConnectionCloudSql(
///     instanceId: TfArg.literal('my-project:us-central1:analytics-ro'),
///     database: TfArg.literal('analytics'),
///     type: BigqueryConnectionCloudSqlType.postgres,
///     credential: BigqueryConnectionCloudSqlCredential(
///       username: TfArg.literal('bq_federation'),
///       password: TfArg.ref(pgPasswordVar),
///     ),
///   ),
/// );
/// ```
///
/// Example (AWS — BigLake federation against S3 / Glue):
/// ```dart
/// final s3 = GoogleBigqueryConnection(
///   localName: 'biglake_s3',
///   connectionId: TfArg.literal('biglake-s3'),
///   location: TfArg.literal('aws-us-east-1'),
///   aws: BigqueryConnectionAws(
///     accessRole: BigqueryConnectionAwsAccessRole(
///       iamRoleId:
///           TfArg.literal('arn:aws:iam::111122223333:role/biglake-bq'),
///     ),
///   ),
/// );
/// ```
///
/// Sensitive fields (round-trip through the generated `$sensitiveFields`
/// set; masked in serialized state by Terraform):
/// - `cloud_sql.credential.password` — schema-flagged.
/// - `configuration.authentication.username_password.password.plaintext`
///   — schema-flagged. Wire both via [TfArg.ref] to a secret resource or
///   sensitive variable rather than literals.
///
/// Output-only state:
/// - [name]: full resource name
///   (`projects/{project}/locations/{location}/connections/{id}`).
/// - [hasCredential]: `true` once the credential block is materialized
///   server-side.
final class GoogleBigqueryConnection extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_connection';

  GoogleBigqueryConnection({
    required super.localName,
    TfArg<String>? connectionId,
    TfArg<String>? location,
    TfArg<String>? friendlyName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyName,
    BigqueryConnectionCloudSql? cloudSql,
    BigqueryConnectionCloudSpanner? cloudSpanner,
    BigqueryConnectionAws? aws,
    BigqueryConnectionAzure? azure,
    BigqueryConnectionCloudResource? cloudResource,
    BigqueryConnectionSpark? spark,
    BigqueryConnectionConfiguration? configuration,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           if (connectionId != null) 'connection_id': connectionId,
           if (location != null) 'location': location,
           if (friendlyName != null) 'friendly_name': friendlyName,
           if (description != null) 'description': description,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (cloudSql != null)
             'cloud_sql': TfArg.literal([cloudSql.toArgMap()]),
           if (cloudSpanner != null)
             'cloud_spanner': TfArg.literal([cloudSpanner.toArgMap()]),
           if (aws != null) 'aws': TfArg.literal([aws.toArgMap()]),
           if (azure != null) 'azure': TfArg.literal([azure.toArgMap()]),
           if (cloudResource != null)
             'cloud_resource': TfArg.literal([cloudResource.toArgMap()]),
           if (spark != null) 'spark': TfArg.literal([spark.toArgMap()]),
           if (configuration != null)
             'configuration': TfArg.literal([configuration.toArgMap()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryConnectionSensitive;

  /// Reference to `name` attribute — the full resource name
  /// (`projects/{project}/locations/{location}/connections/{id}`). This
  /// is the value SQL `EXTERNAL_QUERY` calls reference.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. For this resource the API returns the
  /// full resource path here.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to the computed `has_credential` attribute. `true` once
  /// the connection's credential block has been materialized server-
  /// side.
  TfRef<bool> get hasCredential =>
      TfRef.attribute<bool>(this, 'has_credential');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataproc_batch`.
const Set<String> _googleDataprocBatchSensitive = <String>{};

/// Exactly one Dataproc Serverless batch workload block.
sealed class DataprocBatchWorkload {
  const DataprocBatchWorkload();

  /// `pyspark_batch` — PySpark driver.
  const factory DataprocBatchWorkload.pyspark({
    TfArg<String>? mainPythonFileUri,
    TfArg<List<String>>? args,
    TfArg<List<String>>? pythonFileUris,
    TfArg<List<String>>? jarFileUris,
    TfArg<List<String>>? fileUris,
    TfArg<List<String>>? archiveUris,
  }) = DataprocBatchPysparkWorkload;

  /// `spark_batch` — JVM Spark.
  const factory DataprocBatchWorkload.spark({
    TfArg<String>? mainClass,
    TfArg<String>? mainJarFileUri,
    TfArg<List<String>>? args,
    TfArg<List<String>>? jarFileUris,
    TfArg<List<String>>? fileUris,
    TfArg<List<String>>? archiveUris,
  }) = DataprocBatchSparkWorkload;

  /// `spark_sql_batch` — Spark SQL script.
  const factory DataprocBatchWorkload.sparkSql({
    TfArg<String>? queryFileUri,
    TfArg<List<String>>? jarFileUris,
    TfArg<Map<String, String>>? queryVariables,
  }) = DataprocBatchSparkSqlWorkload;

  /// `spark_r_batch` — SparkR driver.
  const factory DataprocBatchWorkload.sparkR({
    TfArg<String>? mainRFileUri,
    TfArg<List<String>>? args,
    TfArg<List<String>>? fileUris,
    TfArg<List<String>>? archiveUris,
  }) = DataprocBatchSparkRWorkload;

  /// argMap key (`pyspark_batch` / `spark_batch` / `spark_sql_batch` /
  /// `spark_r_batch`).
  String get blockKey;

  /// JSON fragment for the block value (single-element list —
  /// `nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `pyspark_batch` — PySpark driver.
@immutable
final class DataprocBatchPysparkWorkload extends DataprocBatchWorkload {
  const DataprocBatchPysparkWorkload({
    this.mainPythonFileUri,
    this.args,
    this.pythonFileUris,
    this.jarFileUris,
    this.fileUris,
    this.archiveUris,
  });

  final TfArg<String>? mainPythonFileUri;
  final TfArg<List<String>>? args;
  final TfArg<List<String>>? pythonFileUris;
  final TfArg<List<String>>? jarFileUris;
  final TfArg<List<String>>? fileUris;
  final TfArg<List<String>>? archiveUris;

  @override
  String get blockKey => 'pyspark_batch';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (mainPythonFileUri != null)
        'main_python_file_uri': mainPythonFileUri!.toTfJson(),
      if (args != null) 'args': args!.toTfJson(),
      if (pythonFileUris != null)
        'python_file_uris': pythonFileUris!.toTfJson(),
      if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
      if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
      if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    },
  ];
}

/// `spark_batch` — JVM Spark. Provide exactly one of [mainClass] /
/// [mainJarFileUri] (provider `exactly_one_of`).
@immutable
final class DataprocBatchSparkWorkload extends DataprocBatchWorkload {
  const DataprocBatchSparkWorkload({
    this.mainClass,
    this.mainJarFileUri,
    this.args,
    this.jarFileUris,
    this.fileUris,
    this.archiveUris,
  });

  final TfArg<String>? mainClass;
  final TfArg<String>? mainJarFileUri;
  final TfArg<List<String>>? args;
  final TfArg<List<String>>? jarFileUris;
  final TfArg<List<String>>? fileUris;
  final TfArg<List<String>>? archiveUris;

  @override
  String get blockKey => 'spark_batch';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (mainClass != null) 'main_class': mainClass!.toTfJson(),
      if (mainJarFileUri != null)
        'main_jar_file_uri': mainJarFileUri!.toTfJson(),
      if (args != null) 'args': args!.toTfJson(),
      if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
      if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
      if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    },
  ];
}

/// `spark_sql_batch` — Spark SQL script.
@immutable
final class DataprocBatchSparkSqlWorkload extends DataprocBatchWorkload {
  const DataprocBatchSparkSqlWorkload({
    this.queryFileUri,
    this.jarFileUris,
    this.queryVariables,
  });

  final TfArg<String>? queryFileUri;
  final TfArg<List<String>>? jarFileUris;
  final TfArg<Map<String, String>>? queryVariables;

  @override
  String get blockKey => 'spark_sql_batch';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
      if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
      if (queryVariables != null) 'query_variables': queryVariables!.toTfJson(),
    },
  ];
}

/// `spark_r_batch` — SparkR driver.
@immutable
final class DataprocBatchSparkRWorkload extends DataprocBatchWorkload {
  const DataprocBatchSparkRWorkload({
    this.mainRFileUri,
    this.args,
    this.fileUris,
    this.archiveUris,
  });

  final TfArg<String>? mainRFileUri;
  final TfArg<List<String>>? args;
  final TfArg<List<String>>? fileUris;
  final TfArg<List<String>>? archiveUris;

  @override
  String get blockKey => 'spark_r_batch';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (mainRFileUri != null) 'main_r_file_uri': mainRFileUri!.toTfJson(),
      if (args != null) 'args': args!.toTfJson(),
      if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
      if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    },
  ];
}

/// Typed helper for the `environment_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfig {
  const DataprocBatchEnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  final DataprocBatchEnvironmentConfigExecutionConfig? executionConfig;

  final DataprocBatchEnvironmentConfigPeripheralsConfig? peripheralsConfig;

  Map<String, Object?> encode() => {
    'execution_config': ?executionConfig?.encode(),
    'peripherals_config': ?peripheralsConfig?.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfigExecutionConfig {
  const DataprocBatchEnvironmentConfigExecutionConfig({
    this.kmsKey,
    this.networkTags,
    this.network,
    this.serviceAccount,
    this.stagingBucket,
    this.ttl,
    this.authenticationConfig,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final TfArg<List<String>>? networkTags;

  final DataprocBatchEnvironmentConfigExecutionConfigNetwork? network;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? stagingBucket;

  final TfArg<String>? ttl;

  final DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfig?
  authenticationConfig;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'network_tags': ?networkTags?.toTfJson(),
    ...?network?.encode(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'staging_bucket': ?stagingBucket?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'authentication_config': ?authenticationConfig?.encode(),
  };
}

/// At most one of `network_uri`, `subnetwork_uri` on the `environment_config.execution_config` block of `google_dataproc_batch`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.networkUri(...)`.
sealed class DataprocBatchEnvironmentConfigExecutionConfigNetwork {
  const DataprocBatchEnvironmentConfigExecutionConfigNetwork();

  /// Sets `network_uri`.
  const factory DataprocBatchEnvironmentConfigExecutionConfigNetwork.networkUri(
    RefTo<GoogleComputeNetwork> networkUri,
  ) = DataprocBatchEnvironmentConfigExecutionConfigNetworkUri;

  /// Sets `subnetwork_uri`.
  const factory DataprocBatchEnvironmentConfigExecutionConfigNetwork.subnetworkUri(
    RefTo<GoogleComputeSubnetwork> subnetworkUri,
  ) = DataprocBatchEnvironmentConfigExecutionConfigNetworkSubnetworkUri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataprocBatchEnvironmentConfigExecutionConfigNetwork.networkUri] choice: sets `network_uri`.
final class DataprocBatchEnvironmentConfigExecutionConfigNetworkUri
    extends DataprocBatchEnvironmentConfigExecutionConfigNetwork {
  const DataprocBatchEnvironmentConfigExecutionConfigNetworkUri(
    this.networkUri,
  );

  final RefTo<GoogleComputeNetwork> networkUri;

  @override
  String get blockKey => 'network_uri';

  @override
  Map<String, Object?> encode() => {
    'network_uri': networkUri.encodeAs('id').toTfJson(),
  };
}

/// The [DataprocBatchEnvironmentConfigExecutionConfigNetwork.subnetworkUri] choice: sets `subnetwork_uri`.
final class DataprocBatchEnvironmentConfigExecutionConfigNetworkSubnetworkUri
    extends DataprocBatchEnvironmentConfigExecutionConfigNetwork {
  const DataprocBatchEnvironmentConfigExecutionConfigNetworkSubnetworkUri(
    this.subnetworkUri,
  );

  final RefTo<GoogleComputeSubnetwork> subnetworkUri;

  @override
  String get blockKey => 'subnetwork_uri';

  @override
  Map<String, Object?> encode() => {
    'subnetwork_uri': subnetworkUri.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `environment_config.execution_config.authentication_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfig {
  const DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  final TfArg<
    DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType
  >?
  userWorkloadAuthenticationType;

  Map<String, Object?> encode() => {
    'user_workload_authentication_type': ?userWorkloadAuthenticationType
        ?.toTfJson(),
  };
}

/// `user_workload_authentication_type` — derived from the provider schema description.
enum DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType
    implements TerraformEnum {
  serviceAccount('SERVICE_ACCOUNT'),
  endUserCredentials('END_USER_CREDENTIALS');

  const DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `environment_config.peripherals_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfigPeripheralsConfig {
  const DataprocBatchEnvironmentConfigPeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  final TfArg<String>? metastoreService;

  final DataprocBatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  Map<String, Object?> encode() => {
    'metastore_service': ?metastoreService?.toTfJson(),
    'spark_history_server_config': ?sparkHistoryServerConfig?.encode(),
  };
}

/// Typed helper for the `environment_config.peripherals_config.spark_history_server_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig {
  const DataprocBatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  final TfArg<String>? dataprocCluster;

  Map<String, Object?> encode() => {
    'dataproc_cluster': ?dataprocCluster?.toTfJson(),
  };
}

/// Typed helper for the `runtime_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchRuntimeConfig {
  const DataprocBatchRuntimeConfig({
    this.cohort,
    this.containerImage,
    this.properties,
    this.version,
    this.autotuningConfig,
  });

  final TfArg<String>? cohort;

  final TfArg<String>? containerImage;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? version;

  final DataprocBatchRuntimeConfigAutotuningConfig? autotuningConfig;

  Map<String, Object?> encode() => {
    'cohort': ?cohort?.toTfJson(),
    'container_image': ?containerImage?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'version': ?version?.toTfJson(),
    'autotuning_config': ?autotuningConfig?.encode(),
  };
}

/// Typed helper for the `runtime_config.autotuning_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchRuntimeConfigAutotuningConfig {
  const DataprocBatchRuntimeConfigAutotuningConfig({this.scenarios});

  final List<TfArg<DataprocBatchRuntimeConfigAutotuningConfigScenarios>>?
  scenarios;

  Map<String, Object?> encode() => {
    if (scenarios != null)
      'scenarios': [for (final e in scenarios!) e.toTfJson()],
  };
}

/// `scenarios` — derived from the provider schema description.
enum DataprocBatchRuntimeConfigAutotuningConfigScenarios
    implements TerraformEnum {
  auto('AUTO'),
  scaling('SCALING'),
  broadcastHashJoin('BROADCAST_HASH_JOIN'),
  memory('MEMORY');

  const DataprocBatchRuntimeConfigAutotuningConfigScenarios(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataproc_batch`.
///
/// Dataproc Serverless Batches lets you run Spark workloads without requiring
/// you to provision and manage your own Dataproc cluster.
///
/// Dataproc Serverless **batch** — one-shot PySpark / Spark / Spark SQL /
/// SparkR job billed in Data Compute Units (DCUs) while running.
///
/// Choose exactly one [DataprocBatchWorkload] via [workload]. Optional
/// [runtimeConfig] / [environmentConfig] are nested types matching the
/// provider blocks.
///
/// **Cost / apply:** gcp-cost: Dataproc `363B-8851-170D` Serverless Batch
/// DCU us-central1 SKU `EC7A-EF05-537E` **$0.06/h** (Premium DCU
/// `C275-E37B-D8BA` **$0.089/h**; optional GPU accelerators also billed).
/// billing-behavior: batch runtime burns DCU-hours (and optional
/// accelerators / shuffle storage) until the job finishes or is cancelled;
/// no cheap idle apply. **Never** wire into apply-smoke.
///
/// Enable `dataproc.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleDataprocBatch extends Resource {
  static const String tfType = 'google_dataproc_batch';

  GoogleDataprocBatch({
    required super.localName,
    TfArg<String>? batchId,
    TfArg<String>? location,
    required DataprocBatchWorkload workload,
    TfArg<Map<String, String>>? labels,
    DataprocBatchRuntimeConfig? runtimeConfig,
    DataprocBatchEnvironmentConfig? environmentConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'batch_id': ?batchId,
           'location': ?location,
           'labels': ?labels,
           if (runtimeConfig != null)
             'runtime_config': TfArg.literal(runtimeConfig.encode()),
           if (environmentConfig != null)
             'environment_config': TfArg.literal(environmentConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           workload.blockKey: TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocBatchSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocBatch>`.
  RefTo<GoogleDataprocBatch> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `runtime_info` attribute.
  TfRef<List<Map<String, Object?>>> get runtimeInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'runtime_info');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_history` attribute.
  TfRef<List<Map<String, Object?>>> get stateHistory =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_history');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `state_time` attribute.
  TfRef<String> get stateTime => TfRef.attribute<String>(this, 'state_time');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `batch_id` for cross-stack refs.
  TfRef<String> get batchIdRef => TfRef.attribute<String>(this, 'batch_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuidRef => TfRef.attribute<String>(this, 'uuid');
}

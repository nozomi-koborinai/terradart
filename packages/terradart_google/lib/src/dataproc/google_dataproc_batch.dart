// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_batch`.
const Set<String> _googleDataprocBatchSensitive = <String>{};

/// Exactly one Dataproc Serverless batch workload block.
sealed class DataprocBatchWorkload {
  const DataprocBatchWorkload();

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
    if (executionConfig != null) 'execution_config': executionConfig!.encode(),
    if (peripheralsConfig != null)
      'peripherals_config': peripheralsConfig!.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config` block of
/// `google_dataproc_batch` (derived from provider schema).
@immutable
final class DataprocBatchEnvironmentConfigExecutionConfig {
  const DataprocBatchEnvironmentConfigExecutionConfig({
    this.kmsKey,
    this.networkTags,
    this.networkUri,
    this.serviceAccount,
    this.stagingBucket,
    this.subnetworkUri,
    this.ttl,
    this.authenticationConfig,
  });

  final TfArg<String>? kmsKey;

  final TfArg<List<Object?>>? networkTags;

  final TfArg<String>? networkUri;

  final TfArg<String>? serviceAccount;

  final TfArg<String>? stagingBucket;

  final TfArg<String>? subnetworkUri;

  final TfArg<String>? ttl;

  final DataprocBatchEnvironmentConfigExecutionConfigAuthenticationConfig?
  authenticationConfig;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (networkTags != null) 'network_tags': networkTags!.toTfJson(),
    if (networkUri != null) 'network_uri': networkUri!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (stagingBucket != null) 'staging_bucket': stagingBucket!.toTfJson(),
    if (subnetworkUri != null) 'subnetwork_uri': subnetworkUri!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    if (authenticationConfig != null)
      'authentication_config': authenticationConfig!.encode(),
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
    if (userWorkloadAuthenticationType != null)
      'user_workload_authentication_type': userWorkloadAuthenticationType!
          .toTfJson(),
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
    if (metastoreService != null)
      'metastore_service': metastoreService!.toTfJson(),
    if (sparkHistoryServerConfig != null)
      'spark_history_server_config': sparkHistoryServerConfig!.encode(),
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
    if (dataprocCluster != null)
      'dataproc_cluster': dataprocCluster!.toTfJson(),
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
    if (cohort != null) 'cohort': cohort!.toTfJson(),
    if (containerImage != null) 'container_image': containerImage!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (autotuningConfig != null)
      'autotuning_config': autotuningConfig!.encode(),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (batchId != null) 'batch_id': batchId,
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
           if (runtimeConfig != null)
             'runtime_config': TfArg.literal(runtimeConfig.encode()),
           if (environmentConfig != null)
             'environment_config': TfArg.literal(environmentConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           workload.blockKey: TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocBatchSensitive;

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

  /// Reference to `batch_id` for cross-stack refs.
  TfRef<String> get batchIdRef => TfRef.attribute<String>(this, 'batch_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuidRef => TfRef.attribute<String>(this, 'uuid');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_job`.
const Set<String> _googleDataprocJobSensitive = <String>{};

/// Typed helper for the `hadoop_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobHadoopConfig {
  const DataprocJobHadoopConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<String>? mainClass;

  final TfArg<String>? mainJarFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocJobHadoopConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (args != null) 'args': args!.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (mainClass != null) 'main_class': mainClass!.toTfJson(),
    if (mainJarFileUri != null) 'main_jar_file_uri': mainJarFileUri!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `hadoop_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobHadoopConfigLoggingConfig {
  const DataprocJobHadoopConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Typed helper for the `hive_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobHiveConfig {
  const DataprocJobHiveConfig({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  final TfArg<bool>? continueOnFailure;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<List<Object?>>? queryList;

  final TfArg<Map<String, String>>? scriptVariables;

  Map<String, Object?> encode() => {
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (queryList != null) 'query_list': queryList!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
  };
}

/// Typed helper for the `pig_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPigConfig {
  const DataprocJobPigConfig({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
    this.loggingConfig,
  });

  final TfArg<bool>? continueOnFailure;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<List<Object?>>? queryList;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocJobPigConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (queryList != null) 'query_list': queryList!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `pig_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPigConfigLoggingConfig {
  const DataprocJobPigConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Typed helper for the `placement` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPlacement {
  const DataprocJobPlacement({required this.clusterName});

  final TfArg<String> clusterName;

  Map<String, Object?> encode() => {'cluster_name': clusterName.toTfJson()};
}

/// Typed helper for the `presto_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPrestoConfig {
  const DataprocJobPrestoConfig({
    this.clientTags,
    this.continueOnFailure,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? clientTags;

  final TfArg<bool>? continueOnFailure;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<List<Object?>>? queryList;

  final DataprocJobPrestoConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (clientTags != null) 'client_tags': clientTags!.toTfJson(),
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (queryList != null) 'query_list': queryList!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `presto_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPrestoConfigLoggingConfig {
  const DataprocJobPrestoConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Typed helper for the `pyspark_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPysparkConfig {
  const DataprocJobPysparkConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    required this.mainPythonFileUri,
    this.properties,
    this.pythonFileUris,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<String> mainPythonFileUri;

  final TfArg<Map<String, String>>? properties;

  final TfArg<List<Object?>>? pythonFileUris;

  final DataprocJobPysparkConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (args != null) 'args': args!.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    'main_python_file_uri': mainPythonFileUri.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (pythonFileUris != null) 'python_file_uris': pythonFileUris!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `pyspark_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobPysparkConfigLoggingConfig {
  const DataprocJobPysparkConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Typed helper for the `reference` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobReference {
  const DataprocJobReference({this.jobId});

  final TfArg<String>? jobId;

  Map<String, Object?> encode() => {
    if (jobId != null) 'job_id': jobId!.toTfJson(),
  };
}

/// Typed helper for the `scheduling` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobScheduling {
  const DataprocJobScheduling({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  final TfArg<num> maxFailuresPerHour;

  final TfArg<num> maxFailuresTotal;

  Map<String, Object?> encode() => {
    'max_failures_per_hour': maxFailuresPerHour.toTfJson(),
    'max_failures_total': maxFailuresTotal.toTfJson(),
  };
}

/// Typed helper for the `spark_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobSparkConfig {
  const DataprocJobSparkConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<String>? mainClass;

  final TfArg<String>? mainJarFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocJobSparkConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (args != null) 'args': args!.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (mainClass != null) 'main_class': mainClass!.toTfJson(),
    if (mainJarFileUri != null) 'main_jar_file_uri': mainJarFileUri!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `spark_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobSparkConfigLoggingConfig {
  const DataprocJobSparkConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Typed helper for the `sparksql_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobSparksqlConfig {
  const DataprocJobSparksqlConfig({
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<List<Object?>>? queryList;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocJobSparksqlConfigLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (queryList != null) 'query_list': queryList!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `sparksql_config.logging_config` block of
/// `google_dataproc_job` (derived from provider schema).
@immutable
final class DataprocJobSparksqlConfigLoggingConfig {
  const DataprocJobSparksqlConfigLoggingConfig({required this.driverLogLevels});

  final TfArg<Map<String, String>> driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': driverLogLevels.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_job`.
///
/// Dataproc **job** — submits Hadoop / Spark / Hive / Pig / Presto /
/// PySpark / SparkSQL work to a classic cluster (or an ephemeral one).
///
/// **Cost / apply:** gcp-cost: Dataproc `363B-8851-170D` list_skus
/// us-central1 returns Serverless DCU/accelerator SKUs only (Batch DCU
/// `EC7A-EF05-537E` **$0.06/h**; Interactive DCU `A486-6040-07FE`
/// **$0.089/h**) — no classic job premium SKU after MCP lookup.
/// billing-behavior: submitting the job starts workers on a Dataproc
/// cluster (often never_apply [GoogleDataprocCluster]) or materializes
/// GCE VMs for an ephemeral cluster (+ Dataproc premium per product
/// docs) while the job runs; destroy / completion stops those charges.
/// Too expensive for apply-smoke even once — debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Provide exactly one job-config block (`spark_config`,
/// `pyspark_config`, …) plus [placement]. Enable `dataproc.googleapis.com`
/// before apply.
final class GoogleDataprocJob extends Resource {
  static const String tfType = 'google_dataproc_job';

  GoogleDataprocJob({
    required super.localName,
    TfArg<String>? region,
    required DataprocJobPlacement placement,
    DataprocJobReference? reference,
    DataprocJobScheduling? scheduling,
    DataprocJobHadoopConfig? hadoopConfig,
    DataprocJobHiveConfig? hiveConfig,
    DataprocJobPigConfig? pigConfig,
    DataprocJobPrestoConfig? prestoConfig,
    DataprocJobPysparkConfig? pysparkConfig,
    DataprocJobSparkConfig? sparkConfig,
    DataprocJobSparksqlConfig? sparksqlConfig,
    TfArg<bool>? forceDelete,
    TfArg<bool>? waitForCompletion,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'placement': TfArg.literal(placement.encode()),
           if (reference != null)
             'reference': TfArg.literal(reference.encode()),
           if (scheduling != null)
             'scheduling': TfArg.literal(scheduling.encode()),
           if (hadoopConfig != null)
             'hadoop_config': TfArg.literal(hadoopConfig.encode()),
           if (hiveConfig != null)
             'hive_config': TfArg.literal(hiveConfig.encode()),
           if (pigConfig != null)
             'pig_config': TfArg.literal(pigConfig.encode()),
           if (prestoConfig != null)
             'presto_config': TfArg.literal(prestoConfig.encode()),
           if (pysparkConfig != null)
             'pyspark_config': TfArg.literal(pysparkConfig.encode()),
           if (sparkConfig != null)
             'spark_config': TfArg.literal(sparkConfig.encode()),
           if (sparksqlConfig != null)
             'sparksql_config': TfArg.literal(sparksqlConfig.encode()),
           if (forceDelete != null) 'force_delete': forceDelete,
           if (waitForCompletion != null)
             'wait_for_completion': waitForCompletion,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocJobSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `driver_controls_files_uri` attribute.
  TfRef<String> get driverControlsFilesUri =>
      TfRef.attribute<String>(this, 'driver_controls_files_uri');

  /// Reference to `driver_output_resource_uri` attribute.
  TfRef<String> get driverOutputResourceUri =>
      TfRef.attribute<String>(this, 'driver_output_resource_uri');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

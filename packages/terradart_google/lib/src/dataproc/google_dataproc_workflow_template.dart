// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_workflow_template`.
const Set<String> _googleDataprocWorkflowTemplateSensitive = <String>{};

/// Typed helper for the `encryption_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateEncryptionConfig {
  const DataprocWorkflowTemplateEncryptionConfig({this.kmsKey});

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `jobs` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobs {
  const DataprocWorkflowTemplateJobs({
    this.labels,
    this.prerequisiteStepIds,
    required this.stepId,
    this.hadoopJob,
    this.hiveJob,
    this.pigJob,
    this.prestoJob,
    this.pysparkJob,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<Object?>>? prerequisiteStepIds;

  final TfArg<String> stepId;

  final DataprocWorkflowTemplateJobsHadoopJob? hadoopJob;

  final DataprocWorkflowTemplateJobsHiveJob? hiveJob;

  final DataprocWorkflowTemplateJobsPigJob? pigJob;

  final DataprocWorkflowTemplateJobsPrestoJob? prestoJob;

  final DataprocWorkflowTemplateJobsPysparkJob? pysparkJob;

  final DataprocWorkflowTemplateJobsScheduling? scheduling;

  final DataprocWorkflowTemplateJobsSparkJob? sparkJob;

  final DataprocWorkflowTemplateJobsSparkRJob? sparkRJob;

  final DataprocWorkflowTemplateJobsSparkSqlJob? sparkSqlJob;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (prerequisiteStepIds != null)
      'prerequisite_step_ids': prerequisiteStepIds!.toTfJson(),
    'step_id': stepId.toTfJson(),
    if (hadoopJob != null) 'hadoop_job': hadoopJob!.encode(),
    if (hiveJob != null) 'hive_job': hiveJob!.encode(),
    if (pigJob != null) 'pig_job': pigJob!.encode(),
    if (prestoJob != null) 'presto_job': prestoJob!.encode(),
    if (pysparkJob != null) 'pyspark_job': pysparkJob!.encode(),
    if (scheduling != null) 'scheduling': scheduling!.encode(),
    if (sparkJob != null) 'spark_job': sparkJob!.encode(),
    if (sparkRJob != null) 'spark_r_job': sparkRJob!.encode(),
    if (sparkSqlJob != null) 'spark_sql_job': sparkSqlJob!.encode(),
  };
}

/// Typed helper for the `jobs.hadoop_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsHadoopJob {
  const DataprocWorkflowTemplateJobsHadoopJob({
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

  final DataprocWorkflowTemplateJobsHadoopJobLoggingConfig? loggingConfig;

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

/// Typed helper for the `jobs.hadoop_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsHadoopJobLoggingConfig {
  const DataprocWorkflowTemplateJobsHadoopJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.hive_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsHiveJob {
  const DataprocWorkflowTemplateJobsHiveJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.scriptVariables,
    this.queryList,
  });

  final TfArg<bool>? continueOnFailure;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsHiveJobQueryList? queryList;

  Map<String, Object?> encode() => {
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
    if (queryList != null) 'query_list': queryList!.encode(),
  };
}

/// Typed helper for the `jobs.hive_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsHiveJobQueryList {
  const DataprocWorkflowTemplateJobsHiveJobQueryList({required this.queries});

  final TfArg<List<Object?>> queries;

  Map<String, Object?> encode() => {'queries': queries.toTfJson()};
}

/// Typed helper for the `jobs.pig_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPigJob {
  const DataprocWorkflowTemplateJobsPigJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.scriptVariables,
    this.loggingConfig,
    this.queryList,
  });

  final TfArg<bool>? continueOnFailure;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsPigJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsPigJobQueryList? queryList;

  Map<String, Object?> encode() => {
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
    if (queryList != null) 'query_list': queryList!.encode(),
  };
}

/// Typed helper for the `jobs.pig_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPigJobLoggingConfig {
  const DataprocWorkflowTemplateJobsPigJobLoggingConfig({this.driverLogLevels});

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.pig_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPigJobQueryList {
  const DataprocWorkflowTemplateJobsPigJobQueryList({required this.queries});

  final TfArg<List<Object?>> queries;

  Map<String, Object?> encode() => {'queries': queries.toTfJson()};
}

/// Typed helper for the `jobs.presto_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPrestoJob {
  const DataprocWorkflowTemplateJobsPrestoJob({
    this.clientTags,
    this.continueOnFailure,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.loggingConfig,
    this.queryList,
  });

  final TfArg<List<Object?>>? clientTags;

  final TfArg<bool>? continueOnFailure;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final DataprocWorkflowTemplateJobsPrestoJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsPrestoJobQueryList? queryList;

  Map<String, Object?> encode() => {
    if (clientTags != null) 'client_tags': clientTags!.toTfJson(),
    if (continueOnFailure != null)
      'continue_on_failure': continueOnFailure!.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
    if (queryList != null) 'query_list': queryList!.encode(),
  };
}

/// Typed helper for the `jobs.presto_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPrestoJobLoggingConfig {
  const DataprocWorkflowTemplateJobsPrestoJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.presto_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPrestoJobQueryList {
  const DataprocWorkflowTemplateJobsPrestoJobQueryList({required this.queries});

  final TfArg<List<Object?>> queries;

  Map<String, Object?> encode() => {'queries': queries.toTfJson()};
}

/// Typed helper for the `jobs.pyspark_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPysparkJob {
  const DataprocWorkflowTemplateJobsPysparkJob({
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

  final DataprocWorkflowTemplateJobsPysparkJobLoggingConfig? loggingConfig;

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

/// Typed helper for the `jobs.pyspark_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPysparkJobLoggingConfig {
  const DataprocWorkflowTemplateJobsPysparkJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.scheduling` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsScheduling {
  const DataprocWorkflowTemplateJobsScheduling({
    this.maxFailuresPerHour,
    this.maxFailuresTotal,
  });

  final TfArg<num>? maxFailuresPerHour;

  final TfArg<num>? maxFailuresTotal;

  Map<String, Object?> encode() => {
    if (maxFailuresPerHour != null)
      'max_failures_per_hour': maxFailuresPerHour!.toTfJson(),
    if (maxFailuresTotal != null)
      'max_failures_total': maxFailuresTotal!.toTfJson(),
  };
}

/// Typed helper for the `jobs.spark_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkJob {
  const DataprocWorkflowTemplateJobsSparkJob({
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

  final DataprocWorkflowTemplateJobsSparkJobLoggingConfig? loggingConfig;

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

/// Typed helper for the `jobs.spark_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkJobLoggingConfig {
  const DataprocWorkflowTemplateJobsSparkJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.spark_r_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkRJob {
  const DataprocWorkflowTemplateJobsSparkRJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    required this.mainRFileUri,
    this.properties,
    this.loggingConfig,
  });

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<String> mainRFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocWorkflowTemplateJobsSparkRJobLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (args != null) 'args': args!.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    'main_r_file_uri': mainRFileUri.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
  };
}

/// Typed helper for the `jobs.spark_r_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkRJobLoggingConfig {
  const DataprocWorkflowTemplateJobsSparkRJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.spark_sql_job` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkSqlJob {
  const DataprocWorkflowTemplateJobsSparkSqlJob({
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.scriptVariables,
    this.loggingConfig,
    this.queryList,
  });

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsSparkSqlJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsSparkSqlJobQueryList? queryList;

  Map<String, Object?> encode() => {
    if (jarFileUris != null) 'jar_file_uris': jarFileUris!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (queryFileUri != null) 'query_file_uri': queryFileUri!.toTfJson(),
    if (scriptVariables != null)
      'script_variables': scriptVariables!.toTfJson(),
    if (loggingConfig != null) 'logging_config': loggingConfig!.encode(),
    if (queryList != null) 'query_list': queryList!.encode(),
  };
}

/// Typed helper for the `jobs.spark_sql_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkSqlJobLoggingConfig {
  const DataprocWorkflowTemplateJobsSparkSqlJobLoggingConfig({
    this.driverLogLevels,
  });

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    if (driverLogLevels != null)
      'driver_log_levels': driverLogLevels!.toTfJson(),
  };
}

/// Typed helper for the `jobs.spark_sql_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkSqlJobQueryList {
  const DataprocWorkflowTemplateJobsSparkSqlJobQueryList({
    required this.queries,
  });

  final TfArg<List<Object?>> queries;

  Map<String, Object?> encode() => {'queries': queries.toTfJson()};
}

/// Typed helper for the `parameters` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParameters {
  const DataprocWorkflowTemplateParameters({
    this.description,
    required this.fields,
    required this.name,
    this.validation,
  });

  final TfArg<String>? description;

  final TfArg<List<Object?>> fields;

  final TfArg<String> name;

  final DataprocWorkflowTemplateParametersValidation? validation;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'fields': fields.toTfJson(),
    'name': name.toTfJson(),
    if (validation != null) 'validation': validation!.encode(),
  };
}

/// Typed helper for the `parameters.validation` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParametersValidation {
  const DataprocWorkflowTemplateParametersValidation({this.regex, this.values});

  final DataprocWorkflowTemplateParametersValidationRegex? regex;

  final DataprocWorkflowTemplateParametersValidationValues? values;

  Map<String, Object?> encode() => {
    if (regex != null) 'regex': regex!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `parameters.validation.regex` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParametersValidationRegex {
  const DataprocWorkflowTemplateParametersValidationRegex({
    required this.regexes,
  });

  final TfArg<List<Object?>> regexes;

  Map<String, Object?> encode() => {'regexes': regexes.toTfJson()};
}

/// Typed helper for the `parameters.validation.values` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParametersValidationValues {
  const DataprocWorkflowTemplateParametersValidationValues({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `placement` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacement {
  const DataprocWorkflowTemplatePlacement({
    this.clusterSelector,
    this.managedCluster,
  });

  final DataprocWorkflowTemplatePlacementClusterSelector? clusterSelector;

  final DataprocWorkflowTemplatePlacementManagedCluster? managedCluster;

  Map<String, Object?> encode() => {
    if (clusterSelector != null) 'cluster_selector': clusterSelector!.encode(),
    if (managedCluster != null) 'managed_cluster': managedCluster!.encode(),
  };
}

/// Typed helper for the `placement.cluster_selector` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementClusterSelector {
  const DataprocWorkflowTemplatePlacementClusterSelector({
    required this.clusterLabels,
    this.zone,
  });

  final TfArg<Map<String, String>> clusterLabels;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'cluster_labels': clusterLabels.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedCluster {
  const DataprocWorkflowTemplatePlacementManagedCluster({
    required this.clusterName,
    this.labels,
    required this.config,
  });

  final TfArg<String> clusterName;

  final TfArg<Map<String, String>>? labels;

  final DataprocWorkflowTemplatePlacementManagedClusterConfig config;

  Map<String, Object?> encode() => {
    'cluster_name': clusterName.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfig({
    this.stagingBucket,
    this.tempBucket,
    this.autoscalingConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.secondaryWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.workerConfig,
  });

  final TfArg<String>? stagingBucket;

  final TfArg<String>? tempBucket;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig?
  autoscalingConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigEncryptionConfig?
  encryptionConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigEndpointConfig?
  endpointConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfig?
  gceClusterConfig;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigInitializationActions
  >?
  initializationActions;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigLifecycleConfig?
  lifecycleConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfig?
  masterConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig?
  secondaryWorkerConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfig?
  securityConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSoftwareConfig?
  softwareConfig;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfig?
  workerConfig;

  Map<String, Object?> encode() => {
    if (stagingBucket != null) 'staging_bucket': stagingBucket!.toTfJson(),
    if (tempBucket != null) 'temp_bucket': tempBucket!.toTfJson(),
    if (autoscalingConfig != null)
      'autoscaling_config': autoscalingConfig!.encode(),
    if (encryptionConfig != null)
      'encryption_config': encryptionConfig!.encode(),
    if (endpointConfig != null) 'endpoint_config': endpointConfig!.encode(),
    if (gceClusterConfig != null)
      'gce_cluster_config': gceClusterConfig!.encode(),
    if (initializationActions != null)
      'initialization_actions': [
        for (final e in initializationActions!) e.encode(),
      ],
    if (lifecycleConfig != null) 'lifecycle_config': lifecycleConfig!.encode(),
    if (masterConfig != null) 'master_config': masterConfig!.encode(),
    if (secondaryWorkerConfig != null)
      'secondary_worker_config': secondaryWorkerConfig!.encode(),
    if (securityConfig != null) 'security_config': securityConfig!.encode(),
    if (softwareConfig != null) 'software_config': softwareConfig!.encode(),
    if (workerConfig != null) 'worker_config': workerConfig!.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.autoscaling_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig({
    this.policy,
  });

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {
    if (policy != null) 'policy': policy!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.encryption_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigEncryptionConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigEncryptionConfig({
    this.gcePdKmsKeyName,
  });

  final TfArg<String>? gcePdKmsKeyName;

  Map<String, Object?> encode() => {
    if (gcePdKmsKeyName != null)
      'gce_pd_kms_key_name': gcePdKmsKeyName!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.endpoint_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigEndpointConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigEndpointConfig({
    this.enableHttpPortAccess,
  });

  final TfArg<bool>? enableHttpPortAccess;

  Map<String, Object?> encode() => {
    if (enableHttpPortAccess != null)
      'enable_http_port_access': enableHttpPortAccess!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.gce_cluster_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfig({
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.privateIpv6GoogleAccess,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.subnetwork,
    this.tags,
    this.zone,
    this.nodeGroupAffinity,
    this.reservationAffinity,
    this.shieldedInstanceConfig,
  });

  final TfArg<bool>? internalIpOnly;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String>? network;

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigPrivateIpv6GoogleAccess
  >?
  privateIpv6GoogleAccess;

  final TfArg<String>? serviceAccount;

  final TfArg<List<Object?>>? serviceAccountScopes;

  final TfArg<String>? subnetwork;

  final TfArg<List<Object?>>? tags;

  final TfArg<String>? zone;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity?
  nodeGroupAffinity;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity?
  reservationAffinity;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    if (internalIpOnly != null) 'internal_ip_only': internalIpOnly!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (privateIpv6GoogleAccess != null)
      'private_ipv6_google_access': privateIpv6GoogleAccess!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (serviceAccountScopes != null)
      'service_account_scopes': serviceAccountScopes!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
    if (nodeGroupAffinity != null)
      'node_group_affinity': nodeGroupAffinity!.encode(),
    if (reservationAffinity != null)
      'reservation_affinity': reservationAffinity!.encode(),
    if (shieldedInstanceConfig != null)
      'shielded_instance_config': shieldedInstanceConfig!.encode(),
  };
}

/// `private_ipv6_google_access` — derived from the provider schema description.
enum DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigPrivateIpv6GoogleAccess
    implements TerraformEnum {
  privateIpv6GoogleAccessUnspecified('PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED'),
  inheritFromSubnetwork('INHERIT_FROM_SUBNETWORK'),
  outbound('OUTBOUND'),
  bidirectional('BIDIRECTIONAL');

  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigPrivateIpv6GoogleAccess(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.managed_cluster.config.gce_cluster_config.node_group_affinity` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity({
    required this.nodeGroup,
  });

  final TfArg<String> nodeGroup;

  Map<String, Object?> encode() => {'node_group': nodeGroup.toTfJson()};
}

/// Typed helper for the `placement.managed_cluster.config.gce_cluster_config.reservation_affinity` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinityConsumeReservationType
  >?
  consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (consumeReservationType != null)
      'consume_reservation_type': consumeReservationType!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
enum DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinityConsumeReservationType
    implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  noReservation('NO_RESERVATION'),
  anyReservation('ANY_RESERVATION'),
  specificReservation('SPECIFIC_RESERVATION');

  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinityConsumeReservationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.managed_cluster.config.gce_cluster_config.shielded_instance_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    if (enableIntegrityMonitoring != null)
      'enable_integrity_monitoring': enableIntegrityMonitoring!.toTfJson(),
    if (enableSecureBoot != null)
      'enable_secure_boot': enableSecureBoot!.toTfJson(),
    if (enableVtpm != null) 'enable_vtpm': enableVtpm!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.initialization_actions` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigInitializationActions {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigInitializationActions({
    this.executableFile,
    this.executionTimeout,
  });

  final TfArg<String>? executableFile;

  final TfArg<String>? executionTimeout;

  Map<String, Object?> encode() => {
    if (executableFile != null) 'executable_file': executableFile!.toTfJson(),
    if (executionTimeout != null)
      'execution_timeout': executionTimeout!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.lifecycle_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigLifecycleConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigLifecycleConfig({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.idleDeleteTtl,
  });

  final TfArg<String>? autoDeleteTime;

  final TfArg<String>? autoDeleteTtl;

  final TfArg<String>? idleDeleteTtl;

  Map<String, Object?> encode() => {
    if (autoDeleteTime != null) 'auto_delete_time': autoDeleteTime!.toTfJson(),
    if (autoDeleteTtl != null) 'auto_delete_ttl': autoDeleteTtl!.toTfJson(),
    if (idleDeleteTtl != null) 'idle_delete_ttl': idleDeleteTtl!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfig({
    this.image,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
    this.accelerators,
    this.diskConfig,
  });

  final TfArg<String>? image;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigPreemptibility
  >?
  preemptibility;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerators
  >?
  accelerators;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (image != null) 'image': image!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (preemptibility != null) 'preemptibility': preemptibility!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// `preemptibility` — derived from the provider schema description.
enum DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigPreemptibility
    implements TerraformEnum {
  preemptibilityUnspecified('PREEMPTIBILITY_UNSPECIFIED'),
  nonPreemptible('NON_PREEMPTIBLE'),
  preemptible('PREEMPTIBLE');

  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigPreemptibility(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.managed_cluster.config.master_config.accelerators` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerators {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.numLocalSsds,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<num>? numLocalSsds;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig({
    this.image,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
    this.accelerators,
    this.diskConfig,
  });

  final TfArg<String>? image;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigPreemptibility
  >?
  preemptibility;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerators
  >?
  accelerators;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (image != null) 'image': image!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (preemptibility != null) 'preemptibility': preemptibility!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// `preemptibility` — derived from the provider schema description.
enum DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigPreemptibility
    implements TerraformEnum {
  preemptibilityUnspecified('PREEMPTIBILITY_UNSPECIFIED'),
  nonPreemptible('NON_PREEMPTIBLE'),
  preemptible('PREEMPTIBLE');

  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigPreemptibility(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.accelerators` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerators {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.numLocalSsds,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<num>? numLocalSsds;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.security_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfig({
    this.kerberosConfig,
  });

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig?
  kerberosConfig;

  Map<String, Object?> encode() => {
    if (kerberosConfig != null) 'kerberos_config': kerberosConfig!.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.security_config.kerberos_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig({
    this.crossRealmTrustAdminServer,
    this.crossRealmTrustKdc,
    this.crossRealmTrustRealm,
    this.crossRealmTrustSharedPassword,
    this.enableKerberos,
    this.kdcDbKey,
    this.keyPassword,
    this.keystore,
    this.keystorePassword,
    this.kmsKey,
    this.realm,
    this.rootPrincipalPassword,
    this.tgtLifetimeHours,
    this.truststore,
    this.truststorePassword,
  });

  final TfArg<String>? crossRealmTrustAdminServer;

  final TfArg<String>? crossRealmTrustKdc;

  final TfArg<String>? crossRealmTrustRealm;

  final TfArg<String>? crossRealmTrustSharedPassword;

  final TfArg<bool>? enableKerberos;

  final TfArg<String>? kdcDbKey;

  final TfArg<String>? keyPassword;

  final TfArg<String>? keystore;

  final TfArg<String>? keystorePassword;

  final TfArg<String>? kmsKey;

  final TfArg<String>? realm;

  final TfArg<String>? rootPrincipalPassword;

  final TfArg<num>? tgtLifetimeHours;

  final TfArg<String>? truststore;

  final TfArg<String>? truststorePassword;

  Map<String, Object?> encode() => {
    if (crossRealmTrustAdminServer != null)
      'cross_realm_trust_admin_server': crossRealmTrustAdminServer!.toTfJson(),
    if (crossRealmTrustKdc != null)
      'cross_realm_trust_kdc': crossRealmTrustKdc!.toTfJson(),
    if (crossRealmTrustRealm != null)
      'cross_realm_trust_realm': crossRealmTrustRealm!.toTfJson(),
    if (crossRealmTrustSharedPassword != null)
      'cross_realm_trust_shared_password': crossRealmTrustSharedPassword!
          .toTfJson(),
    if (enableKerberos != null) 'enable_kerberos': enableKerberos!.toTfJson(),
    if (kdcDbKey != null) 'kdc_db_key': kdcDbKey!.toTfJson(),
    if (keyPassword != null) 'key_password': keyPassword!.toTfJson(),
    if (keystore != null) 'keystore': keystore!.toTfJson(),
    if (keystorePassword != null)
      'keystore_password': keystorePassword!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (realm != null) 'realm': realm!.toTfJson(),
    if (rootPrincipalPassword != null)
      'root_principal_password': rootPrincipalPassword!.toTfJson(),
    if (tgtLifetimeHours != null)
      'tgt_lifetime_hours': tgtLifetimeHours!.toTfJson(),
    if (truststore != null) 'truststore': truststore!.toTfJson(),
    if (truststorePassword != null)
      'truststore_password': truststorePassword!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.software_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSoftwareConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.properties,
  });

  final TfArg<String>? imageVersion;

  final TfArg<List<Object?>>? optionalComponents;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    if (imageVersion != null) 'image_version': imageVersion!.toTfJson(),
    if (optionalComponents != null)
      'optional_components': optionalComponents!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfig({
    this.image,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
    this.accelerators,
    this.diskConfig,
  });

  final TfArg<String>? image;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigPreemptibility
  >?
  preemptibility;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerators
  >?
  accelerators;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (image != null) 'image': image!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (preemptibility != null) 'preemptibility': preemptibility!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// `preemptibility` — derived from the provider schema description.
enum DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigPreemptibility
    implements TerraformEnum {
  preemptibilityUnspecified('PREEMPTIBILITY_UNSPECIFIED'),
  nonPreemptible('NON_PREEMPTIBLE'),
  preemptible('PREEMPTIBLE');

  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigPreemptibility(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.accelerators` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerators {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.numLocalSsds,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<num>? numLocalSsds;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_workflow_template`.
///
/// Dataproc **workflow template** — reusable DAG metadata (placement +
/// job steps). Creating a template does **not** instantiate a cluster
/// or start jobs; instantiate later via `gcloud dataproc
/// workflow-templates instantiate` (or the API).
///
/// Prefer a thin smoke stack: [location] `us-central1`,
/// [placement].`managedCluster` with `clusterName` + GCE `zone` only
/// (no live cluster), one [jobs] Spark step, and [deletionPolicy]
/// `DELETE`. Do not pair this factory with [GoogleDataprocCluster],
/// [GoogleDataprocJob], or [GoogleDataprocBatch].
///
/// Enable `dataproc.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleDataprocWorkflowTemplate(
///   localName: 'sparkpi',
///   name: TfArg.literal('terradart-wf'),
///   location: TfArg.literal('us-central1'),
///   placement: DataprocWorkflowTemplatePlacement(
///     managedCluster: DataprocWorkflowTemplatePlacementManagedCluster(
///       clusterName: TfArg.literal('terradart-wf-cluster'),
///       config: DataprocWorkflowTemplatePlacementManagedClusterConfig(
///         gceClusterConfig:
///             DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfig(
///           zone: TfArg.literal('us-central1-a'),
///         ),
///       ),
///     ),
///   ),
///   jobs: [
///     DataprocWorkflowTemplateJobs(
///       stepId: TfArg.literal('sparkpi'),
///       sparkJob: DataprocWorkflowTemplateJobsSparkJob(
///         mainClass: TfArg.literal('org.apache.spark.examples.SparkPi'),
///       ),
///     ),
///   ],
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDataprocWorkflowTemplate extends Resource {
  static const String tfType = 'google_dataproc_workflow_template';

  GoogleDataprocWorkflowTemplate({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required DataprocWorkflowTemplatePlacement placement,
    required List<DataprocWorkflowTemplateJobs> jobs,
    List<DataprocWorkflowTemplateParameters>? parameters,
    TfArg<String>? dagTimeout,
    DataprocWorkflowTemplateEncryptionConfig? encryptionConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<num>? version,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'placement': TfArg.literal(placement.encode()),
           'jobs': TfArg.literal([for (final e in jobs) e.encode()]),
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
           if (dagTimeout != null) 'dag_timeout': dagTimeout,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (labels != null) 'labels': labels,
           if (version != null) 'version': version,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocWorkflowTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataproc_workflow_template`.
const Set<String> _googleDataprocWorkflowTemplateSensitive = <String>{};

/// Typed helper for the `encryption_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateEncryptionConfig {
  const DataprocWorkflowTemplateEncryptionConfig({this.kmsKey});

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
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

  final TfArg<List<String>>? prerequisiteStepIds;

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
    'labels': ?labels?.toTfJson(),
    'prerequisite_step_ids': ?prerequisiteStepIds?.toTfJson(),
    'step_id': stepId.toTfJson(),
    'hadoop_job': ?hadoopJob?.encode(),
    'hive_job': ?hiveJob?.encode(),
    'pig_job': ?pigJob?.encode(),
    'presto_job': ?prestoJob?.encode(),
    'pyspark_job': ?pysparkJob?.encode(),
    'scheduling': ?scheduling?.encode(),
    'spark_job': ?sparkJob?.encode(),
    'spark_r_job': ?sparkRJob?.encode(),
    'spark_sql_job': ?sparkSqlJob?.encode(),
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

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String>? mainClass;

  final TfArg<String>? mainJarFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocWorkflowTemplateJobsHadoopJobLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'main_class': ?mainClass?.toTfJson(),
    'main_jar_file_uri': ?mainJarFileUri?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
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

  final TfArg<List<String>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsHiveJobQueryList? queryList;

  Map<String, Object?> encode() => {
    'continue_on_failure': ?continueOnFailure?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'query_file_uri': ?queryFileUri?.toTfJson(),
    'script_variables': ?scriptVariables?.toTfJson(),
    'query_list': ?queryList?.encode(),
  };
}

/// Typed helper for the `jobs.hive_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsHiveJobQueryList {
  const DataprocWorkflowTemplateJobsHiveJobQueryList({required this.queries});

  final TfArg<List<String>> queries;

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

  final TfArg<List<String>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsPigJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsPigJobQueryList? queryList;

  Map<String, Object?> encode() => {
    'continue_on_failure': ?continueOnFailure?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'query_file_uri': ?queryFileUri?.toTfJson(),
    'script_variables': ?scriptVariables?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
    'query_list': ?queryList?.encode(),
  };
}

/// Typed helper for the `jobs.pig_job.logging_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPigJobLoggingConfig {
  const DataprocWorkflowTemplateJobsPigJobLoggingConfig({this.driverLogLevels});

  final TfArg<Map<String, String>>? driverLogLevels;

  Map<String, Object?> encode() => {
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
  };
}

/// Typed helper for the `jobs.pig_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPigJobQueryList {
  const DataprocWorkflowTemplateJobsPigJobQueryList({required this.queries});

  final TfArg<List<String>> queries;

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

  final TfArg<List<String>>? clientTags;

  final TfArg<bool>? continueOnFailure;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final DataprocWorkflowTemplateJobsPrestoJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsPrestoJobQueryList? queryList;

  Map<String, Object?> encode() => {
    'client_tags': ?clientTags?.toTfJson(),
    'continue_on_failure': ?continueOnFailure?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'query_file_uri': ?queryFileUri?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
    'query_list': ?queryList?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
  };
}

/// Typed helper for the `jobs.presto_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsPrestoJobQueryList {
  const DataprocWorkflowTemplateJobsPrestoJobQueryList({required this.queries});

  final TfArg<List<String>> queries;

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

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String> mainPythonFileUri;

  final TfArg<Map<String, String>>? properties;

  final TfArg<List<String>>? pythonFileUris;

  final DataprocWorkflowTemplateJobsPysparkJobLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'main_python_file_uri': mainPythonFileUri.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'python_file_uris': ?pythonFileUris?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
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
    'max_failures_per_hour': ?maxFailuresPerHour?.toTfJson(),
    'max_failures_total': ?maxFailuresTotal?.toTfJson(),
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

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String>? mainClass;

  final TfArg<String>? mainJarFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocWorkflowTemplateJobsSparkJobLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'main_class': ?mainClass?.toTfJson(),
    'main_jar_file_uri': ?mainJarFileUri?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
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

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<String> mainRFileUri;

  final TfArg<Map<String, String>>? properties;

  final DataprocWorkflowTemplateJobsSparkRJobLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'main_r_file_uri': mainRFileUri.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
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

  final TfArg<List<String>>? jarFileUris;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocWorkflowTemplateJobsSparkSqlJobLoggingConfig? loggingConfig;

  final DataprocWorkflowTemplateJobsSparkSqlJobQueryList? queryList;

  Map<String, Object?> encode() => {
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'query_file_uri': ?queryFileUri?.toTfJson(),
    'script_variables': ?scriptVariables?.toTfJson(),
    'logging_config': ?loggingConfig?.encode(),
    'query_list': ?queryList?.encode(),
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
    'driver_log_levels': ?driverLogLevels?.toTfJson(),
  };
}

/// Typed helper for the `jobs.spark_sql_job.query_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateJobsSparkSqlJobQueryList {
  const DataprocWorkflowTemplateJobsSparkSqlJobQueryList({
    required this.queries,
  });

  final TfArg<List<String>> queries;

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

  final TfArg<List<String>> fields;

  final TfArg<String> name;

  final DataprocWorkflowTemplateParametersValidation? validation;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'fields': fields.toTfJson(),
    'name': name.toTfJson(),
    'validation': ?validation?.encode(),
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
    'regex': ?regex?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `parameters.validation.regex` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParametersValidationRegex {
  const DataprocWorkflowTemplateParametersValidationRegex({
    required this.regexes,
  });

  final TfArg<List<String>> regexes;

  Map<String, Object?> encode() => {'regexes': regexes.toTfJson()};
}

/// Typed helper for the `parameters.validation.values` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplateParametersValidationValues {
  const DataprocWorkflowTemplateParametersValidationValues({
    required this.values,
  });

  final TfArg<List<String>> values;

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
    'cluster_selector': ?clusterSelector?.encode(),
    'managed_cluster': ?managedCluster?.encode(),
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
    'zone': ?zone?.toTfJson(),
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
    'labels': ?labels?.toTfJson(),
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
    'staging_bucket': ?stagingBucket?.toTfJson(),
    'temp_bucket': ?tempBucket?.toTfJson(),
    'autoscaling_config': ?autoscalingConfig?.encode(),
    'encryption_config': ?encryptionConfig?.encode(),
    'endpoint_config': ?endpointConfig?.encode(),
    'gce_cluster_config': ?gceClusterConfig?.encode(),
    if (initializationActions != null)
      'initialization_actions': [
        for (final e in initializationActions!) e.encode(),
      ],
    'lifecycle_config': ?lifecycleConfig?.encode(),
    'master_config': ?masterConfig?.encode(),
    'secondary_worker_config': ?secondaryWorkerConfig?.encode(),
    'security_config': ?securityConfig?.encode(),
    'software_config': ?softwareConfig?.encode(),
    'worker_config': ?workerConfig?.encode(),
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

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
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
    'gce_pd_kms_key_name': ?gcePdKmsKeyName?.toTfJson(),
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
    'enable_http_port_access': ?enableHttpPortAccess?.toTfJson(),
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

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<
    DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigPrivateIpv6GoogleAccess
  >?
  privateIpv6GoogleAccess;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<List<String>>? serviceAccountScopes;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  final TfArg<String>? zone;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity?
  nodeGroupAffinity;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity?
  reservationAffinity;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    'internal_ip_only': ?internalIpOnly?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'private_ipv6_google_access': ?privateIpv6GoogleAccess?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'service_account_scopes': ?serviceAccountScopes?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'node_group_affinity': ?nodeGroupAffinity?.encode(),
    'reservation_affinity': ?reservationAffinity?.encode(),
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
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

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': ?consumeReservationType?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
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
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
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
    'executable_file': ?executableFile?.toTfJson(),
    'execution_timeout': ?executionTimeout?.toTfJson(),
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
    'auto_delete_time': ?autoDeleteTime?.toTfJson(),
    'auto_delete_ttl': ?autoDeleteTtl?.toTfJson(),
    'idle_delete_ttl': ?idleDeleteTtl?.toTfJson(),
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
    this.instanceFlexibilityPolicy,
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

  final DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    'preemptibility': ?preemptibility?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
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
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.instance_flexibility_policy` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicy {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<String>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    'machine_types': ?machineTypes?.toTfJson(),
    'rank': ?rank?.toTfJson(),
    'disk_config': ?diskConfig?.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.master_config.instance_flexibility_policy.instance_selection_list.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
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
    this.instanceFlexibilityPolicy,
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

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    'preemptibility': ?preemptibility?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
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
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
    this.provisioningModelMix,
  });

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix?
  provisioningModelMix;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
    'provisioning_model_mix': ?provisioningModelMix?.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<String>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    'machine_types': ?machineTypes?.toTfJson(),
    'rank': ?rank?.toTfJson(),
    'disk_config': ?diskConfig?.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.instance_selection_list.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  final TfArg<num>? standardCapacityBase;

  final TfArg<num>? standardCapacityPercentAboveBase;

  Map<String, Object?> encode() => {
    'standard_capacity_base': ?standardCapacityBase?.toTfJson(),
    'standard_capacity_percent_above_base': ?standardCapacityPercentAboveBase
        ?.toTfJson(),
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
    'kerberos_config': ?kerberosConfig?.encode(),
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

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final TfArg<String>? realm;

  final TfArg<String>? rootPrincipalPassword;

  final TfArg<num>? tgtLifetimeHours;

  final TfArg<String>? truststore;

  final TfArg<String>? truststorePassword;

  Map<String, Object?> encode() => {
    'cross_realm_trust_admin_server': ?crossRealmTrustAdminServer?.toTfJson(),
    'cross_realm_trust_kdc': ?crossRealmTrustKdc?.toTfJson(),
    'cross_realm_trust_realm': ?crossRealmTrustRealm?.toTfJson(),
    'cross_realm_trust_shared_password': ?crossRealmTrustSharedPassword
        ?.toTfJson(),
    'enable_kerberos': ?enableKerberos?.toTfJson(),
    'kdc_db_key': ?kdcDbKey?.toTfJson(),
    'key_password': ?keyPassword?.toTfJson(),
    'keystore': ?keystore?.toTfJson(),
    'keystore_password': ?keystorePassword?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'realm': ?realm?.toTfJson(),
    'root_principal_password': ?rootPrincipalPassword?.toTfJson(),
    'tgt_lifetime_hours': ?tgtLifetimeHours?.toTfJson(),
    'truststore': ?truststore?.toTfJson(),
    'truststore_password': ?truststorePassword?.toTfJson(),
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

  final TfArg<List<String>>? optionalComponents;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    'image_version': ?imageVersion?.toTfJson(),
    'optional_components': ?optionalComponents?.toTfJson(),
    'properties': ?properties?.toTfJson(),
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
    this.instanceFlexibilityPolicy,
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

  final DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    'preemptibility': ?preemptibility?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
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
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.instance_flexibility_policy` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<String>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    'machine_types': ?machineTypes?.toTfJson(),
    'rank': ?rank?.toTfJson(),
    'disk_config': ?diskConfig?.encode(),
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<
    DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig
  >?
  attachedDiskConfig;

  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `placement.managed_cluster.config.worker_config.instance_flexibility_policy.instance_selection_list.disk_config.attached_disk_config` block of
/// `google_dataproc_workflow_template` (derived from provider schema).
@immutable
final class DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig {
  const DataprocWorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
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
    super.provider,
    super.timeouts,
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
           'dag_timeout': ?dagTimeout,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           'labels': ?labels,
           'version': ?version,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocWorkflowTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocWorkflowTemplate>`.
  RefTo<GoogleDataprocWorkflowTemplate> get ref => RefTo.of(this);

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

  /// Reference to `dag_timeout` attribute.
  TfRef<String> get dagTimeoutRef =>
      TfRef.attribute<String>(this, 'dag_timeout');

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

  /// Reference to `version` attribute.
  TfRef<num> get versionRef => TfRef.attribute<num>(this, 'version');
}

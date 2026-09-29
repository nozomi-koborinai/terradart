// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_data_loss_prevention_job_trigger`.
const Set<String> _googleDataLossPreventionJobTriggerSensitive = <String>{};

/// Data Loss Prevention Job Trigger enum for `status`.
enum DataLossPreventionJobTriggerStatus implements TerraformEnum {
  paused('PAUSED'),
  healthy('HEALTHY'),
  cancelled('CANCELLED');

  const DataLossPreventionJobTriggerStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJob {
  const DataLossPreventionJobTriggerInspectJob({
    this.inspectTemplateName,
    this.actions,
    this.inspectConfig,
    required this.storageConfig,
  });

  final TfArg<String>? inspectTemplateName;

  final List<DataLossPreventionJobTriggerInspectJobActions>? actions;

  final DataLossPreventionJobTriggerInspectJobInspectConfig? inspectConfig;

  final DataLossPreventionJobTriggerInspectJobStorageConfig storageConfig;

  Map<String, Object?> encode() => {
    'inspect_template_name': ?inspectTemplateName?.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'inspect_config': ?inspectConfig?.encode(),
    'storage_config': storageConfig.encode(),
  };
}

/// Typed helper for the `inspect_job.actions` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActions {
  const DataLossPreventionJobTriggerInspectJobActions({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToDataplexCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  final DataLossPreventionJobTriggerInspectJobActionsDeidentify? deidentify;

  final DataLossPreventionJobTriggerInspectJobActionsJobNotificationEmails?
  jobNotificationEmails;

  final DataLossPreventionJobTriggerInspectJobActionsPubSub? pubSub;

  final DataLossPreventionJobTriggerInspectJobActionsPublishFindingsToDataplexCatalog?
  publishFindingsToDataplexCatalog;

  final DataLossPreventionJobTriggerInspectJobActionsPublishSummaryToCscc?
  publishSummaryToCscc;

  final DataLossPreventionJobTriggerInspectJobActionsPublishToStackdriver?
  publishToStackdriver;

  final DataLossPreventionJobTriggerInspectJobActionsSaveFindings? saveFindings;

  Map<String, Object?> encode() => {
    'deidentify': ?deidentify?.encode(),
    'job_notification_emails': ?jobNotificationEmails?.encode(),
    'pub_sub': ?pubSub?.encode(),
    'publish_findings_to_dataplex_catalog': ?publishFindingsToDataplexCatalog
        ?.encode(),
    'publish_summary_to_cscc': ?publishSummaryToCscc?.encode(),
    'publish_to_stackdriver': ?publishToStackdriver?.encode(),
    'save_findings': ?saveFindings?.encode(),
  };
}

/// Typed helper for the `inspect_job.actions.deidentify` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsDeidentify {
  const DataLossPreventionJobTriggerInspectJobActionsDeidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransform,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  final TfArg<String> cloudStorageOutput;

  final List<
    TfArg<
      DataLossPreventionJobTriggerInspectJobActionsDeidentifyFileTypesToTransform
    >
  >?
  fileTypesToTransform;

  final DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationConfig?
  transformationConfig;

  final DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfig?
  transformationDetailsStorageConfig;

  Map<String, Object?> encode() => {
    'cloud_storage_output': cloudStorageOutput.toTfJson(),
    if (fileTypesToTransform != null)
      'file_types_to_transform': [
        for (final e in fileTypesToTransform!) e.toTfJson(),
      ],
    'transformation_config': ?transformationConfig?.encode(),
    'transformation_details_storage_config': ?transformationDetailsStorageConfig
        ?.encode(),
  };
}

/// `file_types_to_transform` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobActionsDeidentifyFileTypesToTransform
    implements TerraformEnum {
  image('IMAGE'),
  textFile('TEXT_FILE'),
  csv('CSV'),
  tsv('TSV');

  const DataLossPreventionJobTriggerInspectJobActionsDeidentifyFileTypesToTransform(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.actions.deidentify.transformation_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationConfig {
  const DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationConfig({
    this.deidentifyTemplate,
    this.imageRedactTemplate,
    this.structuredDeidentifyTemplate,
  });

  final TfArg<String>? deidentifyTemplate;

  final TfArg<String>? imageRedactTemplate;

  final TfArg<String>? structuredDeidentifyTemplate;

  Map<String, Object?> encode() => {
    'deidentify_template': ?deidentifyTemplate?.toTfJson(),
    'image_redact_template': ?imageRedactTemplate?.toTfJson(),
    'structured_deidentify_template': ?structuredDeidentifyTemplate?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.actions.deidentify.transformation_details_storage_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfig {
  const DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfig({
    required this.table,
  });

  final DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfigTable
  table;

  Map<String, Object?> encode() => {'table': table.encode()};
}

/// Typed helper for the `inspect_job.actions.deidentify.transformation_details_storage_config.table` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfigTable {
  const DataLossPreventionJobTriggerInspectJobActionsDeidentifyTransformationDetailsStorageConfigTable({
    required this.datasetId,
    required this.projectId,
    this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': ?tableId?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.actions.job_notification_emails` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsJobNotificationEmails {
  const DataLossPreventionJobTriggerInspectJobActionsJobNotificationEmails();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.pub_sub` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsPubSub {
  const DataLossPreventionJobTriggerInspectJobActionsPubSub({
    required this.topic,
  });

  final RefTo<GooglePubsubTopic> topic;

  Map<String, Object?> encode() => {'topic': topic.encodeAs('id').toTfJson()};
}

/// Typed helper for the `inspect_job.actions.publish_findings_to_dataplex_catalog` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsPublishFindingsToDataplexCatalog {
  const DataLossPreventionJobTriggerInspectJobActionsPublishFindingsToDataplexCatalog();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.publish_summary_to_cscc` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsPublishSummaryToCscc {
  const DataLossPreventionJobTriggerInspectJobActionsPublishSummaryToCscc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.publish_to_stackdriver` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsPublishToStackdriver {
  const DataLossPreventionJobTriggerInspectJobActionsPublishToStackdriver();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.save_findings` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsSaveFindings {
  const DataLossPreventionJobTriggerInspectJobActionsSaveFindings({
    required this.outputConfig,
  });

  final DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfig
  outputConfig;

  Map<String, Object?> encode() => {'output_config': outputConfig.encode()};
}

/// Typed helper for the `inspect_job.actions.save_findings.output_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfig {
  const DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfig({
    this.outputSchema,
    this.storagePath,
    this.table,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigOutputSchema
  >?
  outputSchema;

  final DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigStoragePath?
  storagePath;

  final DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigTable?
  table;

  Map<String, Object?> encode() => {
    'output_schema': ?outputSchema?.toTfJson(),
    'storage_path': ?storagePath?.encode(),
    'table': ?table?.encode(),
  };
}

/// `output_schema` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigOutputSchema
    implements TerraformEnum {
  basicColumns('BASIC_COLUMNS'),
  gcsColumns('GCS_COLUMNS'),
  datastoreColumns('DATASTORE_COLUMNS'),
  bigQueryColumns('BIG_QUERY_COLUMNS'),
  allColumns('ALL_COLUMNS');

  const DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigOutputSchema(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.actions.save_findings.output_config.storage_path` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigStoragePath {
  const DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_job.actions.save_findings.output_config.table` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigTable {
  const DataLossPreventionJobTriggerInspectJobActionsSaveFindingsOutputConfigTable({
    required this.datasetId,
    required this.projectId,
    this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': ?tableId?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfig {
  const DataLossPreventionJobTriggerInspectJobInspectConfig({
    this.excludeInfoTypes,
    this.includeQuote,
    this.minLikelihood,
    this.customInfoTypes,
    this.infoTypes,
    this.limits,
    this.ruleSet,
  });

  final TfArg<bool>? excludeInfoTypes;

  final TfArg<bool>? includeQuote;

  final TfArg<DataLossPreventionJobTriggerInspectJobInspectConfigMinLikelihood>?
  minLikelihood;

  final List<
    DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypes
  >?
  customInfoTypes;

  final List<DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypes>?
  infoTypes;

  final DataLossPreventionJobTriggerInspectJobInspectConfigLimits? limits;

  final List<DataLossPreventionJobTriggerInspectJobInspectConfigRuleSet>?
  ruleSet;

  Map<String, Object?> encode() => {
    'exclude_info_types': ?excludeInfoTypes?.toTfJson(),
    'include_quote': ?includeQuote?.toTfJson(),
    'min_likelihood': ?minLikelihood?.toTfJson(),
    if (customInfoTypes != null)
      'custom_info_types': [for (final e in customInfoTypes!) e.encode()],
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'limits': ?limits?.encode(),
    if (ruleSet != null) 'rule_set': [for (final e in ruleSet!) e.encode()],
  };
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigMinLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerInspectJobInspectConfigMinLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypes {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypes({
    this.exclusionType,
    this.likelihood,
    this.dictionary,
    required this.infoType,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  final TfArg<String>? exclusionType;

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesLikelihood
  >?
  likelihood;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionary?
  dictionary;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoType
  infoType;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesRegex?
  regex;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScore?
  sensitivityScore;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesStoredType?
  storedType;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSurrogateType?
  surrogateType;

  Map<String, Object?> encode() => {
    'exclusion_type': ?exclusionType?.toTfJson(),
    'likelihood': ?likelihood?.toTfJson(),
    'dictionary': ?dictionary?.encode(),
    'info_type': infoType.encode(),
    'regex': ?regex?.encode(),
    'sensitivity_score': ?sensitivityScore?.encode(),
    'stored_type': ?storedType?.encode(),
    'surrogate_type': ?surrogateType?.encode(),
  };
}

/// `likelihood` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionary {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryCloudStoragePath {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryWordList {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesDictionaryWordList({
    required this.words,
  });

  final TfArg<List<Object?>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoType {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesRegex {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<Object?>>? groupIndexes;

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesStoredType {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesStoredType({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSurrogateType {
  const DataLossPreventionJobTriggerInspectJobInspectConfigCustomInfoTypesSurrogateType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.inspect_config.info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypes {
  const DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.limits` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigLimits {
  const DataLossPreventionJobTriggerInspectJobInspectConfigLimits({
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num>? maxFindingsPerItem;

  final TfArg<num>? maxFindingsPerRequest;

  final List<
    DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType
  >?
  maxFindingsPerInfoType;

  Map<String, Object?> encode() => {
    'max_findings_per_item': ?maxFindingsPerItem?.toTfJson(),
    'max_findings_per_request': ?maxFindingsPerRequest?.toTfJson(),
    if (maxFindingsPerInfoType != null)
      'max_findings_per_info_type': [
        for (final e in maxFindingsPerInfoType!) e.encode(),
      ],
  };
}

/// Typed helper for the `inspect_job.inspect_config.limits.max_findings_per_info_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType {
  const DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType({
    this.maxFindings,
    this.infoType,
  });

  final TfArg<num>? maxFindings;

  final DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'max_findings': ?maxFindings?.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.limits.max_findings_per_info_type.info_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType {
  const DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSet {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSet({
    this.infoTypes,
    required this.rules,
  });

  final List<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypes
  >?
  infoTypes;

  final List<DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRules>
  rules;

  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypes {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRules {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRule?
  exclusionRule;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRule?
  hotwordRule;

  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRule {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleMatchingType
  >
  matchingType;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionary?
  dictionary;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotword?
  excludeByHotword;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes?
  excludeInfoTypes;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleRegex?
  regex;

  Map<String, Object?> encode() => {
    'matching_type': matchingType.toTfJson(),
    'dictionary': ?dictionary?.encode(),
    'exclude_by_hotword': ?excludeByHotword?.encode(),
    'exclude_info_types': ?excludeInfoTypes?.encode(),
    'regex': ?regex?.encode(),
  };
}

/// `matching_type` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleMatchingType
    implements TerraformEnum {
  matchingTypeFullMatch('MATCHING_TYPE_FULL_MATCH'),
  matchingTypePartialMatch('MATCHING_TYPE_PARTIAL_MATCH'),
  matchingTypeInverseMatch('MATCHING_TYPE_INVERSE_MATCH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleMatchingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionary {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryWordList {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleDictionaryWordList({
    required this.words,
  });

  final TfArg<List<Object?>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotword {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex?
  hotwordRegex;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity?
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': ?hotwordRegex?.encode(),
    'proximity': ?proximity?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex({
    this.groupIndexes,
    this.pattern,
  });

  final TfArg<List<Object?>>? groupIndexes;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  final TfArg<num>? windowAfter;

  final TfArg<num>? windowBefore;

  Map<String, Object?> encode() => {
    'window_after': ?windowAfter?.toTfJson(),
    'window_before': ?windowBefore?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  final List<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes
  >
  infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleRegex {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesExclusionRuleRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<Object?>>? groupIndexes;

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRule {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleHotwordRegex?
  hotwordRegex;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment?
  likelihoodAdjustment;

  final DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleProximity?
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': ?hotwordRegex?.encode(),
    'likelihood_adjustment': ?likelihoodAdjustment?.encode(),
    'proximity': ?proximity?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleHotwordRegex {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleHotwordRegex({
    this.groupIndexes,
    this.pattern,
  });

  final TfArg<List<Object?>>? groupIndexes;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final TfArg<
    DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
  >?
  fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleProximity {
  const DataLossPreventionJobTriggerInspectJobInspectConfigRuleSetRulesHotwordRuleProximity({
    this.windowAfter,
    this.windowBefore,
  });

  final TfArg<num>? windowAfter;

  final TfArg<num>? windowBefore;

  Map<String, Object?> encode() => {
    'window_after': ?windowAfter?.toTfJson(),
    'window_before': ?windowBefore?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfig {
  const DataLossPreventionJobTriggerInspectJobStorageConfig({
    this.bigQueryOptions,
    this.cloudStorageOptions,
    this.datastoreOptions,
    this.hybridOptions,
    this.timespanConfig,
  });

  final DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptions?
  bigQueryOptions;

  final DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptions?
  cloudStorageOptions;

  final DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptions?
  datastoreOptions;

  final DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptions?
  hybridOptions;

  final DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfig?
  timespanConfig;

  Map<String, Object?> encode() => {
    'big_query_options': ?bigQueryOptions?.encode(),
    'cloud_storage_options': ?cloudStorageOptions?.encode(),
    'datastore_options': ?datastoreOptions?.encode(),
    'hybrid_options': ?hybridOptions?.encode(),
    'timespan_config': ?timespanConfig?.encode(),
  };
}

/// Typed helper for the `inspect_job.storage_config.big_query_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptions {
  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptions({
    this.rowsLimit,
    this.rowsLimitPercent,
    this.sampleMethod,
    this.excludedFields,
    this.identifyingFields,
    this.includedFields,
    required this.tableReference,
  });

  final TfArg<num>? rowsLimit;

  final TfArg<num>? rowsLimitPercent;

  final TfArg<
    DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsSampleMethod
  >?
  sampleMethod;

  final List<
    DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedFields
  >?
  excludedFields;

  final List<
    DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingFields
  >?
  identifyingFields;

  final List<
    DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedFields
  >?
  includedFields;

  final DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference
  tableReference;

  Map<String, Object?> encode() => {
    'rows_limit': ?rowsLimit?.toTfJson(),
    'rows_limit_percent': ?rowsLimitPercent?.toTfJson(),
    'sample_method': ?sampleMethod?.toTfJson(),
    if (excludedFields != null)
      'excluded_fields': [for (final e in excludedFields!) e.encode()],
    if (identifyingFields != null)
      'identifying_fields': [for (final e in identifyingFields!) e.encode()],
    if (includedFields != null)
      'included_fields': [for (final e in includedFields!) e.encode()],
    'table_reference': tableReference.encode(),
  };
}

/// `sample_method` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsSampleMethod
    implements TerraformEnum {
  top('TOP'),
  randomStart('RANDOM_START');

  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsSampleMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.excluded_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedFields {
  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedFields({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.identifying_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingFields {
  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingFields({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.included_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedFields {
  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedFields({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.table_reference` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference {
  const DataLossPreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config.cloud_storage_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptions {
  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptions({
    this.bytesLimitPerFile,
    this.bytesLimitPerFilePercent,
    this.fileTypes,
    this.filesLimitPercent,
    this.sampleMethod,
    required this.fileSet,
  });

  final TfArg<num>? bytesLimitPerFile;

  final TfArg<num>? bytesLimitPerFilePercent;

  final List<
    TfArg<
      DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileTypes
    >
  >?
  fileTypes;

  final TfArg<num>? filesLimitPercent;

  final TfArg<
    DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsSampleMethod
  >?
  sampleMethod;

  final DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet
  fileSet;

  Map<String, Object?> encode() => {
    'bytes_limit_per_file': ?bytesLimitPerFile?.toTfJson(),
    'bytes_limit_per_file_percent': ?bytesLimitPerFilePercent?.toTfJson(),
    if (fileTypes != null)
      'file_types': [for (final e in fileTypes!) e.toTfJson()],
    'files_limit_percent': ?filesLimitPercent?.toTfJson(),
    'sample_method': ?sampleMethod?.toTfJson(),
    'file_set': fileSet.encode(),
  };
}

/// `file_types` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileTypes
    implements TerraformEnum {
  binaryFile('BINARY_FILE'),
  textFile('TEXT_FILE'),
  image('IMAGE'),
  word('WORD'),
  pdf('PDF'),
  avro('AVRO'),
  csv('CSV'),
  tsv('TSV'),
  powerpoint('POWERPOINT'),
  excel('EXCEL');

  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `sample_method` — derived from the provider schema description.
enum DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsSampleMethod
    implements TerraformEnum {
  top('TOP'),
  randomStart('RANDOM_START');

  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsSampleMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `url`, `regex_file_set` on the `inspect_job.storage_config.cloud_storage_options.file_set` block of `google_data_loss_prevention_job_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.url(...)`.
sealed class DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet {
  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet();

  /// Sets `url`.
  const factory DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.url(
    TfArg<String> url,
  ) = DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetUrl;

  /// Sets `regex_file_set`.
  const factory DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.regexFileSet(
    DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet
    regexFileSet,
  ) = DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSetChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.url] choice: sets `url`.
final class DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetUrl
    extends
        DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet {
  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetUrl(
    this.url,
  );

  final TfArg<String> url;

  @override
  String get blockKey => 'url';

  @override
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// The [DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.regexFileSet] choice: sets `regex_file_set`.
final class DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSetChoice
    extends
        DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet {
  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSetChoice(
    this.regexFileSet,
  );

  final DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet
  regexFileSet;

  @override
  String get blockKey => 'regex_file_set';

  @override
  Map<String, Object?> encode() => {'regex_file_set': regexFileSet.encode()};
}

/// Typed helper for the `inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet {
  const DataLossPreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet({
    required this.bucketName,
    this.excludeRegex,
    this.includeRegex,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<List<Object?>>? excludeRegex;

  final TfArg<List<Object?>>? includeRegex;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'exclude_regex': ?excludeRegex?.toTfJson(),
    'include_regex': ?includeRegex?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config.datastore_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptions {
  const DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptions({
    required this.kind,
    required this.partitionId,
  });

  final DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind
  kind;

  final DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId
  partitionId;

  Map<String, Object?> encode() => {
    'kind': kind.encode(),
    'partition_id': partitionId.encode(),
  };
}

/// Typed helper for the `inspect_job.storage_config.datastore_options.kind` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind {
  const DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.datastore_options.partition_id` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId {
  const DataLossPreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId({
    this.namespaceId,
    required this.projectId,
  });

  final TfArg<String>? namespaceId;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'namespace_id': ?namespaceId?.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config.hybrid_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptions {
  const DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptions({
    this.description,
    this.labels,
    this.requiredFindingLabelKeys,
    this.tableOptions,
  });

  final TfArg<String>? description;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<Object?>>? requiredFindingLabelKeys;

  final DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions?
  tableOptions;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'required_finding_label_keys': ?requiredFindingLabelKeys?.toTfJson(),
    'table_options': ?tableOptions?.encode(),
  };
}

/// Typed helper for the `inspect_job.storage_config.hybrid_options.table_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions {
  const DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions({
    this.identifyingFields,
  });

  final List<
    DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFields
  >?
  identifyingFields;

  Map<String, Object?> encode() => {
    if (identifyingFields != null)
      'identifying_fields': [for (final e in identifyingFields!) e.encode()],
  };
}

/// Typed helper for the `inspect_job.storage_config.hybrid_options.table_options.identifying_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFields {
  const DataLossPreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFields({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.timespan_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfig {
  const DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfig({
    this.start,
    this.endTime,
    this.timestampField,
  });

  final DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart?
  start;

  final TfArg<String>? endTime;

  final DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField?
  timestampField;

  Map<String, Object?> encode() => {
    ...?start?.encode(),
    'end_time': ?endTime?.toTfJson(),
    'timestamp_field': ?timestampField?.encode(),
  };
}

/// At most one of `start_time`, `enable_auto_population_of_timespan_config` on the `inspect_job.storage_config.timespan_config` block of `google_data_loss_prevention_job_trigger`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.startTime(...)`.
sealed class DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart {
  const DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart();

  /// Sets `start_time`.
  const factory DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart.startTime(
    TfArg<String> startTime,
  ) = DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartTime;

  /// Sets `enable_auto_population_of_timespan_config`.
  const factory DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart.enableAutoPopulationOfTimespanConfig(
    TfArg<bool> enableAutoPopulationOfTimespanConfig,
  ) = DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartEnableAutoPopulationOfTimespanConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart.startTime] choice: sets `start_time`.
final class DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartTime
    extends
        DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart {
  const DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartTime(
    this.startTime,
  );

  final TfArg<String> startTime;

  @override
  String get blockKey => 'start_time';

  @override
  Map<String, Object?> encode() => {'start_time': startTime.toTfJson()};
}

/// The [DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart.enableAutoPopulationOfTimespanConfig] choice: sets `enable_auto_population_of_timespan_config`.
final class DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartEnableAutoPopulationOfTimespanConfig
    extends
        DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStart {
  const DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigStartEnableAutoPopulationOfTimespanConfig(
    this.enableAutoPopulationOfTimespanConfig,
  );

  final TfArg<bool> enableAutoPopulationOfTimespanConfig;

  @override
  String get blockKey => 'enable_auto_population_of_timespan_config';

  @override
  Map<String, Object?> encode() => {
    'enable_auto_population_of_timespan_config':
        enableAutoPopulationOfTimespanConfig.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config.timespan_config.timestamp_field` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField {
  const DataLossPreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `triggers` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTriggers {
  const DataLossPreventionJobTriggerTriggers({this.manual, this.schedule});

  final DataLossPreventionJobTriggerTriggersManual? manual;

  final DataLossPreventionJobTriggerTriggersSchedule? schedule;

  Map<String, Object?> encode() => {
    'manual': ?manual?.encode(),
    'schedule': ?schedule?.encode(),
  };
}

/// Typed helper for the `triggers.manual` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTriggersManual {
  const DataLossPreventionJobTriggerTriggersManual();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `triggers.schedule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTriggersSchedule {
  const DataLossPreventionJobTriggerTriggersSchedule({
    this.recurrencePeriodDuration,
  });

  final TfArg<String>? recurrencePeriodDuration;

  Map<String, Object?> encode() => {
    'recurrence_period_duration': ?recurrencePeriodDuration?.toTfJson(),
  };
}

/// Factory wrapper for `google_data_loss_prevention_job_trigger`.
///
/// A job trigger configuration.
///
/// DLP job trigger — scheduled (or event-driven) inspect jobs.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// Prefer [status] `PAUSED` in examples so apply does not start scans.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionJobTrigger extends Resource {
  static const String tfType = 'google_data_loss_prevention_job_trigger';

  GoogleDataLossPreventionJobTrigger({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? triggerId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<DataLossPreventionJobTriggerStatus>? status,
    required List<DataLossPreventionJobTriggerTriggers> triggers,
    DataLossPreventionJobTriggerInspectJob? inspectJob,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'trigger_id': ?triggerId,
           'display_name': ?displayName,
           'description': ?description,
           'status': ?status,
           'triggers': TfArg.literal([for (final e in triggers) e.encode()]),
           if (inspectJob != null)
             'inspect_job': TfArg.literal(inspectJob.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionJobTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionJobTrigger>`.
  RefTo<GoogleDataLossPreventionJobTrigger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_run_time` attribute.
  TfRef<String> get lastRunTime =>
      TfRef.attribute<String>(this, 'last_run_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../dlp/google_data_loss_prevention_inspect_template.dart'
    show GoogleDataLossPreventionInspectTemplate;
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

  final RefTo<GoogleDataLossPreventionInspectTemplate>? inspectTemplateName;

  final List<DataLossPreventionJobTriggerActions>? actions;

  final DataLossPreventionJobTriggerInspectConfig? inspectConfig;

  final DataLossPreventionJobTriggerStorageConfig storageConfig;

  Map<String, Object?> encode() => {
    'inspect_template_name': ?inspectTemplateName?.encodeAs('name').toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'inspect_config': ?inspectConfig?.encode(),
    'storage_config': storageConfig.encode(),
  };
}

/// Typed helper for the `inspect_job.actions` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerActions {
  const DataLossPreventionJobTriggerActions({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToDataplexCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  final DataLossPreventionJobTriggerDeidentify? deidentify;

  final DataLossPreventionJobTriggerJobNotificationEmails?
  jobNotificationEmails;

  final DataLossPreventionJobTriggerPubSub? pubSub;

  final DataLossPreventionJobTriggerPublishFindingsToDataplexCatalog?
  publishFindingsToDataplexCatalog;

  final DataLossPreventionJobTriggerPublishSummaryToCscc? publishSummaryToCscc;

  final DataLossPreventionJobTriggerPublishToStackdriver? publishToStackdriver;

  final DataLossPreventionJobTriggerSaveFindings? saveFindings;

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
final class DataLossPreventionJobTriggerDeidentify {
  const DataLossPreventionJobTriggerDeidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransform,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  final TfArg<String> cloudStorageOutput;

  final List<TfArg<DataLossPreventionJobTriggerFileTypesToTransform>>?
  fileTypesToTransform;

  final DataLossPreventionJobTriggerTransformationConfig? transformationConfig;

  final DataLossPreventionJobTriggerTransformationDetailsStorageConfig?
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
enum DataLossPreventionJobTriggerFileTypesToTransform implements TerraformEnum {
  image('IMAGE'),
  textFile('TEXT_FILE'),
  csv('CSV'),
  tsv('TSV');

  const DataLossPreventionJobTriggerFileTypesToTransform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.actions.deidentify.transformation_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTransformationConfig {
  const DataLossPreventionJobTriggerTransformationConfig({
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
final class DataLossPreventionJobTriggerTransformationDetailsStorageConfig {
  const DataLossPreventionJobTriggerTransformationDetailsStorageConfig({
    required this.table,
  });

  final DataLossPreventionJobTriggerTable table;

  Map<String, Object?> encode() => {'table': table.encode()};
}

/// Typed helper for the `inspect_job.actions.deidentify.transformation_details_storage_config.table` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerTable {
  const DataLossPreventionJobTriggerTable({
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
final class DataLossPreventionJobTriggerJobNotificationEmails {
  const DataLossPreventionJobTriggerJobNotificationEmails();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.pub_sub` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerPubSub {
  const DataLossPreventionJobTriggerPubSub({required this.topic});

  final RefTo<GooglePubsubTopic> topic;

  Map<String, Object?> encode() => {'topic': topic.encodeAs('id').toTfJson()};
}

/// Typed helper for the `inspect_job.actions.publish_findings_to_dataplex_catalog` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerPublishFindingsToDataplexCatalog {
  const DataLossPreventionJobTriggerPublishFindingsToDataplexCatalog();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.publish_summary_to_cscc` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerPublishSummaryToCscc {
  const DataLossPreventionJobTriggerPublishSummaryToCscc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.publish_to_stackdriver` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerPublishToStackdriver {
  const DataLossPreventionJobTriggerPublishToStackdriver();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.actions.save_findings` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerSaveFindings {
  const DataLossPreventionJobTriggerSaveFindings({required this.outputConfig});

  final DataLossPreventionJobTriggerOutputConfig outputConfig;

  Map<String, Object?> encode() => {'output_config': outputConfig.encode()};
}

/// Typed helper for the `inspect_job.actions.save_findings.output_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerOutputConfig {
  const DataLossPreventionJobTriggerOutputConfig({
    this.outputSchema,
    this.storagePath,
    this.table,
  });

  final TfArg<DataLossPreventionJobTriggerOutputSchema>? outputSchema;

  final DataLossPreventionJobTriggerStoragePath? storagePath;

  final DataLossPreventionJobTriggerTable? table;

  Map<String, Object?> encode() => {
    'output_schema': ?outputSchema?.toTfJson(),
    'storage_path': ?storagePath?.encode(),
    'table': ?table?.encode(),
  };
}

/// `output_schema` — derived from the provider schema description.
enum DataLossPreventionJobTriggerOutputSchema implements TerraformEnum {
  basicColumns('BASIC_COLUMNS'),
  gcsColumns('GCS_COLUMNS'),
  datastoreColumns('DATASTORE_COLUMNS'),
  bigQueryColumns('BIG_QUERY_COLUMNS'),
  allColumns('ALL_COLUMNS');

  const DataLossPreventionJobTriggerOutputSchema(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.actions.save_findings.output_config.storage_path` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerStoragePath {
  const DataLossPreventionJobTriggerStoragePath({required this.path});

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerInspectConfig {
  const DataLossPreventionJobTriggerInspectConfig({
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

  final TfArg<DataLossPreventionJobTriggerMinLikelihood>? minLikelihood;

  final List<DataLossPreventionJobTriggerCustomInfoTypes>? customInfoTypes;

  final List<DataLossPreventionJobTriggerInfoTypes>? infoTypes;

  final DataLossPreventionJobTriggerLimits? limits;

  final List<DataLossPreventionJobTriggerRuleSet>? ruleSet;

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
enum DataLossPreventionJobTriggerMinLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerMinLikelihood(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerCustomInfoTypes {
  const DataLossPreventionJobTriggerCustomInfoTypes({
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

  final TfArg<DataLossPreventionJobTriggerLikelihood>? likelihood;

  final DataLossPreventionJobTriggerDictionary? dictionary;

  final DataLossPreventionJobTriggerInfoType infoType;

  final DataLossPreventionJobTriggerRegex? regex;

  final DataLossPreventionJobTriggerSensitivityScore? sensitivityScore;

  final DataLossPreventionJobTriggerStoredType? storedType;

  final DataLossPreventionJobTriggerSurrogateType? surrogateType;

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
enum DataLossPreventionJobTriggerLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerLikelihood(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerDictionary {
  const DataLossPreventionJobTriggerDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionJobTriggerCloudStoragePath? cloudStoragePath;

  final DataLossPreventionJobTriggerWordList? wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerCloudStoragePath {
  const DataLossPreventionJobTriggerCloudStoragePath({required this.path});

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerWordList {
  const DataLossPreventionJobTriggerWordList({required this.words});

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerInfoType {
  const DataLossPreventionJobTriggerInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerSensitivityScore? sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.sensitivity_score` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerSensitivityScore {
  const DataLossPreventionJobTriggerSensitivityScore({required this.score});

  final TfArg<DataLossPreventionJobTriggerScore> score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionJobTriggerScore implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionJobTriggerScore(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerRegex {
  const DataLossPreventionJobTriggerRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<num>>? groupIndexes;

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerStoredType {
  const DataLossPreventionJobTriggerStoredType({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerSurrogateType {
  const DataLossPreventionJobTriggerSurrogateType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_job.inspect_config.info_types` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerInfoTypes {
  const DataLossPreventionJobTriggerInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionJobTriggerSensitivityScore? sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.limits` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerLimits {
  const DataLossPreventionJobTriggerLimits({
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num>? maxFindingsPerItem;

  final TfArg<num>? maxFindingsPerRequest;

  final List<DataLossPreventionJobTriggerMaxFindingsPerInfoType>?
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
final class DataLossPreventionJobTriggerMaxFindingsPerInfoType {
  const DataLossPreventionJobTriggerMaxFindingsPerInfoType({
    this.maxFindings,
    this.infoType,
  });

  final TfArg<num>? maxFindings;

  final DataLossPreventionJobTriggerInfoType? infoType;

  Map<String, Object?> encode() => {
    'max_findings': ?maxFindings?.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerRuleSet {
  const DataLossPreventionJobTriggerRuleSet({
    this.infoTypes,
    required this.rules,
  });

  final List<DataLossPreventionJobTriggerInfoTypes>? infoTypes;

  final List<DataLossPreventionJobTriggerRules> rules;

  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerRules {
  const DataLossPreventionJobTriggerRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionJobTriggerExclusionRule? exclusionRule;

  final DataLossPreventionJobTriggerHotwordRule? hotwordRule;

  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerExclusionRule {
  const DataLossPreventionJobTriggerExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final TfArg<DataLossPreventionJobTriggerMatchingType> matchingType;

  final DataLossPreventionJobTriggerDictionary? dictionary;

  final DataLossPreventionJobTriggerExcludeByHotword? excludeByHotword;

  final DataLossPreventionJobTriggerExcludeInfoTypes? excludeInfoTypes;

  final DataLossPreventionJobTriggerRegex? regex;

  Map<String, Object?> encode() => {
    'matching_type': matchingType.toTfJson(),
    'dictionary': ?dictionary?.encode(),
    'exclude_by_hotword': ?excludeByHotword?.encode(),
    'exclude_info_types': ?excludeInfoTypes?.encode(),
    'regex': ?regex?.encode(),
  };
}

/// `matching_type` — derived from the provider schema description.
enum DataLossPreventionJobTriggerMatchingType implements TerraformEnum {
  matchingTypeFullMatch('MATCHING_TYPE_FULL_MATCH'),
  matchingTypePartialMatch('MATCHING_TYPE_PARTIAL_MATCH'),
  matchingTypeInverseMatch('MATCHING_TYPE_INVERSE_MATCH');

  const DataLossPreventionJobTriggerMatchingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerExcludeByHotword {
  const DataLossPreventionJobTriggerExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  final DataLossPreventionJobTriggerHotwordRegex? hotwordRegex;

  final DataLossPreventionJobTriggerProximity? proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': ?hotwordRegex?.encode(),
    'proximity': ?proximity?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerHotwordRegex {
  const DataLossPreventionJobTriggerHotwordRegex({
    this.groupIndexes,
    this.pattern,
  });

  final TfArg<List<num>>? groupIndexes;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerProximity {
  const DataLossPreventionJobTriggerProximity({
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
final class DataLossPreventionJobTriggerExcludeInfoTypes {
  const DataLossPreventionJobTriggerExcludeInfoTypes({required this.infoTypes});

  final List<DataLossPreventionJobTriggerInfoTypes> infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerHotwordRule {
  const DataLossPreventionJobTriggerHotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  final DataLossPreventionJobTriggerHotwordRegex? hotwordRegex;

  final DataLossPreventionJobTriggerLikelihoodAdjustment? likelihoodAdjustment;

  final DataLossPreventionJobTriggerProximity? proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': ?hotwordRegex?.encode(),
    'likelihood_adjustment': ?likelihoodAdjustment?.encode(),
    'proximity': ?proximity?.encode(),
  };
}

/// Typed helper for the `inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerLikelihoodAdjustment {
  const DataLossPreventionJobTriggerLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final TfArg<DataLossPreventionJobTriggerFixedLikelihood>? fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
enum DataLossPreventionJobTriggerFixedLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionJobTriggerFixedLikelihood(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.storage_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerStorageConfig {
  const DataLossPreventionJobTriggerStorageConfig({
    this.bigQueryOptions,
    this.cloudStorageOptions,
    this.datastoreOptions,
    this.hybridOptions,
    this.timespanConfig,
  });

  final DataLossPreventionJobTriggerBigQueryOptions? bigQueryOptions;

  final DataLossPreventionJobTriggerCloudStorageOptions? cloudStorageOptions;

  final DataLossPreventionJobTriggerDatastoreOptions? datastoreOptions;

  final DataLossPreventionJobTriggerHybridOptions? hybridOptions;

  final DataLossPreventionJobTriggerTimespanConfig? timespanConfig;

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
final class DataLossPreventionJobTriggerBigQueryOptions {
  const DataLossPreventionJobTriggerBigQueryOptions({
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

  final TfArg<DataLossPreventionJobTriggerSampleMethod>? sampleMethod;

  final List<DataLossPreventionJobTriggerExcludedFields>? excludedFields;

  final List<DataLossPreventionJobTriggerIdentifyingFields>? identifyingFields;

  final List<DataLossPreventionJobTriggerIncludedFields>? includedFields;

  final DataLossPreventionJobTriggerTableReference tableReference;

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
enum DataLossPreventionJobTriggerSampleMethod implements TerraformEnum {
  top('TOP'),
  randomStart('RANDOM_START');

  const DataLossPreventionJobTriggerSampleMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.excluded_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerExcludedFields {
  const DataLossPreventionJobTriggerExcludedFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.identifying_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionJobTriggerIdentifyingFields {
  const DataLossPreventionJobTriggerIdentifyingFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.included_fields` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerIncludedFields {
  const DataLossPreventionJobTriggerIncludedFields({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.big_query_options.table_reference` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTableReference {
  const DataLossPreventionJobTriggerTableReference({
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
final class DataLossPreventionJobTriggerCloudStorageOptions {
  const DataLossPreventionJobTriggerCloudStorageOptions({
    this.bytesLimitPerFile,
    this.bytesLimitPerFilePercent,
    this.fileTypes,
    this.filesLimitPercent,
    this.sampleMethod,
    required this.fileSet,
  });

  final TfArg<num>? bytesLimitPerFile;

  final TfArg<num>? bytesLimitPerFilePercent;

  final List<TfArg<DataLossPreventionJobTriggerFileTypes>>? fileTypes;

  final TfArg<num>? filesLimitPercent;

  final TfArg<DataLossPreventionJobTriggerSampleMethod>? sampleMethod;

  final DataLossPreventionJobTriggerFileSet fileSet;

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
enum DataLossPreventionJobTriggerFileTypes implements TerraformEnum {
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

  const DataLossPreventionJobTriggerFileTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `url`, `regex_file_set` on the `inspect_job.storage_config.cloud_storage_options.file_set` block of `google_data_loss_prevention_job_trigger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.url(...)`.
sealed class DataLossPreventionJobTriggerFileSet {
  const DataLossPreventionJobTriggerFileSet();

  /// Sets `url`.
  const factory DataLossPreventionJobTriggerFileSet.url(TfArg<String> url) =
      DataLossPreventionJobTriggerFileSetUrl;

  /// Sets `regex_file_set`.
  const factory DataLossPreventionJobTriggerFileSet.regexFileSet(
    DataLossPreventionJobTriggerRegexFileSet regexFileSet,
  ) = DataLossPreventionJobTriggerRegexFileSetChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionJobTriggerFileSet.url] choice: sets `url`.
final class DataLossPreventionJobTriggerFileSetUrl
    extends DataLossPreventionJobTriggerFileSet {
  const DataLossPreventionJobTriggerFileSetUrl(this.url);

  final TfArg<String> url;

  @override
  String get blockKey => 'url';

  @override
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// The [DataLossPreventionJobTriggerFileSet.regexFileSet] choice: sets `regex_file_set`.
final class DataLossPreventionJobTriggerRegexFileSetChoice
    extends DataLossPreventionJobTriggerFileSet {
  const DataLossPreventionJobTriggerRegexFileSetChoice(this.regexFileSet);

  final DataLossPreventionJobTriggerRegexFileSet regexFileSet;

  @override
  String get blockKey => 'regex_file_set';

  @override
  Map<String, Object?> encode() => {'regex_file_set': regexFileSet.encode()};
}

/// Typed helper for the `inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerRegexFileSet {
  const DataLossPreventionJobTriggerRegexFileSet({
    required this.bucketName,
    this.excludeRegex,
    this.includeRegex,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<List<String>>? excludeRegex;

  final TfArg<List<String>>? includeRegex;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'exclude_regex': ?excludeRegex?.toTfJson(),
    'include_regex': ?includeRegex?.toTfJson(),
  };
}

/// Typed helper for the `inspect_job.storage_config.datastore_options` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerDatastoreOptions {
  const DataLossPreventionJobTriggerDatastoreOptions({
    required this.kind,
    required this.partitionId,
  });

  final DataLossPreventionJobTriggerKind kind;

  final DataLossPreventionJobTriggerPartitionId partitionId;

  Map<String, Object?> encode() => {
    'kind': kind.encode(),
    'partition_id': partitionId.encode(),
  };
}

/// Typed helper for the `inspect_job.storage_config.datastore_options.kind` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerKind {
  const DataLossPreventionJobTriggerKind({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_job.storage_config.datastore_options.partition_id` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerPartitionId {
  const DataLossPreventionJobTriggerPartitionId({
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
final class DataLossPreventionJobTriggerHybridOptions {
  const DataLossPreventionJobTriggerHybridOptions({
    this.description,
    this.labels,
    this.requiredFindingLabelKeys,
    this.tableOptions,
  });

  final TfArg<String>? description;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<String>>? requiredFindingLabelKeys;

  final DataLossPreventionJobTriggerTableOptions? tableOptions;

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
final class DataLossPreventionJobTriggerTableOptions {
  const DataLossPreventionJobTriggerTableOptions({this.identifyingFields});

  final List<DataLossPreventionJobTriggerIdentifyingFields>? identifyingFields;

  Map<String, Object?> encode() => {
    if (identifyingFields != null)
      'identifying_fields': [for (final e in identifyingFields!) e.encode()],
  };
}

/// Typed helper for the `inspect_job.storage_config.timespan_config` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTimespanConfig {
  const DataLossPreventionJobTriggerTimespanConfig({
    this.start,
    this.endTime,
    this.timestampField,
  });

  final DataLossPreventionJobTriggerStart? start;

  final TfArg<String>? endTime;

  final DataLossPreventionJobTriggerTimestampField? timestampField;

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
sealed class DataLossPreventionJobTriggerStart {
  const DataLossPreventionJobTriggerStart();

  /// Sets `start_time`.
  const factory DataLossPreventionJobTriggerStart.startTime(
    TfArg<String> startTime,
  ) = DataLossPreventionJobTriggerStartTime;

  /// Sets `enable_auto_population_of_timespan_config`.
  const factory DataLossPreventionJobTriggerStart.enableAutoPopulationOfTimespanConfig(
    TfArg<bool> enableAutoPopulationOfTimespanConfig,
  ) = DataLossPreventionJobTriggerStartEnableAutoPopulationOfTimespanConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionJobTriggerStart.startTime] choice: sets `start_time`.
final class DataLossPreventionJobTriggerStartTime
    extends DataLossPreventionJobTriggerStart {
  const DataLossPreventionJobTriggerStartTime(this.startTime);

  final TfArg<String> startTime;

  @override
  String get blockKey => 'start_time';

  @override
  Map<String, Object?> encode() => {'start_time': startTime.toTfJson()};
}

/// The [DataLossPreventionJobTriggerStart.enableAutoPopulationOfTimespanConfig] choice: sets `enable_auto_population_of_timespan_config`.
final class DataLossPreventionJobTriggerStartEnableAutoPopulationOfTimespanConfig
    extends DataLossPreventionJobTriggerStart {
  const DataLossPreventionJobTriggerStartEnableAutoPopulationOfTimespanConfig(
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
final class DataLossPreventionJobTriggerTimestampField {
  const DataLossPreventionJobTriggerTimestampField({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `triggers` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerTriggers {
  const DataLossPreventionJobTriggerTriggers({this.manual, this.schedule});

  final DataLossPreventionJobTriggerManual? manual;

  final DataLossPreventionJobTriggerSchedule? schedule;

  Map<String, Object?> encode() => {
    'manual': ?manual?.encode(),
    'schedule': ?schedule?.encode(),
  };
}

/// Typed helper for the `triggers.manual` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerManual {
  const DataLossPreventionJobTriggerManual();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `triggers.schedule` block of
/// `google_data_loss_prevention_job_trigger` (derived from provider schema).
@immutable
final class DataLossPreventionJobTriggerSchedule {
  const DataLossPreventionJobTriggerSchedule({this.recurrencePeriodDuration});

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

  GoogleDataLossPreventionJobTrigger(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_run_time` attribute.
  TfRef<String> get lastRunTime =>
      TfRef.attribute<String>(this, 'last_run_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `trigger_id` attribute.
  TfRef<String> get triggerId => TfRef.attribute<String>(this, 'trigger_id');
}

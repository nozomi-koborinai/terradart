// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_data_loss_prevention_content_policy`.
const Set<String> _googleDataLossPreventionContentPolicySensitive = <String>{};

/// Typed helper for the `default_action` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyDefaultAction {
  const DataLossPreventionContentPolicyDefaultAction({this.returnVerdict});

  final TfArg<DataLossPreventionContentPolicyDefaultActionReturnVerdict>?
  returnVerdict;

  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
enum DataLossPreventionContentPolicyDefaultActionReturnVerdict
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK');

  const DataLossPreventionContentPolicyDefaultActionReturnVerdict(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `failed_to_scan_supported_file_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyFailedToScanSupportedFileType {
  const DataLossPreventionContentPolicyFailedToScanSupportedFileType({
    this.returnVerdict,
  });

  final TfArg<
    DataLossPreventionContentPolicyFailedToScanSupportedFileTypeReturnVerdict
  >?
  returnVerdict;

  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
enum DataLossPreventionContentPolicyFailedToScanSupportedFileTypeReturnVerdict
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK');

  const DataLossPreventionContentPolicyFailedToScanSupportedFileTypeReturnVerdict(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `input_too_large` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInputTooLarge {
  const DataLossPreventionContentPolicyInputTooLarge({this.returnVerdict});

  final TfArg<DataLossPreventionContentPolicyInputTooLargeReturnVerdict>?
  returnVerdict;

  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInputTooLargeReturnVerdict
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK');

  const DataLossPreventionContentPolicyInputTooLargeReturnVerdict(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfig {
  const DataLossPreventionContentPolicyInspectConfig({
    this.contentOptions,
    this.excludeInfoTypes,
    this.includeQuote,
    this.minLikelihood,
    this.customInfoTypes,
    this.infoTypes,
    this.limits,
    this.minLikelihoodPerInfoType,
    this.ruleSet,
  });

  final List<TfArg<DataLossPreventionContentPolicyInspectConfigContentOptions>>?
  contentOptions;

  final TfArg<bool>? excludeInfoTypes;

  final TfArg<bool>? includeQuote;

  final TfArg<DataLossPreventionContentPolicyInspectConfigMinLikelihood>?
  minLikelihood;

  final List<DataLossPreventionContentPolicyInspectConfigCustomInfoTypes>?
  customInfoTypes;

  final List<DataLossPreventionContentPolicyInspectConfigInfoTypes>? infoTypes;

  final DataLossPreventionContentPolicyInspectConfigLimits? limits;

  final List<
    DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoType
  >?
  minLikelihoodPerInfoType;

  final List<DataLossPreventionContentPolicyInspectConfigRuleSet>? ruleSet;

  Map<String, Object?> encode() => {
    if (contentOptions != null)
      'content_options': [for (final e in contentOptions!) e.toTfJson()],
    'exclude_info_types': ?excludeInfoTypes?.toTfJson(),
    'include_quote': ?includeQuote?.toTfJson(),
    'min_likelihood': ?minLikelihood?.toTfJson(),
    if (customInfoTypes != null)
      'custom_info_types': [for (final e in customInfoTypes!) e.encode()],
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'limits': ?limits?.encode(),
    if (minLikelihoodPerInfoType != null)
      'min_likelihood_per_info_type': [
        for (final e in minLikelihoodPerInfoType!) e.encode(),
      ],
    if (ruleSet != null) 'rule_set': [for (final e in ruleSet!) e.encode()],
  };
}

/// `content_options` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigContentOptions
    implements TerraformEnum {
  contentText('CONTENT_TEXT'),
  contentImage('CONTENT_IMAGE');

  const DataLossPreventionContentPolicyInspectConfigContentOptions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigMinLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionContentPolicyInspectConfigMinLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypes {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypes({
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
    DataLossPreventionContentPolicyInspectConfigCustomInfoTypesLikelihood
  >?
  likelihood;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionary?
  dictionary;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoType
  infoType;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesRegex? regex;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScore?
  sensitivityScore;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesStoredType?
  storedType;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSurrogateType?
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
enum DataLossPreventionContentPolicyInspectConfigCustomInfoTypesLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionary {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryCloudStoragePath {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryWordList {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesDictionaryWordList({
    required this.words,
  });

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoType {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesRegex {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesRegex({
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

/// Typed helper for the `inspect_config.custom_info_types.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesStoredType {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesStoredType({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSurrogateType {
  const DataLossPreventionContentPolicyInspectConfigCustomInfoTypesSurrogateType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_config.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigInfoTypes {
  const DataLossPreventionContentPolicyInspectConfigInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.limits` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigLimits {
  const DataLossPreventionContentPolicyInspectConfigLimits({
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num> maxFindingsPerItem;

  final TfArg<num> maxFindingsPerRequest;

  final List<
    DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType
  >?
  maxFindingsPerInfoType;

  Map<String, Object?> encode() => {
    'max_findings_per_item': maxFindingsPerItem.toTfJson(),
    'max_findings_per_request': maxFindingsPerRequest.toTfJson(),
    if (maxFindingsPerInfoType != null)
      'max_findings_per_info_type': [
        for (final e in maxFindingsPerInfoType!) e.encode(),
      ],
  };
}

/// Typed helper for the `inspect_config.limits.max_findings_per_info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType {
  const DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoType({
    required this.maxFindings,
    this.infoType,
  });

  final TfArg<num> maxFindings;

  final DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'max_findings': maxFindings.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits.max_findings_per_info_type.info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType {
  const DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoType {
  const DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoType({
    required this.minLikelihood,
    this.infoType,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeMinLikelihood
  >
  minLikelihood;

  final DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'min_likelihood': minLikelihood.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeMinLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeMinLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type.info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType {
  const DataLossPreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType({
    required this.name,
    this.version,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `inspect_config.rule_set` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSet {
  const DataLossPreventionContentPolicyInspectConfigRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  final List<DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypes>
  infoTypes;

  final List<DataLossPreventionContentPolicyInspectConfigRuleSetRules> rules;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypes {
  const DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigRuleSetInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRules {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRule?
  exclusionRule;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRule?
  hotwordRule;

  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRule {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleMatchingType
  >
  matchingType;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionary?
  dictionary;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotword?
  excludeByHotword;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes?
  excludeInfoTypes;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleRegex?
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
enum DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleMatchingType
    implements TerraformEnum {
  matchingTypeFullMatch('MATCHING_TYPE_FULL_MATCH'),
  matchingTypePartialMatch('MATCHING_TYPE_PARTIAL_MATCH'),
  matchingTypeInverseMatch('MATCHING_TYPE_INVERSE_MATCH');

  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleMatchingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionary {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryWordList {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleDictionaryWordList({
    required this.words,
  });

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotword {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotword({
    required this.hotwordRegex,
    required this.proximity,
  });

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex
  hotwordRegex;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex({
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

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity({
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

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  final List<
    DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes
  >
  infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleRegex {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesExclusionRuleRegex({
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

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRule {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleHotwordRegex
  hotwordRegex;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment
  likelihoodAdjustment;

  final DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleProximity
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'likelihood_adjustment': likelihoodAdjustment.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleHotwordRegex {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleHotwordRegex({
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

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final TfArg<
    DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
  >?
  fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
enum DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleProximity {
  const DataLossPreventionContentPolicyInspectConfigRuleSetRulesHotwordRuleProximity({
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

/// Typed helper for the `logging_configs` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLoggingConfigs {
  const DataLossPreventionContentPolicyLoggingConfigs({this.logToBigQuery});

  final DataLossPreventionContentPolicyLoggingConfigsLogToBigQuery?
  logToBigQuery;

  Map<String, Object?> encode() => {
    'log_to_big_query': ?logToBigQuery?.encode(),
  };
}

/// Typed helper for the `logging_configs.log_to_big_query` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLoggingConfigsLogToBigQuery {
  const DataLossPreventionContentPolicyLoggingConfigsLogToBigQuery({
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

/// Typed helper for the `rules` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRules {
  const DataLossPreventionContentPolicyRules({
    required this.action,
    this.conditions,
  });

  final DataLossPreventionContentPolicyRulesAction action;

  final List<DataLossPreventionContentPolicyRulesConditions>? conditions;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRulesAction {
  const DataLossPreventionContentPolicyRulesAction({this.returnVerdict});

  final TfArg<DataLossPreventionContentPolicyRulesActionReturnVerdict>?
  returnVerdict;

  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
enum DataLossPreventionContentPolicyRulesActionReturnVerdict
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK');

  const DataLossPreventionContentPolicyRulesActionReturnVerdict(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.conditions` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRulesConditions {
  const DataLossPreventionContentPolicyRulesConditions({
    this.infoTypeCondition,
  });

  final DataLossPreventionContentPolicyRulesConditionsInfoTypeCondition?
  infoTypeCondition;

  Map<String, Object?> encode() => {
    'info_type_condition': ?infoTypeCondition?.encode(),
  };
}

/// Typed helper for the `rules.conditions.info_type_condition` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRulesConditionsInfoTypeCondition {
  const DataLossPreventionContentPolicyRulesConditionsInfoTypeCondition({
    this.minCount,
    this.anyInfoType,
    this.infoTypes,
  });

  final TfArg<num>? minCount;

  final DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionAnyInfoType?
  anyInfoType;

  final DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionInfoTypes?
  infoTypes;

  Map<String, Object?> encode() => {
    'min_count': ?minCount?.toTfJson(),
    'any_info_type': ?anyInfoType?.encode(),
    'info_types': ?infoTypes?.encode(),
  };
}

/// Typed helper for the `rules.conditions.info_type_condition.any_info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionAnyInfoType {
  const DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionAnyInfoType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rules.conditions.info_type_condition.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionInfoTypes {
  const DataLossPreventionContentPolicyRulesConditionsInfoTypeConditionInfoTypes({
    required this.infoTypeNames,
  });

  final TfArg<List<String>> infoTypeNames;

  Map<String, Object?> encode() => {
    'info_type_names': infoTypeNames.toTfJson(),
  };
}

/// Typed helper for the `unsupported_file_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyUnsupportedFileType {
  const DataLossPreventionContentPolicyUnsupportedFileType({
    this.returnVerdict,
  });

  final TfArg<DataLossPreventionContentPolicyUnsupportedFileTypeReturnVerdict>?
  returnVerdict;

  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
enum DataLossPreventionContentPolicyUnsupportedFileTypeReturnVerdict
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK');

  const DataLossPreventionContentPolicyUnsupportedFileTypeReturnVerdict(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_data_loss_prevention_content_policy`.
///
/// A policy to apply to content based on its inspection findings.
final class GoogleDataLossPreventionContentPolicy extends Resource {
  static const String tfType = 'google_data_loss_prevention_content_policy';

  GoogleDataLossPreventionContentPolicy({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? displayName,
    required List<DataLossPreventionContentPolicyRules> rules,
    DataLossPreventionContentPolicyDefaultAction? defaultAction,
    DataLossPreventionContentPolicyInspectConfig? inspectConfig,
    DataLossPreventionContentPolicyInputTooLarge? inputTooLarge,
    DataLossPreventionContentPolicyUnsupportedFileType? unsupportedFileType,
    DataLossPreventionContentPolicyFailedToScanSupportedFileType?
    failedToScanSupportedFileType,
    List<DataLossPreventionContentPolicyLoggingConfigs>? loggingConfigs,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'display_name': ?displayName,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (defaultAction != null)
             'default_action': TfArg.literal(defaultAction.encode()),
           if (inspectConfig != null)
             'inspect_config': TfArg.literal(inspectConfig.encode()),
           if (inputTooLarge != null)
             'input_too_large': TfArg.literal(inputTooLarge.encode()),
           if (unsupportedFileType != null)
             'unsupported_file_type': TfArg.literal(
               unsupportedFileType.encode(),
             ),
           if (failedToScanSupportedFileType != null)
             'failed_to_scan_supported_file_type': TfArg.literal(
               failedToScanSupportedFileType.encode(),
             ),
           if (loggingConfigs != null)
             'logging_configs': TfArg.literal([
               for (final e in loggingConfigs) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionContentPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionContentPolicy>`.
  RefTo<GoogleDataLossPreventionContentPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');
}

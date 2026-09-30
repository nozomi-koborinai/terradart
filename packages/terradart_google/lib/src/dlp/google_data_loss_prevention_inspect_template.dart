// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_inspect_template`.
const Set<String> _googleDataLossPreventionInspectTemplateSensitive =
    <String>{};

/// Typed helper for the `inspect_config` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfig {
  const DataLossPreventionInspectTemplateInspectConfig({
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

  final List<
    TfArg<DataLossPreventionInspectTemplateInspectConfigContentOptions>
  >?
  contentOptions;

  final TfArg<bool>? excludeInfoTypes;

  final TfArg<bool>? includeQuote;

  final TfArg<DataLossPreventionInspectTemplateInspectConfigMinLikelihood>?
  minLikelihood;

  final List<DataLossPreventionInspectTemplateInspectConfigCustomInfoTypes>?
  customInfoTypes;

  final List<DataLossPreventionInspectTemplateInspectConfigInfoTypes>?
  infoTypes;

  final DataLossPreventionInspectTemplateInspectConfigLimits? limits;

  final List<
    DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoType
  >?
  minLikelihoodPerInfoType;

  final List<DataLossPreventionInspectTemplateInspectConfigRuleSet>? ruleSet;

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
enum DataLossPreventionInspectTemplateInspectConfigContentOptions
    implements TerraformEnum {
  contentText('CONTENT_TEXT'),
  contentImage('CONTENT_IMAGE');

  const DataLossPreventionInspectTemplateInspectConfigContentOptions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigMinLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateInspectConfigMinLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypes {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypes({
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
    DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesLikelihood
  >?
  likelihood;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionary?
  dictionary;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoType
  infoType;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesRegex?
  regex;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScore?
  sensitivityScore;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesStoredType?
  storedType;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSurrogateType?
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
enum DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionary {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryCloudStoragePath {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryWordList {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesDictionaryWordList({
    required this.words,
  });

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoType {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesRegex {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesRegex({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesStoredType {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesStoredType({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSurrogateType {
  const DataLossPreventionInspectTemplateInspectConfigCustomInfoTypesSurrogateType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_config.info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigInfoTypes {
  const DataLossPreventionInspectTemplateInspectConfigInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.limits` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigLimits {
  const DataLossPreventionInspectTemplateInspectConfigLimits({
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num> maxFindingsPerItem;

  final TfArg<num> maxFindingsPerRequest;

  final List<
    DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType {
  const DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType({
    required this.maxFindings,
    this.infoType,
  });

  final TfArg<num> maxFindings;

  final DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'max_findings': maxFindings.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits.max_findings_per_info_type.info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType {
  const DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoType {
  const DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoType({
    required this.minLikelihood,
    this.infoType,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeMinLikelihood
  >
  minLikelihood;

  final DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'min_likelihood': minLikelihood.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeMinLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeMinLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type.info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType {
  const DataLossPreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSet {
  const DataLossPreventionInspectTemplateInspectConfigRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  final List<DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypes>
  infoTypes;

  final List<DataLossPreventionInspectTemplateInspectConfigRuleSetRules> rules;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypes {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigRuleSetInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRules {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRule?
  exclusionRule;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRule?
  hotwordRule;

  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRule {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleMatchingType
  >
  matchingType;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionary?
  dictionary;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotword?
  excludeByHotword;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes?
  excludeInfoTypes;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleRegex?
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
enum DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleMatchingType
    implements TerraformEnum {
  matchingTypeFullMatch('MATCHING_TYPE_FULL_MATCH'),
  matchingTypePartialMatch('MATCHING_TYPE_PARTIAL_MATCH'),
  matchingTypeInverseMatch('MATCHING_TYPE_INVERSE_MATCH');

  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleMatchingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionary {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath?
  cloudStoragePath;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryWordList?
  wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryWordList {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleDictionaryWordList({
    required this.words,
  });

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotword {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotword({
    required this.hotwordRegex,
    required this.proximity,
  });

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex
  hotwordRegex;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordHotwordRegex({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeByHotwordProximity({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  final List<
    DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes
  >
  infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleExcludeInfoTypesInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleRegex {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesExclusionRuleRegex({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRule {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleHotwordRegex
  hotwordRegex;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment
  likelihoodAdjustment;

  final DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleProximity
  proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'likelihood_adjustment': likelihoodAdjustment.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleHotwordRegex {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleHotwordRegex({
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
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final TfArg<
    DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
  >?
  fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood
    implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleLikelihoodAdjustmentFixedLikelihood(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleProximity {
  const DataLossPreventionInspectTemplateInspectConfigRuleSetRulesHotwordRuleProximity({
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

/// Factory wrapper for `google_data_loss_prevention_inspect_template`.
///
/// An inspect job template.
///
/// DLP inspect template — reusable configuration for finding sensitive
/// info types in content.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionInspectTemplate extends Resource {
  static const String tfType = 'google_data_loss_prevention_inspect_template';

  GoogleDataLossPreventionInspectTemplate({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? templateId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    DataLossPreventionInspectTemplateInspectConfig? inspectConfig,
    TfArg<bool>? allowLimitedAvailabilityInfoTypes,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'template_id': ?templateId,
           'display_name': ?displayName,
           'description': ?description,
           if (inspectConfig != null)
             'inspect_config': TfArg.literal(inspectConfig.encode()),
           'allow_limited_availability_info_types':
               ?allowLimitedAvailabilityInfoTypes,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionInspectTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionInspectTemplate>`.
  RefTo<GoogleDataLossPreventionInspectTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_limited_availability_info_types` attribute.
  TfRef<bool> get allowLimitedAvailabilityInfoTypesRef =>
      TfRef.attribute<bool>(this, 'allow_limited_availability_info_types');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateIdRef =>
      TfRef.attribute<String>(this, 'template_id');
}

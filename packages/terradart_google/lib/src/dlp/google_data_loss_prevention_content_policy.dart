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

  final DataLossPreventionContentPolicyReturnVerdict? returnVerdict;

  @internal
  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// `return_verdict` — derived from the provider schema description.
extension type const DataLossPreventionContentPolicyReturnVerdict._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyReturnVerdict.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyReturnVerdict.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyReturnVerdict.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = DataLossPreventionContentPolicyReturnVerdict._(
    TfArgLiteral('ALLOW'),
  );
  static const block = DataLossPreventionContentPolicyReturnVerdict._(
    TfArgLiteral('BLOCK'),
  );

  static const List<DataLossPreventionContentPolicyReturnVerdict> values = [
    allow,
    block,
  ];
}

/// Typed helper for the `failed_to_scan_supported_file_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyFailedToScanSupportedFileType {
  const DataLossPreventionContentPolicyFailedToScanSupportedFileType({
    this.returnVerdict,
  });

  final DataLossPreventionContentPolicyReturnVerdict? returnVerdict;

  @internal
  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// Typed helper for the `input_too_large` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInputTooLarge {
  const DataLossPreventionContentPolicyInputTooLarge({this.returnVerdict});

  final DataLossPreventionContentPolicyReturnVerdict? returnVerdict;

  @internal
  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
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

  final List<DataLossPreventionContentPolicyContentOptions>? contentOptions;

  final TfArg<bool>? excludeInfoTypes;

  final TfArg<bool>? includeQuote;

  final DataLossPreventionContentPolicyMinLikelihood? minLikelihood;

  final List<DataLossPreventionContentPolicyCustomInfoTypes>? customInfoTypes;

  final List<DataLossPreventionContentPolicyInfoTypes>? infoTypes;

  final DataLossPreventionContentPolicyLimits? limits;

  final List<DataLossPreventionContentPolicyMinLikelihoodPerInfoType>?
  minLikelihoodPerInfoType;

  final List<DataLossPreventionContentPolicyRuleSet>? ruleSet;

  @internal
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
extension type const DataLossPreventionContentPolicyContentOptions._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyContentOptions.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyContentOptions.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyContentOptions.arg(TfArg<String> arg)
    : this._(arg);

  static const contentText = DataLossPreventionContentPolicyContentOptions._(
    TfArgLiteral('CONTENT_TEXT'),
  );
  static const contentImage = DataLossPreventionContentPolicyContentOptions._(
    TfArgLiteral('CONTENT_IMAGE'),
  );

  static const List<DataLossPreventionContentPolicyContentOptions> values = [
    contentText,
    contentImage,
  ];
}

/// `min_likelihood` — derived from the provider schema description.
extension type const DataLossPreventionContentPolicyMinLikelihood._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyMinLikelihood.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyMinLikelihood.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyMinLikelihood.arg(TfArg<String> arg)
    : this._(arg);

  static const veryUnlikely = DataLossPreventionContentPolicyMinLikelihood._(
    TfArgLiteral('VERY_UNLIKELY'),
  );
  static const unlikely = DataLossPreventionContentPolicyMinLikelihood._(
    TfArgLiteral('UNLIKELY'),
  );
  static const possible = DataLossPreventionContentPolicyMinLikelihood._(
    TfArgLiteral('POSSIBLE'),
  );
  static const likely = DataLossPreventionContentPolicyMinLikelihood._(
    TfArgLiteral('LIKELY'),
  );
  static const veryLikely = DataLossPreventionContentPolicyMinLikelihood._(
    TfArgLiteral('VERY_LIKELY'),
  );

  static const List<DataLossPreventionContentPolicyMinLikelihood> values = [
    veryUnlikely,
    unlikely,
    possible,
    likely,
    veryLikely,
  ];
}

/// Typed helper for the `inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyCustomInfoTypes {
  const DataLossPreventionContentPolicyCustomInfoTypes({
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

  final DataLossPreventionContentPolicyLikelihood? likelihood;

  final DataLossPreventionContentPolicyDictionary? dictionary;

  final DataLossPreventionContentPolicyCustomInfoTypesInfoType infoType;

  final DataLossPreventionContentPolicyRegex? regex;

  final DataLossPreventionContentPolicySensitivityScore? sensitivityScore;

  final DataLossPreventionContentPolicyStoredType? storedType;

  final DataLossPreventionContentPolicySurrogateType? surrogateType;

  @internal
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
extension type const DataLossPreventionContentPolicyLikelihood._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyLikelihood.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyLikelihood.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyLikelihood.arg(TfArg<String> arg)
    : this._(arg);

  static const veryUnlikely = DataLossPreventionContentPolicyLikelihood._(
    TfArgLiteral('VERY_UNLIKELY'),
  );
  static const unlikely = DataLossPreventionContentPolicyLikelihood._(
    TfArgLiteral('UNLIKELY'),
  );
  static const possible = DataLossPreventionContentPolicyLikelihood._(
    TfArgLiteral('POSSIBLE'),
  );
  static const likely = DataLossPreventionContentPolicyLikelihood._(
    TfArgLiteral('LIKELY'),
  );
  static const veryLikely = DataLossPreventionContentPolicyLikelihood._(
    TfArgLiteral('VERY_LIKELY'),
  );

  static const List<DataLossPreventionContentPolicyLikelihood> values = [
    veryUnlikely,
    unlikely,
    possible,
    likely,
    veryLikely,
  ];
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyDictionary {
  const DataLossPreventionContentPolicyDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionContentPolicyCloudStoragePath? cloudStoragePath;

  final DataLossPreventionContentPolicyWordList? wordList;

  @internal
  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyCloudStoragePath {
  const DataLossPreventionContentPolicyCloudStoragePath({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyWordList {
  const DataLossPreventionContentPolicyWordList({required this.words});

  final TfArg<List<String>> words;

  @internal
  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyCustomInfoTypesInfoType {
  const DataLossPreventionContentPolicyCustomInfoTypesInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicySensitivityScore? sensitivityScore;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.sensitivity_score` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicySensitivityScore {
  const DataLossPreventionContentPolicySensitivityScore({required this.score});

  final DataLossPreventionContentPolicyScore score;

  @internal
  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
extension type const DataLossPreventionContentPolicyScore._(TfArg<String> _)
    implements TfArg<String> {
  DataLossPreventionContentPolicyScore.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyScore.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyScore.arg(TfArg<String> arg)
    : this._(arg);

  static const sensitivityLow = DataLossPreventionContentPolicyScore._(
    TfArgLiteral('SENSITIVITY_LOW'),
  );
  static const sensitivityModerate = DataLossPreventionContentPolicyScore._(
    TfArgLiteral('SENSITIVITY_MODERATE'),
  );
  static const sensitivityHigh = DataLossPreventionContentPolicyScore._(
    TfArgLiteral('SENSITIVITY_HIGH'),
  );

  static const List<DataLossPreventionContentPolicyScore> values = [
    sensitivityLow,
    sensitivityModerate,
    sensitivityHigh,
  ];
}

/// Typed helper for the `inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyRegex {
  const DataLossPreventionContentPolicyRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<num>>? groupIndexes;

  final TfArg<String> pattern;

  @internal
  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyStoredType {
  const DataLossPreventionContentPolicyStoredType({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicySurrogateType {
  const DataLossPreventionContentPolicySurrogateType();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_config.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyInfoTypes {
  const DataLossPreventionContentPolicyInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionContentPolicySensitivityScore? sensitivityScore;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLimits {
  const DataLossPreventionContentPolicyLimits({
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num> maxFindingsPerItem;

  final TfArg<num> maxFindingsPerRequest;

  final List<DataLossPreventionContentPolicyMaxFindingsPerInfoType>?
  maxFindingsPerInfoType;

  @internal
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
final class DataLossPreventionContentPolicyMaxFindingsPerInfoType {
  const DataLossPreventionContentPolicyMaxFindingsPerInfoType({
    required this.maxFindings,
    this.infoType,
  });

  final TfArg<num> maxFindings;

  final DataLossPreventionContentPolicyCustomInfoTypesInfoType? infoType;

  @internal
  Map<String, Object?> encode() => {
    'max_findings': maxFindings.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyMinLikelihoodPerInfoType {
  const DataLossPreventionContentPolicyMinLikelihoodPerInfoType({
    required this.minLikelihood,
    this.infoType,
  });

  final DataLossPreventionContentPolicyMinLikelihood minLikelihood;

  final DataLossPreventionContentPolicyMinLikelihoodPerInfoTypeInfoType?
  infoType;

  @internal
  Map<String, Object?> encode() => {
    'min_likelihood': minLikelihood.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type.info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyMinLikelihoodPerInfoTypeInfoType {
  const DataLossPreventionContentPolicyMinLikelihoodPerInfoTypeInfoType({
    required this.name,
    this.version,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `inspect_config.rule_set` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRuleSet {
  const DataLossPreventionContentPolicyRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  final List<DataLossPreventionContentPolicyInfoTypes> infoTypes;

  final List<DataLossPreventionContentPolicyRuleSetRules> rules;

  @internal
  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyRuleSetRules {
  const DataLossPreventionContentPolicyRuleSetRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionContentPolicyExclusionRule? exclusionRule;

  final DataLossPreventionContentPolicyHotwordRule? hotwordRule;

  @internal
  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyExclusionRule {
  const DataLossPreventionContentPolicyExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final DataLossPreventionContentPolicyMatchingType matchingType;

  final DataLossPreventionContentPolicyDictionary? dictionary;

  final DataLossPreventionContentPolicyExcludeByHotword? excludeByHotword;

  final DataLossPreventionContentPolicyExcludeInfoTypes? excludeInfoTypes;

  final DataLossPreventionContentPolicyRegex? regex;

  @internal
  Map<String, Object?> encode() => {
    'matching_type': matchingType.toTfJson(),
    'dictionary': ?dictionary?.encode(),
    'exclude_by_hotword': ?excludeByHotword?.encode(),
    'exclude_info_types': ?excludeInfoTypes?.encode(),
    'regex': ?regex?.encode(),
  };
}

/// `matching_type` — derived from the provider schema description.
extension type const DataLossPreventionContentPolicyMatchingType._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyMatchingType.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyMatchingType.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyMatchingType.arg(TfArg<String> arg)
    : this._(arg);

  static const matchingTypeFullMatch =
      DataLossPreventionContentPolicyMatchingType._(
        TfArgLiteral('MATCHING_TYPE_FULL_MATCH'),
      );
  static const matchingTypePartialMatch =
      DataLossPreventionContentPolicyMatchingType._(
        TfArgLiteral('MATCHING_TYPE_PARTIAL_MATCH'),
      );
  static const matchingTypeInverseMatch =
      DataLossPreventionContentPolicyMatchingType._(
        TfArgLiteral('MATCHING_TYPE_INVERSE_MATCH'),
      );

  static const List<DataLossPreventionContentPolicyMatchingType> values = [
    matchingTypeFullMatch,
    matchingTypePartialMatch,
    matchingTypeInverseMatch,
  ];
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyExcludeByHotword {
  const DataLossPreventionContentPolicyExcludeByHotword({
    required this.hotwordRegex,
    required this.proximity,
  });

  final DataLossPreventionContentPolicyHotwordRegex hotwordRegex;

  final DataLossPreventionContentPolicyProximity proximity;

  @internal
  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyHotwordRegex {
  const DataLossPreventionContentPolicyHotwordRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<num>>? groupIndexes;

  final TfArg<String> pattern;

  @internal
  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionContentPolicyProximity {
  const DataLossPreventionContentPolicyProximity({
    this.windowAfter,
    this.windowBefore,
  });

  final TfArg<num>? windowAfter;

  final TfArg<num>? windowBefore;

  @internal
  Map<String, Object?> encode() => {
    'window_after': ?windowAfter?.toTfJson(),
    'window_before': ?windowBefore?.toTfJson(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyExcludeInfoTypes {
  const DataLossPreventionContentPolicyExcludeInfoTypes({
    required this.infoTypes,
  });

  final List<DataLossPreventionContentPolicyInfoTypes> infoTypes;

  @internal
  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyHotwordRule {
  const DataLossPreventionContentPolicyHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  final DataLossPreventionContentPolicyHotwordRegex hotwordRegex;

  final DataLossPreventionContentPolicyLikelihoodAdjustment
  likelihoodAdjustment;

  final DataLossPreventionContentPolicyProximity proximity;

  @internal
  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'likelihood_adjustment': likelihoodAdjustment.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLikelihoodAdjustment {
  const DataLossPreventionContentPolicyLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final DataLossPreventionContentPolicyFixedLikelihood? fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  @internal
  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
extension type const DataLossPreventionContentPolicyFixedLikelihood._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionContentPolicyFixedLikelihood.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionContentPolicyFixedLikelihood.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionContentPolicyFixedLikelihood.arg(TfArg<String> arg)
    : this._(arg);

  static const veryUnlikely = DataLossPreventionContentPolicyFixedLikelihood._(
    TfArgLiteral('VERY_UNLIKELY'),
  );
  static const unlikely = DataLossPreventionContentPolicyFixedLikelihood._(
    TfArgLiteral('UNLIKELY'),
  );
  static const possible = DataLossPreventionContentPolicyFixedLikelihood._(
    TfArgLiteral('POSSIBLE'),
  );
  static const likely = DataLossPreventionContentPolicyFixedLikelihood._(
    TfArgLiteral('LIKELY'),
  );
  static const veryLikely = DataLossPreventionContentPolicyFixedLikelihood._(
    TfArgLiteral('VERY_LIKELY'),
  );

  static const List<DataLossPreventionContentPolicyFixedLikelihood> values = [
    veryUnlikely,
    unlikely,
    possible,
    likely,
    veryLikely,
  ];
}

/// Typed helper for the `logging_configs` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLoggingConfigs {
  const DataLossPreventionContentPolicyLoggingConfigs({this.logToBigQuery});

  final DataLossPreventionContentPolicyLogToBigQuery? logToBigQuery;

  @internal
  Map<String, Object?> encode() => {
    'log_to_big_query': ?logToBigQuery?.encode(),
  };
}

/// Typed helper for the `logging_configs.log_to_big_query` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyLogToBigQuery {
  const DataLossPreventionContentPolicyLogToBigQuery({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  @internal
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

  final DataLossPreventionContentPolicyAction action;

  final List<DataLossPreventionContentPolicyConditions>? conditions;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyAction {
  const DataLossPreventionContentPolicyAction({this.returnVerdict});

  final DataLossPreventionContentPolicyReturnVerdict? returnVerdict;

  @internal
  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// Typed helper for the `rules.conditions` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyConditions {
  const DataLossPreventionContentPolicyConditions({this.infoTypeCondition});

  final DataLossPreventionContentPolicyInfoTypeCondition? infoTypeCondition;

  @internal
  Map<String, Object?> encode() => {
    'info_type_condition': ?infoTypeCondition?.encode(),
  };
}

/// Typed helper for the `rules.conditions.info_type_condition` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInfoTypeCondition {
  const DataLossPreventionContentPolicyInfoTypeCondition({
    this.minCount,
    this.anyInfoType,
    this.infoTypes,
  });

  final TfArg<num>? minCount;

  final DataLossPreventionContentPolicyAnyInfoType? anyInfoType;

  final DataLossPreventionContentPolicyInfoTypeConditionInfoTypes? infoTypes;

  @internal
  Map<String, Object?> encode() => {
    'min_count': ?minCount?.toTfJson(),
    'any_info_type': ?anyInfoType?.encode(),
    'info_types': ?infoTypes?.encode(),
  };
}

/// Typed helper for the `rules.conditions.info_type_condition.any_info_type` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyAnyInfoType {
  const DataLossPreventionContentPolicyAnyInfoType();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rules.conditions.info_type_condition.info_types` block of
/// `google_data_loss_prevention_content_policy` (derived from provider schema).
@immutable
final class DataLossPreventionContentPolicyInfoTypeConditionInfoTypes {
  const DataLossPreventionContentPolicyInfoTypeConditionInfoTypes({
    required this.infoTypeNames,
  });

  final TfArg<List<String>> infoTypeNames;

  @internal
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

  final DataLossPreventionContentPolicyReturnVerdict? returnVerdict;

  @internal
  Map<String, Object?> encode() => {
    'return_verdict': ?returnVerdict?.toTfJson(),
  };
}

/// Factory wrapper for `google_data_loss_prevention_content_policy`.
///
/// A policy to apply to content based on its inspection findings.
final class GoogleDataLossPreventionContentPolicy extends Resource {
  static const String tfType = 'google_data_loss_prevention_content_policy';

  GoogleDataLossPreventionContentPolicy(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}

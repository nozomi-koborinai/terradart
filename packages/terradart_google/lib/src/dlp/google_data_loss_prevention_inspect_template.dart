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

  final List<TfArg<DataLossPreventionInspectTemplateContentOptions>>?
  contentOptions;

  final TfArg<bool>? excludeInfoTypes;

  final TfArg<bool>? includeQuote;

  final TfArg<DataLossPreventionInspectTemplateMinLikelihood>? minLikelihood;

  final List<DataLossPreventionInspectTemplateCustomInfoTypes>? customInfoTypes;

  final List<DataLossPreventionInspectTemplateInfoTypes>? infoTypes;

  final DataLossPreventionInspectTemplateLimits? limits;

  final List<DataLossPreventionInspectTemplateMinLikelihoodPerInfoType>?
  minLikelihoodPerInfoType;

  final List<DataLossPreventionInspectTemplateRuleSet>? ruleSet;

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
enum DataLossPreventionInspectTemplateContentOptions implements TerraformEnum {
  contentText('CONTENT_TEXT'),
  contentImage('CONTENT_IMAGE');

  const DataLossPreventionInspectTemplateContentOptions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `min_likelihood` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateMinLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateMinLikelihood(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateCustomInfoTypes {
  const DataLossPreventionInspectTemplateCustomInfoTypes({
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

  final TfArg<DataLossPreventionInspectTemplateLikelihood>? likelihood;

  final DataLossPreventionInspectTemplateDictionary? dictionary;

  final DataLossPreventionInspectTemplateCustomInfoTypesInfoType infoType;

  final DataLossPreventionInspectTemplateRegex? regex;

  final DataLossPreventionInspectTemplateSensitivityScore? sensitivityScore;

  final DataLossPreventionInspectTemplateStoredType? storedType;

  final DataLossPreventionInspectTemplateSurrogateType? surrogateType;

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
enum DataLossPreventionInspectTemplateLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateLikelihood(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateDictionary {
  const DataLossPreventionInspectTemplateDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  final DataLossPreventionInspectTemplateCloudStoragePath? cloudStoragePath;

  final DataLossPreventionInspectTemplateWordList? wordList;

  Map<String, Object?> encode() => {
    'cloud_storage_path': ?cloudStoragePath?.encode(),
    'word_list': ?wordList?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateCloudStoragePath {
  const DataLossPreventionInspectTemplateCloudStoragePath({required this.path});

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.dictionary.word_list` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateWordList {
  const DataLossPreventionInspectTemplateWordList({required this.words});

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateCustomInfoTypesInfoType {
  const DataLossPreventionInspectTemplateCustomInfoTypesInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateSensitivityScore? sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.custom_info_types.sensitivity_score` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateSensitivityScore {
  const DataLossPreventionInspectTemplateSensitivityScore({
    required this.score,
  });

  final TfArg<DataLossPreventionInspectTemplateScore> score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateScore implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionInspectTemplateScore(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.custom_info_types.regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateRegex {
  const DataLossPreventionInspectTemplateRegex({
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

/// Typed helper for the `inspect_config.custom_info_types.stored_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateStoredType {
  const DataLossPreventionInspectTemplateStoredType({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `inspect_config.custom_info_types.surrogate_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateSurrogateType {
  const DataLossPreventionInspectTemplateSurrogateType();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `inspect_config.info_types` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateInfoTypes {
  const DataLossPreventionInspectTemplateInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionInspectTemplateSensitivityScore? sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `inspect_config.limits` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateLimits {
  const DataLossPreventionInspectTemplateLimits({
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
    this.maxFindingsPerInfoType,
  });

  final TfArg<num> maxFindingsPerItem;

  final TfArg<num> maxFindingsPerRequest;

  final List<DataLossPreventionInspectTemplateMaxFindingsPerInfoType>?
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
final class DataLossPreventionInspectTemplateMaxFindingsPerInfoType {
  const DataLossPreventionInspectTemplateMaxFindingsPerInfoType({
    required this.maxFindings,
    this.infoType,
  });

  final TfArg<num> maxFindings;

  final DataLossPreventionInspectTemplateCustomInfoTypesInfoType? infoType;

  Map<String, Object?> encode() => {
    'max_findings': maxFindings.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateMinLikelihoodPerInfoType {
  const DataLossPreventionInspectTemplateMinLikelihoodPerInfoType({
    required this.minLikelihood,
    this.infoType,
  });

  final TfArg<DataLossPreventionInspectTemplateMinLikelihood> minLikelihood;

  final DataLossPreventionInspectTemplateMinLikelihoodPerInfoTypeInfoType?
  infoType;

  Map<String, Object?> encode() => {
    'min_likelihood': minLikelihood.toTfJson(),
    'info_type': ?infoType?.encode(),
  };
}

/// Typed helper for the `inspect_config.min_likelihood_per_info_type.info_type` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateMinLikelihoodPerInfoTypeInfoType {
  const DataLossPreventionInspectTemplateMinLikelihoodPerInfoTypeInfoType({
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
final class DataLossPreventionInspectTemplateRuleSet {
  const DataLossPreventionInspectTemplateRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  final List<DataLossPreventionInspectTemplateInfoTypes> infoTypes;

  final List<DataLossPreventionInspectTemplateRules> rules;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateRules {
  const DataLossPreventionInspectTemplateRules({
    this.exclusionRule,
    this.hotwordRule,
  });

  final DataLossPreventionInspectTemplateExclusionRule? exclusionRule;

  final DataLossPreventionInspectTemplateHotwordRule? hotwordRule;

  Map<String, Object?> encode() => {
    'exclusion_rule': ?exclusionRule?.encode(),
    'hotword_rule': ?hotwordRule?.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateExclusionRule {
  const DataLossPreventionInspectTemplateExclusionRule({
    required this.matchingType,
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.regex,
  });

  final TfArg<DataLossPreventionInspectTemplateMatchingType> matchingType;

  final DataLossPreventionInspectTemplateDictionary? dictionary;

  final DataLossPreventionInspectTemplateExcludeByHotword? excludeByHotword;

  final DataLossPreventionInspectTemplateExcludeInfoTypes? excludeInfoTypes;

  final DataLossPreventionInspectTemplateRegex? regex;

  Map<String, Object?> encode() => {
    'matching_type': matchingType.toTfJson(),
    'dictionary': ?dictionary?.encode(),
    'exclude_by_hotword': ?excludeByHotword?.encode(),
    'exclude_info_types': ?excludeInfoTypes?.encode(),
    'regex': ?regex?.encode(),
  };
}

/// `matching_type` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateMatchingType implements TerraformEnum {
  matchingTypeFullMatch('MATCHING_TYPE_FULL_MATCH'),
  matchingTypePartialMatch('MATCHING_TYPE_PARTIAL_MATCH'),
  matchingTypeInverseMatch('MATCHING_TYPE_INVERSE_MATCH');

  const DataLossPreventionInspectTemplateMatchingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateExcludeByHotword {
  const DataLossPreventionInspectTemplateExcludeByHotword({
    required this.hotwordRegex,
    required this.proximity,
  });

  final DataLossPreventionInspectTemplateHotwordRegex hotwordRegex;

  final DataLossPreventionInspectTemplateProximity proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.hotword_regex` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateHotwordRegex {
  const DataLossPreventionInspectTemplateHotwordRegex({
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

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.proximity` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionInspectTemplateProximity {
  const DataLossPreventionInspectTemplateProximity({
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
final class DataLossPreventionInspectTemplateExcludeInfoTypes {
  const DataLossPreventionInspectTemplateExcludeInfoTypes({
    required this.infoTypes,
  });

  final List<DataLossPreventionInspectTemplateInfoTypes> infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateHotwordRule {
  const DataLossPreventionInspectTemplateHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  final DataLossPreventionInspectTemplateHotwordRegex hotwordRegex;

  final DataLossPreventionInspectTemplateLikelihoodAdjustment
  likelihoodAdjustment;

  final DataLossPreventionInspectTemplateProximity proximity;

  Map<String, Object?> encode() => {
    'hotword_regex': hotwordRegex.encode(),
    'likelihood_adjustment': likelihoodAdjustment.encode(),
    'proximity': proximity.encode(),
  };
}

/// Typed helper for the `inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment` block of
/// `google_data_loss_prevention_inspect_template` (derived from provider schema).
@immutable
final class DataLossPreventionInspectTemplateLikelihoodAdjustment {
  const DataLossPreventionInspectTemplateLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  final TfArg<DataLossPreventionInspectTemplateFixedLikelihood>?
  fixedLikelihood;

  final TfArg<num>? relativeLikelihood;

  Map<String, Object?> encode() => {
    'fixed_likelihood': ?fixedLikelihood?.toTfJson(),
    'relative_likelihood': ?relativeLikelihood?.toTfJson(),
  };
}

/// `fixed_likelihood` — derived from the provider schema description.
enum DataLossPreventionInspectTemplateFixedLikelihood implements TerraformEnum {
  veryUnlikely('VERY_UNLIKELY'),
  unlikely('UNLIKELY'),
  possible('POSSIBLE'),
  likely('LIKELY'),
  veryLikely('VERY_LIKELY');

  const DataLossPreventionInspectTemplateFixedLikelihood(this.terraformValue);
  @override
  final String terraformValue;
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_limited_availability_info_types` attribute.
  TfRef<bool> get allowLimitedAvailabilityInfoTypes =>
      TfRef.attribute<bool>(this, 'allow_limited_availability_info_types');

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

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');
}

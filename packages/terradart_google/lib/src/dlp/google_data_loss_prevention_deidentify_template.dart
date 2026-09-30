// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_data_loss_prevention_deidentify_template`.
const Set<String>
_googleDataLossPreventionDeidentifyTemplateSensitive = <String>{
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped.key',
};

/// Exactly one of `info_type_transformations`, `record_transformations`, `image_transformations` on the `deidentify_config` block of `google_data_loss_prevention_deidentify_template`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.infoTypeTransformations(...)`.
sealed class DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfig();

  /// Sets `info_type_transformations`.
  const factory DataLossPreventionDeidentifyTemplateDeidentifyConfig.infoTypeTransformations(
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations
    infoTypeTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsChoice;

  /// Sets `record_transformations`.
  const factory DataLossPreventionDeidentifyTemplateDeidentifyConfig.recordTransformations(
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations
    recordTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsChoice;

  /// Sets `image_transformations`.
  const factory DataLossPreventionDeidentifyTemplateDeidentifyConfig.imageTransformations(
    DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations
    imageTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.infoTypeTransformations] choice: sets `info_type_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsChoice
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsChoice(
    this.infoTypeTransformations,
  );

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations
  infoTypeTransformations;

  @override
  String get blockKey => 'info_type_transformations';

  @override
  Map<String, Object?> encode() => {
    'info_type_transformations': infoTypeTransformations.encode(),
  };
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.recordTransformations] choice: sets `record_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsChoice
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsChoice(
    this.recordTransformations,
  );

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations
  recordTransformations;

  @override
  String get blockKey => 'record_transformations';

  @override
  Map<String, Object?> encode() => {
    'record_transformations': recordTransformations.encode(),
  };
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.imageTransformations] choice: sets `image_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsChoice
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsChoice(
    this.imageTransformations,
  );

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations
  imageTransformations;

  @override
  String get blockKey => 'image_transformations';

  @override
  Map<String, Object?> encode() => {
    'image_transformations': imageTransformations.encode(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations({
    required this.transforms,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransforms
  >
  transforms;

  Map<String, Object?> encode() => {
    'transforms': [for (final e in transforms) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransforms {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransforms({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllInfoTypes?
  allInfoTypes;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllText?
  allText;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsRedactionColor?
  redactionColor;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypes?
  selectedInfoTypes;

  Map<String, Object?> encode() => {
    'all_info_types': ?allInfoTypes?.encode(),
    'all_text': ?allText?.encode(),
    'redaction_color': ?redactionColor?.encode(),
    'selected_info_types': ?selectedInfoTypes?.encode(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.all_info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllInfoTypes {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllInfoTypes();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.all_text` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllText {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsAllText();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.redaction_color` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsRedactionColor {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsRedactionColor({
    this.blue,
    this.green,
    this.red,
  });

  final TfArg<num>? blue;

  final TfArg<num>? green;

  final TfArg<num>? red;

  Map<String, Object?> encode() => {
    'blue': ?blue?.toTfJson(),
    'green': ?green?.toTfJson(),
    'red': ?red?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.selected_info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypes {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypes({
    required this.infoTypes,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypes
  >
  infoTypes;

  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.selected_info_types.info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypes {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.selected_info_types.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformsSelectedInfoTypesInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations({
    required this.transformations,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformations
  >
  transformations;

  Map<String, Object?> encode() => {
    'transformations': [for (final e in transformations) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformations({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypes
  >?
  infoTypes;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformation
  primitiveTransformation;

  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'primitive_transformation': primitiveTransformation.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypes {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformation({
    this.replaceWithInfoTypeConfig,
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.timePartConfig,
  });

  final TfArg<bool>? replaceWithInfoTypeConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig?
  cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig?
  redactConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig?
  timePartConfig;

  Map<String, Object?> encode() => {
    'replace_with_info_type_config': ?replaceWithInfoTypeConfig?.toTfJson(),
    'bucketing_config': ?bucketingConfig?.encode(),
    'character_mask_config': ?characterMaskConfig?.encode(),
    'crypto_deterministic_config': ?cryptoDeterministicConfig?.encode(),
    'crypto_hash_config': ?cryptoHashConfig?.encode(),
    'crypto_replace_ffx_fpe_config': ?cryptoReplaceFfxFpeConfig?.encode(),
    'date_shift_config': ?dateShiftConfig?.encode(),
    'fixed_size_bucketing_config': ?fixedSizeBucketingConfig?.encode(),
    'redact_config': ?redactConfig?.encode(),
    'replace_config': ?replaceConfig?.encode(),
    'replace_dictionary_config': ?replaceDictionaryConfig?.encode(),
    'time_part_config': ?timePartConfig?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig({
    this.buckets,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets
  >?
  buckets;

  Map<String, Object?> encode() => {
    if (buckets != null) 'buckets': [for (final e in buckets!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets({
    this.max,
    this.min,
    required this.replacementValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax?
  max;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin?
  min;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue
  replacementValue;

  Map<String, Object?> encode() => {
    'max': ?max?.encode(),
    'min': ?min?.encode(),
    'replacement_value': replacementValue.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig({
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
    this.charactersToIgnore,
  });

  final TfArg<String>? maskingCharacter;

  final TfArg<num>? numberToMask;

  final TfArg<bool>? reverseOrder;

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore
  >?
  charactersToIgnore;

  Map<String, Object?> encode() => {
    'masking_character': ?maskingCharacter?.toTfJson(),
    'number_to_mask': ?numberToMask?.toTfJson(),
    'reverse_order': ?reverseOrder?.toTfJson(),
    if (charactersToIgnore != null)
      'characters_to_ignore': [for (final e in charactersToIgnore!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  final TfArg<String>? charactersToSkip;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
  >?
  commonCharactersToIgnore;

  Map<String, Object?> encode() => {
    'characters_to_skip': ?charactersToSkip?.toTfJson(),
    'common_characters_to_ignore': ?commonCharactersToIgnore?.toTfJson(),
  };
}

/// `common_characters_to_ignore` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
    implements TerraformEnum {
  numeric('NUMERIC'),
  alphaUpperCase('ALPHA_UPPER_CASE'),
  alphaLowerCase('ALPHA_LOWER_CASE'),
  punctuation('PUNCTUATION'),
  whitespace('WHITESPACE');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig({
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey?
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType?
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType({
    this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String>? name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig({
    this.cryptoKey,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey?
  cryptoKey;

  Map<String, Object?> encode() => {'crypto_key': ?cryptoKey?.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.customAlphabet,
    this.radix,
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
  >?
  commonAlphabet;

  final TfArg<String>? customAlphabet;

  final TfArg<num>? radix;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey?
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType?
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'common_alphabet': ?commonAlphabet?.toTfJson(),
    'custom_alphabet': ?customAlphabet?.toTfJson(),
    'radix': ?radix?.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// `common_alphabet` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
    implements TerraformEnum {
  ffxCommonNativeAlphabetUnspecified('FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED'),
  numeric('NUMERIC'),
  hexadecimal('HEXADECIMAL'),
  upperCaseAlphaNumeric('UPPER_CASE_ALPHA_NUMERIC'),
  alphaNumeric('ALPHA_NUMERIC');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType({
    this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String>? name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig({
    required this.lowerBoundDays,
    required this.upperBoundDays,
    this.context,
    this.cryptoKey,
  });

  final TfArg<num> lowerBoundDays;

  final TfArg<num> upperBoundDays;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey?
  cryptoKey;

  Map<String, Object?> encode() => {
    'lower_bound_days': lowerBoundDays.toTfJson(),
    'upper_bound_days': upperBoundDays.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  final TfArg<num> bucketSize;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound
  lowerBound;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound
  upperBound;

  Map<String, Object?> encode() => {
    'bucket_size': bucketSize.toTfJson(),
    'lower_bound': lowerBound.encode(),
    'upper_bound': upperBound.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.redact_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig({
    required this.newValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue
  newValue;

  Map<String, Object?> encode() => {'new_value': newValue.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<num>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig({
    required this.wordList,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList
  wordList;

  Map<String, Object?> encode() => {'word_list': wordList.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config.word_list` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList({
    required this.words,
  });

  final TfArg<List<Object?>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.time_part_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig({
    this.partToExtract,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract
  >?
  partToExtract;

  Map<String, Object?> encode() => {
    'part_to_extract': ?partToExtract?.toTfJson(),
  };
}

/// `part_to_extract` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract
    implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  dayOfMonth('DAY_OF_MONTH'),
  dayOfWeek('DAY_OF_WEEK'),
  weekOfYear('WEEK_OF_YEAR'),
  hourOfDay('HOUR_OF_DAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformations
  >?
  fieldTransformations;

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressions
  >?
  recordSuppressions;

  Map<String, Object?> encode() => {
    if (fieldTransformations != null)
      'field_transformations': [
        for (final e in fieldTransformations!) e.encode(),
      ],
    if (recordSuppressions != null)
      'record_suppressions': [for (final e in recordSuppressions!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformations({
    this.condition,
    required this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsCondition?
  condition;

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsFields
  >
  fields;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformations?
  infoTypeTransformations;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformation?
  primitiveTransformation;

  Map<String, Object?> encode() => {
    'condition': ?condition?.encode(),
    'fields': [for (final e in fields) e.encode()],
    'info_type_transformations': ?infoTypeTransformations?.encode(),
    'primitive_transformation': ?primitiveTransformation?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsCondition {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsCondition({
    this.expressions,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressions?
  expressions;

  Map<String, Object?> encode() => {'expressions': ?expressions?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressions({
    this.logicalOperator,
    this.conditions,
  });

  final TfArg<String>? logicalOperator;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditions?
  conditions;

  Map<String, Object?> encode() => {
    'logical_operator': ?logicalOperator?.toTfJson(),
    'conditions': ?conditions?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditions({
    this.conditions,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditions
  >?
  conditions;

  Map<String, Object?> encode() => {
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditions({
    required this.operator,
    required this.field,
    this.value,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsOperator
  >
  operator;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsField
  field;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValue?
  value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'field': field.encode(),
    'value': ?value?.encode(),
  };
}

/// `operator` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsOperator
    implements TerraformEnum {
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  greaterThan('GREATER_THAN'),
  lessThan('LESS_THAN'),
  greaterThanOrEquals('GREATER_THAN_OR_EQUALS'),
  lessThanOrEquals('LESS_THAN_OR_EQUALS'),
  exists('EXISTS');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.field` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsField {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsField({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressionsConditionsConditionsValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.fields` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsFields {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsFields({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformations({
    required this.transformations,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformations
  >
  transformations;

  Map<String, Object?> encode() => {
    'transformations': [for (final e in transformations) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformations {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformations({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypes
  >?
  infoTypes;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformation
  primitiveTransformation;

  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'primitive_transformation': primitiveTransformation.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypes {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsInfoTypesSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformation({
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.replaceWithInfoTypeConfig,
    this.timePartConfig,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig?
  cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig?
  redactConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceWithInfoTypeConfig?
  replaceWithInfoTypeConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig?
  timePartConfig;

  Map<String, Object?> encode() => {
    'bucketing_config': ?bucketingConfig?.encode(),
    'character_mask_config': ?characterMaskConfig?.encode(),
    'crypto_deterministic_config': ?cryptoDeterministicConfig?.encode(),
    'crypto_hash_config': ?cryptoHashConfig?.encode(),
    'crypto_replace_ffx_fpe_config': ?cryptoReplaceFfxFpeConfig?.encode(),
    'date_shift_config': ?dateShiftConfig?.encode(),
    'fixed_size_bucketing_config': ?fixedSizeBucketingConfig?.encode(),
    'redact_config': ?redactConfig?.encode(),
    'replace_config': ?replaceConfig?.encode(),
    'replace_dictionary_config': ?replaceDictionaryConfig?.encode(),
    'replace_with_info_type_config': ?replaceWithInfoTypeConfig?.encode(),
    'time_part_config': ?timePartConfig?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfig({
    required this.buckets,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets
  >
  buckets;

  Map<String, Object?> encode() => {
    'buckets': [for (final e in buckets) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBuckets({
    this.max,
    this.min,
    required this.replacementValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax?
  max;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin?
  min;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue
  replacementValue;

  Map<String, Object?> encode() => {
    'max': ?max?.encode(),
    'min': ?min?.encode(),
    'replacement_value': replacementValue.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMax({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMin({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.character_mask_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfig({
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
    this.charactersToIgnore,
  });

  final TfArg<String>? maskingCharacter;

  final TfArg<num>? numberToMask;

  final TfArg<bool>? reverseOrder;

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore
  >?
  charactersToIgnore;

  Map<String, Object?> encode() => {
    'masking_character': ?maskingCharacter?.toTfJson(),
    'number_to_mask': ?numberToMask?.toTfJson(),
    'reverse_order': ?reverseOrder?.toTfJson(),
    if (charactersToIgnore != null)
      'characters_to_ignore': [for (final e in charactersToIgnore!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  final TfArg<String>? charactersToSkip;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
  >?
  commonCharactersToIgnore;

  Map<String, Object?> encode() => {
    'characters_to_skip': ?charactersToSkip?.toTfJson(),
    'common_characters_to_ignore': ?commonCharactersToIgnore?.toTfJson(),
  };
}

/// `common_characters_to_ignore` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
    implements TerraformEnum {
  numeric('NUMERIC'),
  alphaUpperCase('ALPHA_UPPER_CASE'),
  alphaLowerCase('ALPHA_LOWER_CASE'),
  punctuation('PUNCTUATION'),
  whitespace('WHITESPACE');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfig({
    this.context,
    required this.cryptoKey,
    required this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'context': ?context?.encode(),
    'crypto_key': cryptoKey.encode(),
    'surrogate_info_type': surrogateInfoType.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigContext({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfig({
    required this.cryptoKey,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey
  cryptoKey;

  Map<String, Object?> encode() => {'crypto_key': cryptoKey.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.customAlphabet,
    this.radix,
    this.context,
    required this.cryptoKey,
    this.surrogateInfoType,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
  >?
  commonAlphabet;

  final TfArg<String>? customAlphabet;

  final TfArg<num>? radix;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType?
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'common_alphabet': ?commonAlphabet?.toTfJson(),
    'custom_alphabet': ?customAlphabet?.toTfJson(),
    'radix': ?radix?.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': cryptoKey.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// `common_alphabet` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
    implements TerraformEnum {
  numeric('NUMERIC'),
  hexadecimal('HEXADECIMAL'),
  upperCaseAlphaNumeric('UPPER_CASE_ALPHA_NUMERIC'),
  alphaNumeric('ALPHA_NUMERIC');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfig({
    required this.lowerBoundDays,
    required this.upperBoundDays,
    this.context,
    this.cryptoKey,
  });

  final TfArg<num> lowerBoundDays;

  final TfArg<num> upperBoundDays;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey?
  cryptoKey;

  Map<String, Object?> encode() => {
    'lower_bound_days': lowerBoundDays.toTfJson(),
    'upper_bound_days': upperBoundDays.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigContext({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  final TfArg<num> bucketSize;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound
  lowerBound;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound
  upperBound;

  Map<String, Object?> encode() => {
    'bucket_size': bucketSize.toTfJson(),
    'lower_bound': lowerBound.encode(),
    'upper_bound': upperBound.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.redact_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationRedactConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfig({
    required this.newValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue
  newValue;

  Map<String, Object?> encode() => {'new_value': newValue.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_config.new_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfig({
    required this.wordList,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList
  wordList;

  Map<String, Object?> encode() => {'word_list': wordList.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config.word_list` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList({
    required this.words,
  });

  final TfArg<List<Object?>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_with_info_type_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceWithInfoTypeConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationReplaceWithInfoTypeConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.time_part_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfig({
    required this.partToExtract,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract
  >
  partToExtract;

  Map<String, Object?> encode() => {
    'part_to_extract': partToExtract.toTfJson(),
  };
}

/// `part_to_extract` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract
    implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  dayOfMonth('DAY_OF_MONTH'),
  dayOfWeek('DAY_OF_WEEK'),
  weekOfYear('WEEK_OF_YEAR'),
  hourOfDay('HOUR_OF_DAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsInfoTypeTransformationsTransformationsPrimitiveTransformationTimePartConfigPartToExtract(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformation({
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.timePartConfig,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfig?
  cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationRedactConfig?
  redactConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfig?
  timePartConfig;

  Map<String, Object?> encode() => {
    'bucketing_config': ?bucketingConfig?.encode(),
    'character_mask_config': ?characterMaskConfig?.encode(),
    'crypto_deterministic_config': ?cryptoDeterministicConfig?.encode(),
    'crypto_hash_config': ?cryptoHashConfig?.encode(),
    'crypto_replace_ffx_fpe_config': ?cryptoReplaceFfxFpeConfig?.encode(),
    'date_shift_config': ?dateShiftConfig?.encode(),
    'fixed_size_bucketing_config': ?fixedSizeBucketingConfig?.encode(),
    'redact_config': ?redactConfig?.encode(),
    'replace_config': ?replaceConfig?.encode(),
    'replace_dictionary_config': ?replaceDictionaryConfig?.encode(),
    'time_part_config': ?timePartConfig?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfig({
    this.buckets,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBuckets
  >?
  buckets;

  Map<String, Object?> encode() => {
    if (buckets != null) 'buckets': [for (final e in buckets!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBuckets {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBuckets({
    this.max,
    this.min,
    required this.replacementValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMax?
  max;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMin?
  min;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue
  replacementValue;

  Map<String, Object?> encode() => {
    'max': ?max?.encode(),
    'min': ?min?.encode(),
    'replacement_value': replacementValue.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMax {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMax({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMaxTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMin {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMin({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsMinTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationBucketingConfigBucketsReplacementValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfig({
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
    this.charactersToIgnore,
  });

  final TfArg<String>? maskingCharacter;

  final TfArg<num>? numberToMask;

  final TfArg<bool>? reverseOrder;

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore
  >?
  charactersToIgnore;

  Map<String, Object?> encode() => {
    'masking_character': ?maskingCharacter?.toTfJson(),
    'number_to_mask': ?numberToMask?.toTfJson(),
    'reverse_order': ?reverseOrder?.toTfJson(),
    if (charactersToIgnore != null)
      'characters_to_ignore': [for (final e in charactersToIgnore!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config.characters_to_ignore` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  final TfArg<String>? charactersToSkip;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
  >?
  commonCharactersToIgnore;

  Map<String, Object?> encode() => {
    'characters_to_skip': ?charactersToSkip?.toTfJson(),
    'common_characters_to_ignore': ?commonCharactersToIgnore?.toTfJson(),
  };
}

/// `common_characters_to_ignore` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore
    implements TerraformEnum {
  numeric('NUMERIC'),
  alphaUpperCase('ALPHA_UPPER_CASE'),
  alphaLowerCase('ALPHA_LOWER_CASE'),
  punctuation('PUNCTUATION'),
  whitespace('WHITESPACE');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreCommonCharactersToIgnore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfig({
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey?
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType?
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoType({
    this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String>? name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfig({
    this.cryptoKey,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey?
  cryptoKey;

  Map<String, Object?> encode() => {'crypto_key': ?cryptoKey?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoHashConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.customAlphabet,
    this.radix,
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
  >?
  commonAlphabet;

  final TfArg<String>? customAlphabet;

  final TfArg<num>? radix;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey?
  cryptoKey;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType?
  surrogateInfoType;

  Map<String, Object?> encode() => {
    'common_alphabet': ?commonAlphabet?.toTfJson(),
    'custom_alphabet': ?customAlphabet?.toTfJson(),
    'radix': ?radix?.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// `common_alphabet` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet
    implements TerraformEnum {
  ffxCommonNativeAlphabetUnspecified('FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED'),
  numeric('NUMERIC'),
  hexadecimal('HEXADECIMAL'),
  upperCaseAlphaNumeric('UPPER_CASE_ALPHA_NUMERIC'),
  alphaNumeric('ALPHA_NUMERIC');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCommonAlphabet(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType({
    this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String>? name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore?
  sensitivityScore;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoTypeSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfig({
    required this.lowerBoundDays,
    required this.upperBoundDays,
    this.context,
    this.cryptoKey,
  });

  final TfArg<num> lowerBoundDays;

  final TfArg<num> upperBoundDays;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKey?
  cryptoKey;

  Map<String, Object?> encode() => {
    'lower_bound_days': lowerBoundDays.toTfJson(),
    'upper_bound_days': upperBoundDays.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigContext {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKey {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient?
  transient;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped?
  unwrapped;

  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyTransient({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped({
    required this.key,
  });

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  final TfArg<num> bucketSize;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound
  lowerBound;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound
  upperBound;

  Map<String, Object?> encode() => {
    'bucket_size': bucketSize.toTfJson(),
    'lower_bound': lowerBound.encode(),
    'upper_bound': upperBound.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigLowerBoundTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.redact_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationRedactConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationRedactConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfig({
    required this.newValue,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValue
  newValue;

  Map<String, Object?> encode() => {'new_value': newValue.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceConfigNewValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfig({
    this.wordList,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList?
  wordList;

  Map<String, Object?> encode() => {'word_list': ?wordList?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config.word_list` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationReplaceDictionaryConfigWordList({
    required this.words,
  });

  final TfArg<List<Object?>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.time_part_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfig({
    this.partToExtract,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfigPartToExtract
  >?
  partToExtract;

  Map<String, Object?> encode() => {
    'part_to_extract': ?partToExtract?.toTfJson(),
  };
}

/// `part_to_extract` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfigPartToExtract
    implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  dayOfMonth('DAY_OF_MONTH'),
  dayOfWeek('DAY_OF_WEEK'),
  weekOfYear('WEEK_OF_YEAR'),
  hourOfDay('HOUR_OF_DAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationsPrimitiveTransformationTimePartConfigPartToExtract(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressions({
    this.condition,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsCondition?
  condition;

  Map<String, Object?> encode() => {'condition': ?condition?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsCondition {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsCondition({
    this.expressions,
  });

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressions?
  expressions;

  Map<String, Object?> encode() => {'expressions': ?expressions?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressions({
    this.logicalOperator,
    this.conditions,
  });

  final TfArg<String>? logicalOperator;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditions?
  conditions;

  Map<String, Object?> encode() => {
    'logical_operator': ?logicalOperator?.toTfJson(),
    'conditions': ?conditions?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditions({
    this.conditions,
  });

  final List<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditions
  >?
  conditions;

  Map<String, Object?> encode() => {
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditions {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditions({
    required this.operator,
    required this.field,
    this.value,
  });

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsOperator
  >
  operator;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsField
  field;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValue?
  value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'field': field.encode(),
    'value': ?value?.encode(),
  };
}

/// `operator` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsOperator
    implements TerraformEnum {
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  greaterThan('GREATER_THAN'),
  lessThan('LESS_THAN'),
  greaterThanOrEquals('GREATER_THAN_OR_EQUALS'),
  lessThanOrEquals('LESS_THAN_OR_EQUALS'),
  exists('EXISTS');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.field` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsField {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsField({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValue({
    this.booleanValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<
    DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDayOfWeekValue
  >?
  dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDateValue?
  dateValue;

  final DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueTimeValue?
  timeValue;

  Map<String, Object?> encode() => {
    'boolean_value': ?booleanValue?.toTfJson(),
    'day_of_week_value': ?dayOfWeekValue?.toTfJson(),
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'timestamp_value': ?timestampValue?.toTfJson(),
    'date_value': ?dateValue?.encode(),
    'time_value': ?timeValue?.encode(),
  };
}

/// `day_of_week_value` — derived from the provider schema description.
enum DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDayOfWeekValue
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDayOfWeekValue(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDateValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueTimeValue {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionsConditionExpressionsConditionsConditionsValueTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Factory wrapper for `google_data_loss_prevention_deidentify_template`.
///
/// Allows creation of templates to de-identify content.
///
/// DLP de-identify template — reusable transforms that redact or replace
/// sensitive findings.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionDeidentifyTemplate extends Resource {
  static const String tfType =
      'google_data_loss_prevention_deidentify_template';

  GoogleDataLossPreventionDeidentifyTemplate({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? templateId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required DataLossPreventionDeidentifyTemplateDeidentifyConfig
    deidentifyConfig,
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
           'deidentify_config': TfArg.literal(deidentifyConfig.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionDeidentifyTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionDeidentifyTemplate>`.
  RefTo<GoogleDataLossPreventionDeidentifyTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

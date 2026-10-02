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
    DataLossPreventionDeidentifyTemplateInfoTypeTransformations
    infoTypeTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations;

  /// Sets `record_transformations`.
  const factory DataLossPreventionDeidentifyTemplateDeidentifyConfig.recordTransformations(
    DataLossPreventionDeidentifyTemplateRecordTransformations
    recordTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations;

  /// Sets `image_transformations`.
  const factory DataLossPreventionDeidentifyTemplateDeidentifyConfig.imageTransformations(
    DataLossPreventionDeidentifyTemplateImageTransformations
    imageTransformations,
  ) = DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.infoTypeTransformations] choice: sets `info_type_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations(
    this.infoTypeTransformations,
  );

  final DataLossPreventionDeidentifyTemplateInfoTypeTransformations
  infoTypeTransformations;

  @internal
  @override
  String get blockKey => 'info_type_transformations';

  @internal
  @override
  Map<String, Object?> encode() => {
    'info_type_transformations': infoTypeTransformations.encode(),
  };
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.recordTransformations] choice: sets `record_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigRecordTransformations(
    this.recordTransformations,
  );

  final DataLossPreventionDeidentifyTemplateRecordTransformations
  recordTransformations;

  @internal
  @override
  String get blockKey => 'record_transformations';

  @internal
  @override
  Map<String, Object?> encode() => {
    'record_transformations': recordTransformations.encode(),
  };
}

/// The [DataLossPreventionDeidentifyTemplateDeidentifyConfig.imageTransformations] choice: sets `image_transformations`.
final class DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations
    extends DataLossPreventionDeidentifyTemplateDeidentifyConfig {
  const DataLossPreventionDeidentifyTemplateDeidentifyConfigImageTransformations(
    this.imageTransformations,
  );

  final DataLossPreventionDeidentifyTemplateImageTransformations
  imageTransformations;

  @internal
  @override
  String get blockKey => 'image_transformations';

  @internal
  @override
  Map<String, Object?> encode() => {
    'image_transformations': imageTransformations.encode(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateImageTransformations {
  const DataLossPreventionDeidentifyTemplateImageTransformations({
    required this.transforms,
  });

  final List<DataLossPreventionDeidentifyTemplateTransforms> transforms;

  @internal
  Map<String, Object?> encode() => {
    'transforms': [for (final e in transforms) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateTransforms {
  const DataLossPreventionDeidentifyTemplateTransforms({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  final DataLossPreventionDeidentifyTemplateAllInfoTypes? allInfoTypes;

  final DataLossPreventionDeidentifyTemplateAllText? allText;

  final DataLossPreventionDeidentifyTemplateRedactionColor? redactionColor;

  final DataLossPreventionDeidentifyTemplateSelectedInfoTypes?
  selectedInfoTypes;

  @internal
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
final class DataLossPreventionDeidentifyTemplateAllInfoTypes {
  const DataLossPreventionDeidentifyTemplateAllInfoTypes();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.all_text` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateAllText {
  const DataLossPreventionDeidentifyTemplateAllText();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.redaction_color` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateRedactionColor {
  const DataLossPreventionDeidentifyTemplateRedactionColor({
    this.blue,
    this.green,
    this.red,
  });

  final TfArg<num>? blue;

  final TfArg<num>? green;

  final TfArg<num>? red;

  @internal
  Map<String, Object?> encode() => {
    'blue': ?blue?.toTfJson(),
    'green': ?green?.toTfJson(),
    'red': ?red?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.image_transformations.transforms.selected_info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateSelectedInfoTypes {
  const DataLossPreventionDeidentifyTemplateSelectedInfoTypes({
    required this.infoTypes,
  });

  final List<DataLossPreventionDeidentifyTemplateInfoTypes> infoTypes;

  @internal
  Map<String, Object?> encode() => {
    'info_types': [for (final e in infoTypes) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.info_types` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateInfoTypes {
  const DataLossPreventionDeidentifyTemplateInfoTypes({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateSensitivityScore? sensitivityScore;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.info_types.sensitivity_score` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateSensitivityScore {
  const DataLossPreventionDeidentifyTemplateSensitivityScore({
    required this.score,
  });

  final DataLossPreventionDeidentifyTemplateScore score;

  @internal
  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
extension type const DataLossPreventionDeidentifyTemplateScore._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateScore.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateScore.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateScore.arg(TfArg<String> arg)
    : this._(arg);

  static const sensitivityLow = DataLossPreventionDeidentifyTemplateScore._(
    TfArgLiteral('SENSITIVITY_LOW'),
  );
  static const sensitivityModerate =
      DataLossPreventionDeidentifyTemplateScore._(
        TfArgLiteral('SENSITIVITY_MODERATE'),
      );
  static const sensitivityHigh = DataLossPreventionDeidentifyTemplateScore._(
    TfArgLiteral('SENSITIVITY_HIGH'),
  );

  static const List<DataLossPreventionDeidentifyTemplateScore> values = [
    sensitivityLow,
    sensitivityModerate,
    sensitivityHigh,
  ];
}

/// Typed helper for the `deidentify_config.info_type_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateInfoTypeTransformations {
  const DataLossPreventionDeidentifyTemplateInfoTypeTransformations({
    required this.transformations,
  });

  final List<DataLossPreventionDeidentifyTemplateTransformations>
  transformations;

  @internal
  Map<String, Object?> encode() => {
    'transformations': [for (final e in transformations) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateTransformations {
  const DataLossPreventionDeidentifyTemplateTransformations({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  final List<DataLossPreventionDeidentifyTemplateInfoTypes>? infoTypes;

  final DataLossPreventionDeidentifyTemplateTransformationsPrimitiveTransformation
  primitiveTransformation;

  @internal
  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'primitive_transformation': primitiveTransformation.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateTransformationsPrimitiveTransformation({
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

  final DataLossPreventionDeidentifyTemplateTransformationsBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplateCryptoHashConfig? cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateRedactConfig? redactConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateTimePartConfig? timePartConfig;

  @internal
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
final class DataLossPreventionDeidentifyTemplateTransformationsBucketingConfig {
  const DataLossPreventionDeidentifyTemplateTransformationsBucketingConfig({
    this.buckets,
  });

  final List<DataLossPreventionDeidentifyTemplateTransformationsBuckets>?
  buckets;

  @internal
  Map<String, Object?> encode() => {
    if (buckets != null) 'buckets': [for (final e in buckets!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsBuckets {
  const DataLossPreventionDeidentifyTemplateTransformationsBuckets({
    this.max,
    this.min,
    required this.replacementValue,
  });

  final DataLossPreventionDeidentifyTemplateTransformationsMax? max;

  final DataLossPreventionDeidentifyTemplateTransformationsMin? min;

  final DataLossPreventionDeidentifyTemplateTransformationsReplacementValue
  replacementValue;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.encode(),
    'min': ?min?.encode(),
    'replacement_value': replacementValue.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.max` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsMax {
  const DataLossPreventionDeidentifyTemplateTransformationsMax({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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
extension type const DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateDayOfWeekValue.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateDayOfWeekValue.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateDayOfWeekValue.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const monday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = DataLossPreventionDeidentifyTemplateDayOfWeekValue._(
    TfArgLiteral('SUNDAY'),
  );

  static const List<DataLossPreventionDeidentifyTemplateDayOfWeekValue> values =
      [monday, tuesday, wednesday, thursday, friday, saturday, sunday];
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateDateValue {
  const DataLossPreventionDeidentifyTemplateDateValue({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  @internal
  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTimeValue {
  const DataLossPreventionDeidentifyTemplateTimeValue({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  @internal
  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.min` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsMin {
  const DataLossPreventionDeidentifyTemplateTransformationsMin({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.bucketing_config.buckets.replacement_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsReplacementValue {
  const DataLossPreventionDeidentifyTemplateTransformationsReplacementValue({
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
    this.dateValue,
    this.timeValue,
  });

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCharacterMaskConfig {
  const DataLossPreventionDeidentifyTemplateCharacterMaskConfig({
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
    this.charactersToIgnore,
  });

  final TfArg<String>? maskingCharacter;

  final TfArg<num>? numberToMask;

  final TfArg<bool>? reverseOrder;

  final List<DataLossPreventionDeidentifyTemplateCharactersToIgnore>?
  charactersToIgnore;

  @internal
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
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCharactersToIgnore {
  const DataLossPreventionDeidentifyTemplateCharactersToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  final TfArg<String>? charactersToSkip;

  final DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore?
  commonCharactersToIgnore;

  @internal
  Map<String, Object?> encode() => {
    'characters_to_skip': ?charactersToSkip?.toTfJson(),
    'common_characters_to_ignore': ?commonCharactersToIgnore?.toTfJson(),
  };
}

/// `common_characters_to_ignore` — derived from the provider schema description.
extension type const DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const numeric =
      DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
        TfArgLiteral('NUMERIC'),
      );
  static const alphaUpperCase =
      DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
        TfArgLiteral('ALPHA_UPPER_CASE'),
      );
  static const alphaLowerCase =
      DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
        TfArgLiteral('ALPHA_LOWER_CASE'),
      );
  static const punctuation =
      DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
        TfArgLiteral('PUNCTUATION'),
      );
  static const whitespace =
      DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore._(
        TfArgLiteral('WHITESPACE'),
      );

  static const List<
    DataLossPreventionDeidentifyTemplateCommonCharactersToIgnore
  >
  values = [numeric, alphaUpperCase, alphaLowerCase, punctuation, whitespace];
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoDeterministicConfig {
  const DataLossPreventionDeidentifyTemplateCryptoDeterministicConfig({
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateCryptoKey? cryptoKey;

  final DataLossPreventionDeidentifyTemplateSurrogateInfoType?
  surrogateInfoType;

  @internal
  Map<String, Object?> encode() => {
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
    'surrogate_info_type': ?surrogateInfoType?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigContext {
  const DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigContext({
    this.name,
  });

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoKey {
  const DataLossPreventionDeidentifyTemplateCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  final DataLossPreventionDeidentifyTemplateKmsWrapped? kmsWrapped;

  final DataLossPreventionDeidentifyTemplateTransient? transient;

  final DataLossPreventionDeidentifyTemplateUnwrapped? unwrapped;

  @internal
  Map<String, Object?> encode() => {
    'kms_wrapped': ?kmsWrapped?.encode(),
    'transient': ?transient?.encode(),
    'unwrapped': ?unwrapped?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateKmsWrapped {
  const DataLossPreventionDeidentifyTemplateKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  final RefTo<GoogleKmsCryptoKey> cryptoKeyName;

  final TfArg<String> wrappedKey;

  @internal
  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.encodeAs('id').toTfJson(),
    'wrapped_key': wrappedKey.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransient {
  const DataLossPreventionDeidentifyTemplateTransient({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateUnwrapped {
  const DataLossPreventionDeidentifyTemplateUnwrapped({required this.key});

  final Sensitive<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateSurrogateInfoType({
    this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String>? name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateSensitivityScore? sensitivityScore;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_hash_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoHashConfig {
  const DataLossPreventionDeidentifyTemplateCryptoHashConfig({this.cryptoKey});

  final DataLossPreventionDeidentifyTemplateCryptoKey? cryptoKey;

  @internal
  Map<String, Object?> encode() => {'crypto_key': ?cryptoKey?.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfig {
  const DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.customAlphabet,
    this.radix,
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateCommonAlphabet? commonAlphabet;

  final TfArg<String>? customAlphabet;

  final TfArg<num>? radix;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateCryptoKey? cryptoKey;

  final DataLossPreventionDeidentifyTemplateSurrogateInfoType?
  surrogateInfoType;

  @internal
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
extension type const DataLossPreventionDeidentifyTemplateCommonAlphabet._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateCommonAlphabet.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateCommonAlphabet.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateCommonAlphabet.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ffxCommonNativeAlphabetUnspecified =
      DataLossPreventionDeidentifyTemplateCommonAlphabet._(
        TfArgLiteral('FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED'),
      );
  static const numeric = DataLossPreventionDeidentifyTemplateCommonAlphabet._(
    TfArgLiteral('NUMERIC'),
  );
  static const hexadecimal =
      DataLossPreventionDeidentifyTemplateCommonAlphabet._(
        TfArgLiteral('HEXADECIMAL'),
      );
  static const upperCaseAlphaNumeric =
      DataLossPreventionDeidentifyTemplateCommonAlphabet._(
        TfArgLiteral('UPPER_CASE_ALPHA_NUMERIC'),
      );
  static const alphaNumeric =
      DataLossPreventionDeidentifyTemplateCommonAlphabet._(
        TfArgLiteral('ALPHA_NUMERIC'),
      );

  static const List<DataLossPreventionDeidentifyTemplateCommonAlphabet> values =
      [
        ffxCommonNativeAlphabetUnspecified,
        numeric,
        hexadecimal,
        upperCaseAlphaNumeric,
        alphaNumeric,
      ];
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsDateShiftConfig {
  const DataLossPreventionDeidentifyTemplateTransformationsDateShiftConfig({
    required this.lowerBoundDays,
    required this.upperBoundDays,
    this.context,
    this.cryptoKey,
  });

  final TfArg<num> lowerBoundDays;

  final TfArg<num> upperBoundDays;

  final DataLossPreventionDeidentifyTemplateDateShiftConfigContext? context;

  final DataLossPreventionDeidentifyTemplateCryptoKey? cryptoKey;

  @internal
  Map<String, Object?> encode() => {
    'lower_bound_days': lowerBoundDays.toTfJson(),
    'upper_bound_days': upperBoundDays.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.date_shift_config.context` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateDateShiftConfigContext {
  const DataLossPreventionDeidentifyTemplateDateShiftConfigContext({
    required this.name,
  });

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsFixedSizeBucketingConfig {
  const DataLossPreventionDeidentifyTemplateTransformationsFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  final TfArg<num> bucketSize;

  final DataLossPreventionDeidentifyTemplateTransformationsLowerBound
  lowerBound;

  final DataLossPreventionDeidentifyTemplateTransformationsUpperBound
  upperBound;

  @internal
  Map<String, Object?> encode() => {
    'bucket_size': bucketSize.toTfJson(),
    'lower_bound': lowerBound.encode(),
    'upper_bound': upperBound.encode(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsLowerBound {
  const DataLossPreventionDeidentifyTemplateTransformationsLowerBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  @internal
  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsUpperBound {
  const DataLossPreventionDeidentifyTemplateTransformationsUpperBound({
    this.floatValue,
    this.integerValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  @internal
  Map<String, Object?> encode() => {
    'float_value': ?floatValue?.toTfJson(),
    'integer_value': ?integerValue?.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.redact_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateRedactConfig {
  const DataLossPreventionDeidentifyTemplateRedactConfig();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsReplaceConfig {
  const DataLossPreventionDeidentifyTemplateTransformationsReplaceConfig({
    required this.newValue,
  });

  final DataLossPreventionDeidentifyTemplateTransformationsNewValue newValue;

  @internal
  Map<String, Object?> encode() => {'new_value': newValue.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsNewValue {
  const DataLossPreventionDeidentifyTemplateTransformationsNewValue({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<num>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTransformationsReplaceDictionaryConfig {
  const DataLossPreventionDeidentifyTemplateTransformationsReplaceDictionaryConfig({
    required this.wordList,
  });

  final DataLossPreventionDeidentifyTemplateWordList wordList;

  @internal
  Map<String, Object?> encode() => {'word_list': wordList.encode()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_dictionary_config.word_list` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateWordList {
  const DataLossPreventionDeidentifyTemplateWordList({required this.words});

  final TfArg<List<String>> words;

  @internal
  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `deidentify_config.info_type_transformations.transformations.primitive_transformation.time_part_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateTimePartConfig {
  const DataLossPreventionDeidentifyTemplateTimePartConfig({
    this.partToExtract,
  });

  final DataLossPreventionDeidentifyTemplatePartToExtract? partToExtract;

  @internal
  Map<String, Object?> encode() => {
    'part_to_extract': ?partToExtract?.toTfJson(),
  };
}

/// `part_to_extract` — derived from the provider schema description.
extension type const DataLossPreventionDeidentifyTemplatePartToExtract._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplatePartToExtract.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplatePartToExtract.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplatePartToExtract.arg(TfArg<String> arg)
    : this._(arg);

  static const year = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('YEAR'),
  );
  static const month = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('MONTH'),
  );
  static const dayOfMonth = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('DAY_OF_MONTH'),
  );
  static const dayOfWeek = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('DAY_OF_WEEK'),
  );
  static const weekOfYear = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('WEEK_OF_YEAR'),
  );
  static const hourOfDay = DataLossPreventionDeidentifyTemplatePartToExtract._(
    TfArgLiteral('HOUR_OF_DAY'),
  );

  static const List<DataLossPreventionDeidentifyTemplatePartToExtract> values =
      [year, month, dayOfMonth, dayOfWeek, weekOfYear, hourOfDay];
}

/// Typed helper for the `deidentify_config.record_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateRecordTransformations {
  const DataLossPreventionDeidentifyTemplateRecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  final List<DataLossPreventionDeidentifyTemplateFieldTransformations>?
  fieldTransformations;

  final List<DataLossPreventionDeidentifyTemplateRecordSuppressions>?
  recordSuppressions;

  @internal
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
final class DataLossPreventionDeidentifyTemplateFieldTransformations {
  const DataLossPreventionDeidentifyTemplateFieldTransformations({
    this.condition,
    required this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  final DataLossPreventionDeidentifyTemplateCondition? condition;

  final List<DataLossPreventionDeidentifyTemplateFields> fields;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsInfoTypeTransformations?
  infoTypeTransformations;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsPrimitiveTransformation?
  primitiveTransformation;

  @internal
  Map<String, Object?> encode() => {
    'condition': ?condition?.encode(),
    'fields': [for (final e in fields) e.encode()],
    'info_type_transformations': ?infoTypeTransformations?.encode(),
    'primitive_transformation': ?primitiveTransformation?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCondition {
  const DataLossPreventionDeidentifyTemplateCondition({this.expressions});

  final DataLossPreventionDeidentifyTemplateExpressions? expressions;

  @internal
  Map<String, Object?> encode() => {'expressions': ?expressions?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateExpressions {
  const DataLossPreventionDeidentifyTemplateExpressions({
    this.logicalOperator,
    this.conditions,
  });

  final TfArg<String>? logicalOperator;

  final DataLossPreventionDeidentifyTemplateConditions? conditions;

  @internal
  Map<String, Object?> encode() => {
    'logical_operator': ?logicalOperator?.toTfJson(),
    'conditions': ?conditions?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateConditions {
  const DataLossPreventionDeidentifyTemplateConditions({this.conditions});

  final List<DataLossPreventionDeidentifyTemplateConditionsConditions>?
  conditions;

  @internal
  Map<String, Object?> encode() => {
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateConditionsConditions {
  const DataLossPreventionDeidentifyTemplateConditionsConditions({
    required this.operator,
    required this.field,
    this.value,
  });

  final DataLossPreventionDeidentifyTemplateOperator operator;

  final DataLossPreventionDeidentifyTemplateField field;

  final DataLossPreventionDeidentifyTemplateValue? value;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'field': field.encode(),
    'value': ?value?.encode(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const DataLossPreventionDeidentifyTemplateOperator._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateOperator.variable(String name)
    : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateOperator.expression(String template)
    : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equalTo = DataLossPreventionDeidentifyTemplateOperator._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = DataLossPreventionDeidentifyTemplateOperator._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const greaterThan = DataLossPreventionDeidentifyTemplateOperator._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const lessThan = DataLossPreventionDeidentifyTemplateOperator._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThanOrEquals =
      DataLossPreventionDeidentifyTemplateOperator._(
        TfArgLiteral('GREATER_THAN_OR_EQUALS'),
      );
  static const lessThanOrEquals =
      DataLossPreventionDeidentifyTemplateOperator._(
        TfArgLiteral('LESS_THAN_OR_EQUALS'),
      );
  static const exists = DataLossPreventionDeidentifyTemplateOperator._(
    TfArgLiteral('EXISTS'),
  );

  static const List<DataLossPreventionDeidentifyTemplateOperator> values = [
    equalTo,
    notEqualTo,
    greaterThan,
    lessThan,
    greaterThanOrEquals,
    lessThanOrEquals,
    exists,
  ];
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.field` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateField {
  const DataLossPreventionDeidentifyTemplateField({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateValue {
  const DataLossPreventionDeidentifyTemplateValue({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.fields` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFields {
  const DataLossPreventionDeidentifyTemplateFields({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsInfoTypeTransformations {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsInfoTypeTransformations({
    required this.transformations,
  });

  final List<
    DataLossPreventionDeidentifyTemplateInfoTypeTransformationsTransformations
  >
  transformations;

  @internal
  Map<String, Object?> encode() => {
    'transformations': [for (final e in transformations) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateInfoTypeTransformationsTransformations {
  const DataLossPreventionDeidentifyTemplateInfoTypeTransformationsTransformations({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  final List<DataLossPreventionDeidentifyTemplateInfoTypes>? infoTypes;

  final DataLossPreventionDeidentifyTemplateInfoTypeTransformationsPrimitiveTransformation
  primitiveTransformation;

  @internal
  Map<String, Object?> encode() => {
    if (infoTypes != null)
      'info_types': [for (final e in infoTypes!) e.encode()],
    'primitive_transformation': primitiveTransformation.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateInfoTypeTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateInfoTypeTransformationsPrimitiveTransformation({
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

  final DataLossPreventionDeidentifyTemplateInfoTypeTransformationsBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoHashConfig?
  cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateRedactConfig? redactConfig;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateTransformationsReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateReplaceWithInfoTypeConfig?
  replaceWithInfoTypeConfig;

  final DataLossPreventionDeidentifyTemplatePrimitiveTransformationTimePartConfig?
  timePartConfig;

  @internal
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
final class DataLossPreventionDeidentifyTemplateInfoTypeTransformationsBucketingConfig {
  const DataLossPreventionDeidentifyTemplateInfoTypeTransformationsBucketingConfig({
    required this.buckets,
  });

  final List<DataLossPreventionDeidentifyTemplateTransformationsBuckets>
  buckets;

  @internal
  Map<String, Object?> encode() => {
    'buckets': [for (final e in buckets) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoDeterministicConfig {
  const DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoDeterministicConfig({
    this.context,
    required this.cryptoKey,
    required this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateDateShiftConfigContext? context;

  final DataLossPreventionDeidentifyTemplateCryptoKey cryptoKey;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigSurrogateInfoType
  surrogateInfoType;

  @internal
  Map<String, Object?> encode() => {
    'context': ?context?.encode(),
    'crypto_key': cryptoKey.encode(),
    'surrogate_info_type': surrogateInfoType.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigSurrogateInfoType {
  const DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigSurrogateInfoType({
    required this.name,
    this.version,
    this.sensitivityScore,
  });

  final TfArg<String> name;

  final TfArg<String>? version;

  final DataLossPreventionDeidentifyTemplateSensitivityScore? sensitivityScore;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    'sensitivity_score': ?sensitivityScore?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoHashConfig {
  const DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoHashConfig({
    required this.cryptoKey,
  });

  final DataLossPreventionDeidentifyTemplateCryptoKey cryptoKey;

  @internal
  Map<String, Object?> encode() => {'crypto_key': cryptoKey.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoReplaceFfxFpeConfig {
  const DataLossPreventionDeidentifyTemplatePrimitiveTransformationCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.customAlphabet,
    this.radix,
    this.context,
    required this.cryptoKey,
    this.surrogateInfoType,
  });

  final DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet?
  commonAlphabet;

  final TfArg<String>? customAlphabet;

  final TfArg<num>? radix;

  final DataLossPreventionDeidentifyTemplateDateShiftConfigContext? context;

  final DataLossPreventionDeidentifyTemplateCryptoKey cryptoKey;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigSurrogateInfoType?
  surrogateInfoType;

  @internal
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
extension type const DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet._(
  TfArg<String> _
) implements TfArg<String> {
  DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet.variable(
    String name,
  ) : this._(TfArg.variable(name));
  DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const numeric =
      DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet._(
        TfArgLiteral('NUMERIC'),
      );
  static const hexadecimal =
      DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet._(
        TfArgLiteral('HEXADECIMAL'),
      );
  static const upperCaseAlphaNumeric =
      DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet._(
        TfArgLiteral('UPPER_CASE_ALPHA_NUMERIC'),
      );
  static const alphaNumeric =
      DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet._(
        TfArgLiteral('ALPHA_NUMERIC'),
      );

  static const List<
    DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfigCommonAlphabet
  >
  values = [numeric, hexadecimal, upperCaseAlphaNumeric, alphaNumeric];
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceConfig {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceConfig({
    required this.newValue,
  });

  final DataLossPreventionDeidentifyTemplateFieldTransformationsNewValue
  newValue;

  @internal
  Map<String, Object?> encode() => {'new_value': newValue.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsNewValue {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsNewValue({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.replace_with_info_type_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateReplaceWithInfoTypeConfig {
  const DataLossPreventionDeidentifyTemplateReplaceWithInfoTypeConfig();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.time_part_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplatePrimitiveTransformationTimePartConfig {
  const DataLossPreventionDeidentifyTemplatePrimitiveTransformationTimePartConfig({
    required this.partToExtract,
  });

  final DataLossPreventionDeidentifyTemplatePartToExtract partToExtract;

  @internal
  Map<String, Object?> encode() => {
    'part_to_extract': partToExtract.toTfJson(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsPrimitiveTransformation {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsPrimitiveTransformation({
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

  final DataLossPreventionDeidentifyTemplateFieldTransformationsBucketingConfig?
  bucketingConfig;

  final DataLossPreventionDeidentifyTemplateCharacterMaskConfig?
  characterMaskConfig;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfig?
  cryptoDeterministicConfig;

  final DataLossPreventionDeidentifyTemplateCryptoHashConfig? cryptoHashConfig;

  final DataLossPreventionDeidentifyTemplateCryptoReplaceFfxFpeConfig?
  cryptoReplaceFfxFpeConfig;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsDateShiftConfig?
  dateShiftConfig;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsFixedSizeBucketingConfig?
  fixedSizeBucketingConfig;

  final DataLossPreventionDeidentifyTemplateRedactConfig? redactConfig;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceConfig?
  replaceConfig;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceDictionaryConfig?
  replaceDictionaryConfig;

  final DataLossPreventionDeidentifyTemplateTimePartConfig? timePartConfig;

  @internal
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
final class DataLossPreventionDeidentifyTemplateFieldTransformationsBucketingConfig {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsBucketingConfig({
    this.buckets,
  });

  final List<DataLossPreventionDeidentifyTemplateFieldTransformationsBuckets>?
  buckets;

  @internal
  Map<String, Object?> encode() => {
    if (buckets != null) 'buckets': [for (final e in buckets!) e.encode()],
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsBuckets {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsBuckets({
    this.max,
    this.min,
    required this.replacementValue,
  });

  final DataLossPreventionDeidentifyTemplateFieldTransformationsMax? max;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsMin? min;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsReplacementValue
  replacementValue;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.encode(),
    'min': ?min?.encode(),
    'replacement_value': replacementValue.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsMax {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsMax({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsMin {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsMin({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsReplacementValue {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsReplacementValue({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsDateShiftConfig {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsDateShiftConfig({
    required this.lowerBoundDays,
    required this.upperBoundDays,
    this.context,
    this.cryptoKey,
  });

  final TfArg<num> lowerBoundDays;

  final TfArg<num> upperBoundDays;

  final DataLossPreventionDeidentifyTemplateCryptoDeterministicConfigContext?
  context;

  final DataLossPreventionDeidentifyTemplateCryptoKey? cryptoKey;

  @internal
  Map<String, Object?> encode() => {
    'lower_bound_days': lowerBoundDays.toTfJson(),
    'upper_bound_days': upperBoundDays.toTfJson(),
    'context': ?context?.encode(),
    'crypto_key': ?cryptoKey?.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsFixedSizeBucketingConfig {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  final TfArg<num> bucketSize;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsLowerBound
  lowerBound;

  final DataLossPreventionDeidentifyTemplateFieldTransformationsUpperBound
  upperBound;

  @internal
  Map<String, Object?> encode() => {
    'bucket_size': bucketSize.toTfJson(),
    'lower_bound': lowerBound.encode(),
    'upper_bound': upperBound.encode(),
  };
}

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsLowerBound {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsLowerBound({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsUpperBound {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsUpperBound({
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

  final DataLossPreventionDeidentifyTemplateDayOfWeekValue? dayOfWeekValue;

  final TfArg<num>? floatValue;

  final TfArg<String>? integerValue;

  final TfArg<String>? stringValue;

  final TfArg<String>? timestampValue;

  final DataLossPreventionDeidentifyTemplateDateValue? dateValue;

  final DataLossPreventionDeidentifyTemplateTimeValue? timeValue;

  @internal
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

/// Typed helper for the `deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceDictionaryConfig {
  const DataLossPreventionDeidentifyTemplateFieldTransformationsReplaceDictionaryConfig({
    this.wordList,
  });

  final DataLossPreventionDeidentifyTemplateWordList? wordList;

  @internal
  Map<String, Object?> encode() => {'word_list': ?wordList?.encode()};
}

/// Typed helper for the `deidentify_config.record_transformations.record_suppressions` block of
/// `google_data_loss_prevention_deidentify_template` (derived from provider schema).
@immutable
final class DataLossPreventionDeidentifyTemplateRecordSuppressions {
  const DataLossPreventionDeidentifyTemplateRecordSuppressions({
    this.condition,
  });

  final DataLossPreventionDeidentifyTemplateCondition? condition;

  @internal
  Map<String, Object?> encode() => {'condition': ?condition?.encode()};
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

  GoogleDataLossPreventionDeidentifyTemplate(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');
}

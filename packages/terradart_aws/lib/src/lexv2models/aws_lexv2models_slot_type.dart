// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lexv2models_slot_type`.
const Set<String> _awsLexv2modelsSlotTypeSensitive = <String>{};

/// Typed helper for the `composite_slot_type_setting` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeCompositeSlotTypeSetting {
  const Lexv2modelsSlotTypeCompositeSlotTypeSetting({this.subSlots});

  final List<Lexv2modelsSlotTypeSubSlots>? subSlots;

  @internal
  Map<String, Object?> encode() => {
    if (subSlots != null) 'sub_slots': [for (final e in subSlots!) e.encode()],
  };
}

/// Typed helper for the `composite_slot_type_setting.sub_slots` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeSubSlots {
  const Lexv2modelsSlotTypeSubSlots({
    required this.name,
    required this.slotTypeId,
  });

  final TfArg<String> name;

  final TfArg<String> slotTypeId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'slot_type_id': slotTypeId.toTfJson(),
  };
}

/// Typed helper for the `external_source_setting` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeExternalSourceSetting {
  const Lexv2modelsSlotTypeExternalSourceSetting({this.grammarSlotTypeSetting});

  final List<Lexv2modelsSlotTypeGrammarSlotTypeSetting>? grammarSlotTypeSetting;

  @internal
  Map<String, Object?> encode() => {
    if (grammarSlotTypeSetting != null)
      'grammar_slot_type_setting': [
        for (final e in grammarSlotTypeSetting!) e.encode(),
      ],
  };
}

/// Typed helper for the `external_source_setting.grammar_slot_type_setting` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeGrammarSlotTypeSetting {
  const Lexv2modelsSlotTypeGrammarSlotTypeSetting({this.source});

  final List<Lexv2modelsSlotTypeSource>? source;

  @internal
  Map<String, Object?> encode() => {
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `external_source_setting.grammar_slot_type_setting.source` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeSource {
  const Lexv2modelsSlotTypeSource({
    required this.kmsKeyArn,
    required this.s3BucketName,
    required this.s3ObjectKey,
  });

  final RefTo<AwsKmsKey> kmsKeyArn;

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String> s3ObjectKey;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_arn': kmsKeyArn.encodeAs('arn').toTfJson(),
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_object_key': s3ObjectKey.toTfJson(),
  };
}

/// Typed helper for the `slot_type_values` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeValues {
  const Lexv2modelsSlotTypeValues({this.sampleValue, this.synonyms});

  final List<Lexv2modelsSlotTypeSampleValue>? sampleValue;

  final List<Lexv2modelsSlotTypeSynonyms>? synonyms;

  @internal
  Map<String, Object?> encode() => {
    if (sampleValue != null)
      'sample_value': [for (final e in sampleValue!) e.encode()],
    if (synonyms != null) 'synonyms': [for (final e in synonyms!) e.encode()],
  };
}

/// Typed helper for the `slot_type_values.sample_value` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeSampleValue {
  const Lexv2modelsSlotTypeSampleValue({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `slot_type_values.synonyms` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeSynonyms {
  const Lexv2modelsSlotTypeSynonyms({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_selection_setting` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeValueSelectionSetting {
  const Lexv2modelsSlotTypeValueSelectionSetting({
    required this.resolutionStrategy,
    this.advancedRecognitionSetting,
    this.regexFilter,
  });

  final Lexv2modelsSlotTypeResolutionStrategy resolutionStrategy;

  final List<Lexv2modelsSlotTypeAdvancedRecognitionSetting>?
  advancedRecognitionSetting;

  final List<Lexv2modelsSlotTypeRegexFilter>? regexFilter;

  @internal
  Map<String, Object?> encode() => {
    'resolution_strategy': resolutionStrategy.toTfJson(),
    if (advancedRecognitionSetting != null)
      'advanced_recognition_setting': [
        for (final e in advancedRecognitionSetting!) e.encode(),
      ],
    if (regexFilter != null)
      'regex_filter': [for (final e in regexFilter!) e.encode()],
  };
}

/// `resolution_strategy` — derived from the provider schema description.
extension type const Lexv2modelsSlotTypeResolutionStrategy._(TfArg<String> _)
    implements TfArg<String> {
  Lexv2modelsSlotTypeResolutionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  Lexv2modelsSlotTypeResolutionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const Lexv2modelsSlotTypeResolutionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const originalvalue = Lexv2modelsSlotTypeResolutionStrategy._(
    TfArgLiteral('OriginalValue'),
  );
  static const topresolution = Lexv2modelsSlotTypeResolutionStrategy._(
    TfArgLiteral('TopResolution'),
  );
  static const concatenation = Lexv2modelsSlotTypeResolutionStrategy._(
    TfArgLiteral('Concatenation'),
  );

  static const List<Lexv2modelsSlotTypeResolutionStrategy> values = [
    originalvalue,
    topresolution,
    concatenation,
  ];
}

/// Typed helper for the `value_selection_setting.advanced_recognition_setting` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeAdvancedRecognitionSetting {
  const Lexv2modelsSlotTypeAdvancedRecognitionSetting({
    this.audioRecognitionStrategy,
  });

  final Lexv2modelsSlotTypeAudioRecognitionStrategy? audioRecognitionStrategy;

  @internal
  Map<String, Object?> encode() => {
    'audio_recognition_strategy': ?audioRecognitionStrategy?.toTfJson(),
  };
}

/// `audio_recognition_strategy` — derived from the provider schema description.
extension type const Lexv2modelsSlotTypeAudioRecognitionStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  Lexv2modelsSlotTypeAudioRecognitionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  Lexv2modelsSlotTypeAudioRecognitionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const Lexv2modelsSlotTypeAudioRecognitionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const useslotvaluesascustomvocabulary =
      Lexv2modelsSlotTypeAudioRecognitionStrategy._(
        TfArgLiteral('UseSlotValuesAsCustomVocabulary'),
      );

  static const List<Lexv2modelsSlotTypeAudioRecognitionStrategy> values = [
    useslotvaluesascustomvocabulary,
  ];
}

/// Typed helper for the `value_selection_setting.regex_filter` block of
/// `aws_lexv2models_slot_type` (derived from provider schema).
@immutable
final class Lexv2modelsSlotTypeRegexFilter {
  const Lexv2modelsSlotTypeRegexFilter({required this.pattern});

  final TfArg<String> pattern;

  @internal
  Map<String, Object?> encode() => {'pattern': pattern.toTfJson()};
}

/// Factory wrapper for `aws_lexv2models_slot_type`.
final class AwsLexv2modelsSlotType extends Resource {
  static const String tfType = 'aws_lexv2models_slot_type';

  AwsLexv2modelsSlotType(
    super.localName, {
    required TfArg<String> botId,
    required TfArg<String> botVersion,
    TfArg<String>? description,
    required TfArg<String> localeId,
    required TfArg<String> name,
    TfArg<String>? parentSlotTypeSignature,
    TfArg<String>? region,
    List<Lexv2modelsSlotTypeCompositeSlotTypeSetting>? compositeSlotTypeSetting,
    List<Lexv2modelsSlotTypeExternalSourceSetting>? externalSourceSetting,
    List<Lexv2modelsSlotTypeValues>? slotTypeValues,
    List<Lexv2modelsSlotTypeValueSelectionSetting>? valueSelectionSetting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_id': botId,
           'bot_version': botVersion,
           'description': ?description,
           'locale_id': localeId,
           'name': name,
           'parent_slot_type_signature': ?parentSlotTypeSignature,
           'region': ?region,
           if (compositeSlotTypeSetting != null)
             'composite_slot_type_setting': TfArg.literal([
               for (final e in compositeSlotTypeSetting) e.encode(),
             ]),
           if (externalSourceSetting != null)
             'external_source_setting': TfArg.literal([
               for (final e in externalSourceSetting) e.encode(),
             ]),
           if (slotTypeValues != null)
             'slot_type_values': TfArg.literal([
               for (final e in slotTypeValues) e.encode(),
             ]),
           if (valueSelectionSetting != null)
             'value_selection_setting': TfArg.literal([
               for (final e in valueSelectionSetting) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsSlotTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsSlotType>`.
  RefTo<AwsLexv2modelsSlotType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `slot_type_id` attribute.
  TfRef<String> get slotTypeId => TfRef.attribute<String>(this, 'slot_type_id');

  /// Reference to `bot_id` attribute.
  TfRef<String> get botId => TfRef.attribute<String>(this, 'bot_id');

  /// Reference to `bot_version` attribute.
  TfRef<String> get botVersion => TfRef.attribute<String>(this, 'bot_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `locale_id` attribute.
  TfRef<String> get localeId => TfRef.attribute<String>(this, 'locale_id');

  /// Reference to `parent_slot_type_signature` attribute.
  TfRef<String> get parentSlotTypeSignature =>
      TfRef.attribute<String>(this, 'parent_slot_type_signature');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

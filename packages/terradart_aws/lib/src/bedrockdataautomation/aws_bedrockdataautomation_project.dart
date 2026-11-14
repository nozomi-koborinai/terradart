// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockdataautomation_project`.
const Set<String> _awsBedrockdataautomationProjectSensitive = <String>{};

/// Bedrockdataautomation Project enum for `type`.
extension type const BedrockdataautomationProjectType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectType.arg(TfArg<String> arg) : this._(arg);

  static const async = BedrockdataautomationProjectType._(
    TfArgLiteral('ASYNC'),
  );
  static const sync = BedrockdataautomationProjectType._(TfArgLiteral('SYNC'));

  static const List<BedrockdataautomationProjectType> values = [async, sync];
}

/// Typed helper for the `custom_output_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectCustomOutputConfiguration {
  const BedrockdataautomationProjectCustomOutputConfiguration({
    this.blueprint,
    this.document,
  });

  final List<BedrockdataautomationProjectBlueprint>? blueprint;

  final List<BedrockdataautomationProjectCustomOutputConfigurationDocument>?
  document;

  @internal
  Map<String, Object?> encode() => {
    if (blueprint != null)
      'blueprint': [for (final e in blueprint!) e.encode()],
    if (document != null) 'document': [for (final e in document!) e.encode()],
  };
}

/// Typed helper for the `custom_output_configuration.blueprint` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectBlueprint {
  const BedrockdataautomationProjectBlueprint({
    required this.blueprintArn,
    this.blueprintStage,
    this.blueprintVersion,
  });

  final TfArg<String> blueprintArn;

  final TfArg<String>? blueprintStage;

  final TfArg<String>? blueprintVersion;

  @internal
  Map<String, Object?> encode() => {
    'blueprint_arn': blueprintArn.toTfJson(),
    'blueprint_stage': ?blueprintStage?.toTfJson(),
    'blueprint_version': ?blueprintVersion?.toTfJson(),
  };
}

/// Typed helper for the `custom_output_configuration.document` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectCustomOutputConfigurationDocument {
  const BedrockdataautomationProjectCustomOutputConfigurationDocument({
    this.fallbackBlueprint,
  });

  final List<BedrockdataautomationProjectFallbackBlueprint>? fallbackBlueprint;

  @internal
  Map<String, Object?> encode() => {
    if (fallbackBlueprint != null)
      'fallback_blueprint': [for (final e in fallbackBlueprint!) e.encode()],
  };
}

/// Typed helper for the `custom_output_configuration.document.fallback_blueprint` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectFallbackBlueprint {
  const BedrockdataautomationProjectFallbackBlueprint({
    required this.blueprintArn,
    this.blueprintStage,
    this.blueprintVersion,
  });

  final TfArg<String> blueprintArn;

  final TfArg<String>? blueprintStage;

  final TfArg<String>? blueprintVersion;

  @internal
  Map<String, Object?> encode() => {
    'blueprint_arn': blueprintArn.toTfJson(),
    'blueprint_stage': ?blueprintStage?.toTfJson(),
    'blueprint_version': ?blueprintVersion?.toTfJson(),
  };
}

/// Typed helper for the `data_automation_library_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectDataAutomationLibraryConfiguration {
  const BedrockdataautomationProjectDataAutomationLibraryConfiguration({
    this.library,
  });

  final List<BedrockdataautomationProjectLibrary>? library;

  @internal
  Map<String, Object?> encode() => {
    if (library != null) 'library': [for (final e in library!) e.encode()],
  };
}

/// Typed helper for the `data_automation_library_configuration.library` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectLibrary {
  const BedrockdataautomationProjectLibrary({required this.libraryArn});

  final TfArg<String> libraryArn;

  @internal
  Map<String, Object?> encode() => {'library_arn': libraryArn.toTfJson()};
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectEncryptionConfiguration {
  const BedrockdataautomationProjectEncryptionConfiguration({
    this.kmsEncryptionContext,
    required this.kmsKeyId,
  });

  final TfArg<Map<String, String>>? kmsEncryptionContext;

  final RefTo<AwsKmsKey> kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'kms_encryption_context': ?kmsEncryptionContext?.toTfJson(),
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `override_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOverrideConfiguration {
  const BedrockdataautomationProjectOverrideConfiguration({
    this.audio,
    this.document,
    this.image,
    this.modalityRouting,
    this.video,
  });

  final List<BedrockdataautomationProjectOverrideConfigurationAudio>? audio;

  final List<BedrockdataautomationProjectOverrideConfigurationDocument>?
  document;

  final List<BedrockdataautomationProjectOverrideConfigurationImage>? image;

  final List<BedrockdataautomationProjectModalityRouting>? modalityRouting;

  final List<BedrockdataautomationProjectOverrideConfigurationVideo>? video;

  @internal
  Map<String, Object?> encode() => {
    if (audio != null) 'audio': [for (final e in audio!) e.encode()],
    if (document != null) 'document': [for (final e in document!) e.encode()],
    if (image != null) 'image': [for (final e in image!) e.encode()],
    if (modalityRouting != null)
      'modality_routing': [for (final e in modalityRouting!) e.encode()],
    if (video != null) 'video': [for (final e in video!) e.encode()],
  };
}

/// Typed helper for the `override_configuration.audio` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOverrideConfigurationAudio {
  const BedrockdataautomationProjectOverrideConfigurationAudio({
    this.languageConfiguration,
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  final List<BedrockdataautomationProjectLanguageConfiguration>?
  languageConfiguration;

  final List<BedrockdataautomationProjectModalityProcessing>?
  modalityProcessing;

  final List<BedrockdataautomationProjectSensitiveDataConfiguration>?
  sensitiveDataConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (languageConfiguration != null)
      'language_configuration': [
        for (final e in languageConfiguration!) e.encode(),
      ],
    if (modalityProcessing != null)
      'modality_processing': [for (final e in modalityProcessing!) e.encode()],
    if (sensitiveDataConfiguration != null)
      'sensitive_data_configuration': [
        for (final e in sensitiveDataConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `override_configuration.audio.language_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectLanguageConfiguration {
  const BedrockdataautomationProjectLanguageConfiguration({
    this.generativeOutputLanguage,
    this.identifyMultipleLanguages,
    this.inputLanguages,
  });

  final BedrockdataautomationProjectGenerativeOutputLanguage?
  generativeOutputLanguage;

  final TfArg<bool>? identifyMultipleLanguages;

  final EnumList<BedrockdataautomationProjectInputLanguages>? inputLanguages;

  @internal
  Map<String, Object?> encode() => {
    'generative_output_language': ?generativeOutputLanguage?.toTfJson(),
    'identify_multiple_languages': ?identifyMultipleLanguages?.toTfJson(),
    'input_languages': ?inputLanguages?.toTfJson(),
  };
}

/// `generative_output_language` — derived from the provider schema description.
extension type const BedrockdataautomationProjectGenerativeOutputLanguage._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectGenerativeOutputLanguage.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectGenerativeOutputLanguage.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockdataautomationProjectGenerativeOutputLanguage.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const defaultCase =
      BedrockdataautomationProjectGenerativeOutputLanguage._(
        TfArgLiteral('DEFAULT'),
      );
  static const en = BedrockdataautomationProjectGenerativeOutputLanguage._(
    TfArgLiteral('EN'),
  );

  static const List<BedrockdataautomationProjectGenerativeOutputLanguage>
  values = [defaultCase, en];
}

/// `input_languages` — derived from the provider schema description.
extension type const BedrockdataautomationProjectInputLanguages._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectInputLanguages.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectInputLanguages.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectInputLanguages.arg(TfArg<String> arg)
    : this._(arg);

  static const en = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('EN'),
  );
  static const de = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('DE'),
  );
  static const es = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('ES'),
  );
  static const fr = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('FR'),
  );
  static const it = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('IT'),
  );
  static const pt = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('PT'),
  );
  static const ja = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('JA'),
  );
  static const ko = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('KO'),
  );
  static const cn = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('CN'),
  );
  static const tw = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('TW'),
  );
  static const hk = BedrockdataautomationProjectInputLanguages._(
    TfArgLiteral('HK'),
  );

  static const List<BedrockdataautomationProjectInputLanguages> values = [
    en,
    de,
    es,
    fr,
    it,
    pt,
    ja,
    ko,
    cn,
    tw,
    hk,
  ];
}

/// Typed helper for the `override_configuration.audio.modality_processing` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockdataautomationProjectModalityProcessing {
  const BedrockdataautomationProjectModalityProcessing({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `override_configuration.audio.sensitive_data_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockdataautomationProjectSensitiveDataConfiguration {
  const BedrockdataautomationProjectSensitiveDataConfiguration({
    required this.detectionMode,
    this.detectionScope,
    this.piiEntitiesConfiguration,
  });

  final TfArg<String> detectionMode;

  final TfArg<List<String>>? detectionScope;

  final List<BedrockdataautomationProjectPiiEntitiesConfiguration>?
  piiEntitiesConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'detection_mode': detectionMode.toTfJson(),
    'detection_scope': ?detectionScope?.toTfJson(),
    if (piiEntitiesConfiguration != null)
      'pii_entities_configuration': [
        for (final e in piiEntitiesConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `override_configuration.audio.sensitive_data_configuration.pii_entities_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockdataautomationProjectPiiEntitiesConfiguration {
  const BedrockdataautomationProjectPiiEntitiesConfiguration({
    this.piiEntityTypes,
    this.redactionMaskMode,
  });

  final TfArg<List<String>>? piiEntityTypes;

  final TfArg<String>? redactionMaskMode;

  @internal
  Map<String, Object?> encode() => {
    'pii_entity_types': ?piiEntityTypes?.toTfJson(),
    'redaction_mask_mode': ?redactionMaskMode?.toTfJson(),
  };
}

/// Typed helper for the `override_configuration.document` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOverrideConfigurationDocument {
  const BedrockdataautomationProjectOverrideConfigurationDocument({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
    this.splitter,
  });

  final List<BedrockdataautomationProjectModalityProcessing>?
  modalityProcessing;

  final List<BedrockdataautomationProjectSensitiveDataConfiguration>?
  sensitiveDataConfiguration;

  final List<BedrockdataautomationProjectSplitter>? splitter;

  @internal
  Map<String, Object?> encode() => {
    if (modalityProcessing != null)
      'modality_processing': [for (final e in modalityProcessing!) e.encode()],
    if (sensitiveDataConfiguration != null)
      'sensitive_data_configuration': [
        for (final e in sensitiveDataConfiguration!) e.encode(),
      ],
    if (splitter != null) 'splitter': [for (final e in splitter!) e.encode()],
  };
}

/// Typed helper for the `override_configuration.document.splitter` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectSplitter {
  const BedrockdataautomationProjectSplitter({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `override_configuration.image` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOverrideConfigurationImage {
  const BedrockdataautomationProjectOverrideConfigurationImage({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  final List<BedrockdataautomationProjectModalityProcessing>?
  modalityProcessing;

  final List<BedrockdataautomationProjectSensitiveDataConfiguration>?
  sensitiveDataConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (modalityProcessing != null)
      'modality_processing': [for (final e in modalityProcessing!) e.encode()],
    if (sensitiveDataConfiguration != null)
      'sensitive_data_configuration': [
        for (final e in sensitiveDataConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `override_configuration.modality_routing` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectModalityRouting {
  const BedrockdataautomationProjectModalityRouting({
    this.jpeg,
    this.mov,
    this.mp4,
    this.png,
  });

  final BedrockdataautomationProjectJpeg? jpeg;

  final BedrockdataautomationProjectMov? mov;

  final BedrockdataautomationProjectMp4? mp4;

  final BedrockdataautomationProjectPng? png;

  @internal
  Map<String, Object?> encode() => {
    'jpeg': ?jpeg?.toTfJson(),
    'mov': ?mov?.toTfJson(),
    'mp4': ?mp4?.toTfJson(),
    'png': ?png?.toTfJson(),
  };
}

/// `jpeg` — derived from the provider schema description.
extension type const BedrockdataautomationProjectJpeg._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectJpeg.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectJpeg.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectJpeg.arg(TfArg<String> arg) : this._(arg);

  static const image = BedrockdataautomationProjectJpeg._(
    TfArgLiteral('IMAGE'),
  );
  static const document = BedrockdataautomationProjectJpeg._(
    TfArgLiteral('DOCUMENT'),
  );
  static const audio = BedrockdataautomationProjectJpeg._(
    TfArgLiteral('AUDIO'),
  );
  static const video = BedrockdataautomationProjectJpeg._(
    TfArgLiteral('VIDEO'),
  );

  static const List<BedrockdataautomationProjectJpeg> values = [
    image,
    document,
    audio,
    video,
  ];
}

/// `mov` — derived from the provider schema description.
extension type const BedrockdataautomationProjectMov._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectMov.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectMov.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectMov.arg(TfArg<String> arg) : this._(arg);

  static const image = BedrockdataautomationProjectMov._(TfArgLiteral('IMAGE'));
  static const document = BedrockdataautomationProjectMov._(
    TfArgLiteral('DOCUMENT'),
  );
  static const audio = BedrockdataautomationProjectMov._(TfArgLiteral('AUDIO'));
  static const video = BedrockdataautomationProjectMov._(TfArgLiteral('VIDEO'));

  static const List<BedrockdataautomationProjectMov> values = [
    image,
    document,
    audio,
    video,
  ];
}

/// `mp4` — derived from the provider schema description.
extension type const BedrockdataautomationProjectMp4._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectMp4.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectMp4.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectMp4.arg(TfArg<String> arg) : this._(arg);

  static const image = BedrockdataautomationProjectMp4._(TfArgLiteral('IMAGE'));
  static const document = BedrockdataautomationProjectMp4._(
    TfArgLiteral('DOCUMENT'),
  );
  static const audio = BedrockdataautomationProjectMp4._(TfArgLiteral('AUDIO'));
  static const video = BedrockdataautomationProjectMp4._(TfArgLiteral('VIDEO'));

  static const List<BedrockdataautomationProjectMp4> values = [
    image,
    document,
    audio,
    video,
  ];
}

/// `png` — derived from the provider schema description.
extension type const BedrockdataautomationProjectPng._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectPng.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectPng.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectPng.arg(TfArg<String> arg) : this._(arg);

  static const image = BedrockdataautomationProjectPng._(TfArgLiteral('IMAGE'));
  static const document = BedrockdataautomationProjectPng._(
    TfArgLiteral('DOCUMENT'),
  );
  static const audio = BedrockdataautomationProjectPng._(TfArgLiteral('AUDIO'));
  static const video = BedrockdataautomationProjectPng._(TfArgLiteral('VIDEO'));

  static const List<BedrockdataautomationProjectPng> values = [
    image,
    document,
    audio,
    video,
  ];
}

/// Typed helper for the `override_configuration.video` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOverrideConfigurationVideo {
  const BedrockdataautomationProjectOverrideConfigurationVideo({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
  });

  final List<BedrockdataautomationProjectModalityProcessing>?
  modalityProcessing;

  final List<BedrockdataautomationProjectSensitiveDataConfiguration>?
  sensitiveDataConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (modalityProcessing != null)
      'modality_processing': [for (final e in modalityProcessing!) e.encode()],
    if (sensitiveDataConfiguration != null)
      'sensitive_data_configuration': [
        for (final e in sensitiveDataConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `standard_output_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectStandardOutputConfiguration {
  const BedrockdataautomationProjectStandardOutputConfiguration({
    this.audio,
    this.document,
    this.image,
    this.video,
  });

  final List<BedrockdataautomationProjectStandardOutputConfigurationAudio>?
  audio;

  final List<BedrockdataautomationProjectStandardOutputConfigurationDocument>?
  document;

  final List<BedrockdataautomationProjectStandardOutputConfigurationImage>?
  image;

  final List<BedrockdataautomationProjectStandardOutputConfigurationVideo>?
  video;

  @internal
  Map<String, Object?> encode() => {
    if (audio != null) 'audio': [for (final e in audio!) e.encode()],
    if (document != null) 'document': [for (final e in document!) e.encode()],
    if (image != null) 'image': [for (final e in image!) e.encode()],
    if (video != null) 'video': [for (final e in video!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.audio` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectStandardOutputConfigurationAudio {
  const BedrockdataautomationProjectStandardOutputConfigurationAudio({
    this.extraction,
    this.generativeField,
  });

  final List<BedrockdataautomationProjectAudioExtraction>? extraction;

  final List<BedrockdataautomationProjectAudioGenerativeField>? generativeField;

  @internal
  Map<String, Object?> encode() => {
    if (extraction != null)
      'extraction': [for (final e in extraction!) e.encode()],
    if (generativeField != null)
      'generative_field': [for (final e in generativeField!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.audio.extraction` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectAudioExtraction {
  const BedrockdataautomationProjectAudioExtraction({this.category});

  final List<BedrockdataautomationProjectAudioCategory>? category;

  @internal
  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.audio.extraction.category` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectAudioCategory {
  const BedrockdataautomationProjectAudioCategory({
    required this.state,
    this.types,
    this.typeConfiguration,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectAudioExtractionCategoryTypes>?
  types;

  final List<BedrockdataautomationProjectTypeConfiguration>? typeConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
    if (typeConfiguration != null)
      'type_configuration': [for (final e in typeConfiguration!) e.encode()],
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectAudioExtractionCategoryTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectAudioExtractionCategoryTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectAudioExtractionCategoryTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockdataautomationProjectAudioExtractionCategoryTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const audioContentModeration =
      BedrockdataautomationProjectAudioExtractionCategoryTypes._(
        TfArgLiteral('AUDIO_CONTENT_MODERATION'),
      );
  static const transcript =
      BedrockdataautomationProjectAudioExtractionCategoryTypes._(
        TfArgLiteral('TRANSCRIPT'),
      );
  static const topicContentModeration =
      BedrockdataautomationProjectAudioExtractionCategoryTypes._(
        TfArgLiteral('TOPIC_CONTENT_MODERATION'),
      );

  static const List<BedrockdataautomationProjectAudioExtractionCategoryTypes>
  values = [audioContentModeration, transcript, topicContentModeration];
}

/// Typed helper for the `standard_output_configuration.audio.extraction.category.type_configuration` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectTypeConfiguration {
  const BedrockdataautomationProjectTypeConfiguration({this.transcript});

  final List<BedrockdataautomationProjectTranscript>? transcript;

  @internal
  Map<String, Object?> encode() => {
    if (transcript != null)
      'transcript': [for (final e in transcript!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.audio.extraction.category.type_configuration.transcript` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectTranscript {
  const BedrockdataautomationProjectTranscript({
    this.channelLabeling,
    this.speakerLabeling,
  });

  final List<BedrockdataautomationProjectChannelLabeling>? channelLabeling;

  final List<BedrockdataautomationProjectSpeakerLabeling>? speakerLabeling;

  @internal
  Map<String, Object?> encode() => {
    if (channelLabeling != null)
      'channel_labeling': [for (final e in channelLabeling!) e.encode()],
    if (speakerLabeling != null)
      'speaker_labeling': [for (final e in speakerLabeling!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.audio.extraction.category.type_configuration.transcript.channel_labeling` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectChannelLabeling {
  const BedrockdataautomationProjectChannelLabeling({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `standard_output_configuration.audio.extraction.category.type_configuration.transcript.speaker_labeling` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectSpeakerLabeling {
  const BedrockdataautomationProjectSpeakerLabeling({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `standard_output_configuration.audio.generative_field` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectAudioGenerativeField {
  const BedrockdataautomationProjectAudioGenerativeField({
    required this.state,
    this.types,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectAudioTypes>? types;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectAudioTypes._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectAudioTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectAudioTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectAudioTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const audioSummary = BedrockdataautomationProjectAudioTypes._(
    TfArgLiteral('AUDIO_SUMMARY'),
  );
  static const iab = BedrockdataautomationProjectAudioTypes._(
    TfArgLiteral('IAB'),
  );
  static const topicSummary = BedrockdataautomationProjectAudioTypes._(
    TfArgLiteral('TOPIC_SUMMARY'),
  );

  static const List<BedrockdataautomationProjectAudioTypes> values = [
    audioSummary,
    iab,
    topicSummary,
  ];
}

/// Typed helper for the `standard_output_configuration.document` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectStandardOutputConfigurationDocument {
  const BedrockdataautomationProjectStandardOutputConfigurationDocument({
    this.extraction,
    this.generativeField,
    this.outputFormat,
  });

  final List<BedrockdataautomationProjectDocumentExtraction>? extraction;

  final List<BedrockdataautomationProjectDocumentGenerativeField>?
  generativeField;

  final List<BedrockdataautomationProjectOutputFormat>? outputFormat;

  @internal
  Map<String, Object?> encode() => {
    if (extraction != null)
      'extraction': [for (final e in extraction!) e.encode()],
    if (generativeField != null)
      'generative_field': [for (final e in generativeField!) e.encode()],
    if (outputFormat != null)
      'output_format': [for (final e in outputFormat!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.document.extraction` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectDocumentExtraction {
  const BedrockdataautomationProjectDocumentExtraction({
    this.boundingBox,
    this.granularity,
  });

  final List<BedrockdataautomationProjectBoundingBox>? boundingBox;

  final List<BedrockdataautomationProjectGranularity>? granularity;

  @internal
  Map<String, Object?> encode() => {
    if (boundingBox != null)
      'bounding_box': [for (final e in boundingBox!) e.encode()],
    if (granularity != null)
      'granularity': [for (final e in granularity!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.document.extraction.bounding_box` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockdataautomationProjectBoundingBox {
  const BedrockdataautomationProjectBoundingBox({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `standard_output_configuration.document.extraction.granularity` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectGranularity {
  const BedrockdataautomationProjectGranularity({this.types});

  final EnumList<BedrockdataautomationProjectGranularityTypes>? types;

  @internal
  Map<String, Object?> encode() => {'types': ?types?.toTfJson()};
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectGranularityTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectGranularityTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectGranularityTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectGranularityTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const document = BedrockdataautomationProjectGranularityTypes._(
    TfArgLiteral('DOCUMENT'),
  );
  static const page = BedrockdataautomationProjectGranularityTypes._(
    TfArgLiteral('PAGE'),
  );
  static const element = BedrockdataautomationProjectGranularityTypes._(
    TfArgLiteral('ELEMENT'),
  );
  static const word = BedrockdataautomationProjectGranularityTypes._(
    TfArgLiteral('WORD'),
  );
  static const line = BedrockdataautomationProjectGranularityTypes._(
    TfArgLiteral('LINE'),
  );

  static const List<BedrockdataautomationProjectGranularityTypes> values = [
    document,
    page,
    element,
    word,
    line,
  ];
}

/// Typed helper for the `standard_output_configuration.document.generative_field` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectDocumentGenerativeField {
  const BedrockdataautomationProjectDocumentGenerativeField({
    required this.state,
  });

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `standard_output_configuration.document.output_format` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectOutputFormat {
  const BedrockdataautomationProjectOutputFormat({
    this.additionalFileFormat,
    this.textFormat,
  });

  final List<BedrockdataautomationProjectAdditionalFileFormat>?
  additionalFileFormat;

  final List<BedrockdataautomationProjectTextFormat>? textFormat;

  @internal
  Map<String, Object?> encode() => {
    if (additionalFileFormat != null)
      'additional_file_format': [
        for (final e in additionalFileFormat!) e.encode(),
      ],
    if (textFormat != null)
      'text_format': [for (final e in textFormat!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.document.output_format.additional_file_format` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectAdditionalFileFormat {
  const BedrockdataautomationProjectAdditionalFileFormat({required this.state});

  final TfArg<String> state;

  @internal
  Map<String, Object?> encode() => {'state': state.toTfJson()};
}

/// Typed helper for the `standard_output_configuration.document.output_format.text_format` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectTextFormat {
  const BedrockdataautomationProjectTextFormat({this.types});

  final EnumList<BedrockdataautomationProjectTextFormatTypes>? types;

  @internal
  Map<String, Object?> encode() => {'types': ?types?.toTfJson()};
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectTextFormatTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectTextFormatTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectTextFormatTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectTextFormatTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const plainText = BedrockdataautomationProjectTextFormatTypes._(
    TfArgLiteral('PLAIN_TEXT'),
  );
  static const markdown = BedrockdataautomationProjectTextFormatTypes._(
    TfArgLiteral('MARKDOWN'),
  );
  static const html = BedrockdataautomationProjectTextFormatTypes._(
    TfArgLiteral('HTML'),
  );
  static const csv = BedrockdataautomationProjectTextFormatTypes._(
    TfArgLiteral('CSV'),
  );

  static const List<BedrockdataautomationProjectTextFormatTypes> values = [
    plainText,
    markdown,
    html,
    csv,
  ];
}

/// Typed helper for the `standard_output_configuration.image` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectStandardOutputConfigurationImage {
  const BedrockdataautomationProjectStandardOutputConfigurationImage({
    this.extraction,
    this.generativeField,
  });

  final List<BedrockdataautomationProjectImageExtraction>? extraction;

  final List<BedrockdataautomationProjectImageGenerativeField>? generativeField;

  @internal
  Map<String, Object?> encode() => {
    if (extraction != null)
      'extraction': [for (final e in extraction!) e.encode()],
    if (generativeField != null)
      'generative_field': [for (final e in generativeField!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.image.extraction` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectImageExtraction {
  const BedrockdataautomationProjectImageExtraction({
    this.boundingBox,
    this.category,
  });

  final List<BedrockdataautomationProjectBoundingBox>? boundingBox;

  final List<BedrockdataautomationProjectImageCategory>? category;

  @internal
  Map<String, Object?> encode() => {
    if (boundingBox != null)
      'bounding_box': [for (final e in boundingBox!) e.encode()],
    if (category != null) 'category': [for (final e in category!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.image.extraction.category` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectImageCategory {
  const BedrockdataautomationProjectImageCategory({
    required this.state,
    this.types,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectImageExtractionCategoryTypes>?
  types;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectImageExtractionCategoryTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectImageExtractionCategoryTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectImageExtractionCategoryTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockdataautomationProjectImageExtractionCategoryTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const contentModeration =
      BedrockdataautomationProjectImageExtractionCategoryTypes._(
        TfArgLiteral('CONTENT_MODERATION'),
      );
  static const textDetection =
      BedrockdataautomationProjectImageExtractionCategoryTypes._(
        TfArgLiteral('TEXT_DETECTION'),
      );
  static const logos =
      BedrockdataautomationProjectImageExtractionCategoryTypes._(
        TfArgLiteral('LOGOS'),
      );

  static const List<BedrockdataautomationProjectImageExtractionCategoryTypes>
  values = [contentModeration, textDetection, logos];
}

/// Typed helper for the `standard_output_configuration.image.generative_field` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectImageGenerativeField {
  const BedrockdataautomationProjectImageGenerativeField({
    required this.state,
    this.types,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectImageTypes>? types;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectImageTypes._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectImageTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectImageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectImageTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const imageSummary = BedrockdataautomationProjectImageTypes._(
    TfArgLiteral('IMAGE_SUMMARY'),
  );
  static const iab = BedrockdataautomationProjectImageTypes._(
    TfArgLiteral('IAB'),
  );

  static const List<BedrockdataautomationProjectImageTypes> values = [
    imageSummary,
    iab,
  ];
}

/// Typed helper for the `standard_output_configuration.video` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectStandardOutputConfigurationVideo {
  const BedrockdataautomationProjectStandardOutputConfigurationVideo({
    this.extraction,
    this.generativeField,
  });

  final List<BedrockdataautomationProjectVideoExtraction>? extraction;

  final List<BedrockdataautomationProjectVideoGenerativeField>? generativeField;

  @internal
  Map<String, Object?> encode() => {
    if (extraction != null)
      'extraction': [for (final e in extraction!) e.encode()],
    if (generativeField != null)
      'generative_field': [for (final e in generativeField!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.video.extraction` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectVideoExtraction {
  const BedrockdataautomationProjectVideoExtraction({
    this.boundingBox,
    this.category,
  });

  final List<BedrockdataautomationProjectBoundingBox>? boundingBox;

  final List<BedrockdataautomationProjectVideoCategory>? category;

  @internal
  Map<String, Object?> encode() => {
    if (boundingBox != null)
      'bounding_box': [for (final e in boundingBox!) e.encode()],
    if (category != null) 'category': [for (final e in category!) e.encode()],
  };
}

/// Typed helper for the `standard_output_configuration.video.extraction.category` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectVideoCategory {
  const BedrockdataautomationProjectVideoCategory({
    required this.state,
    this.types,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectVideoExtractionCategoryTypes>?
  types;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectVideoExtractionCategoryTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  BedrockdataautomationProjectVideoExtractionCategoryTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectVideoExtractionCategoryTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockdataautomationProjectVideoExtractionCategoryTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const contentModeration =
      BedrockdataautomationProjectVideoExtractionCategoryTypes._(
        TfArgLiteral('CONTENT_MODERATION'),
      );
  static const textDetection =
      BedrockdataautomationProjectVideoExtractionCategoryTypes._(
        TfArgLiteral('TEXT_DETECTION'),
      );
  static const transcript =
      BedrockdataautomationProjectVideoExtractionCategoryTypes._(
        TfArgLiteral('TRANSCRIPT'),
      );
  static const logos =
      BedrockdataautomationProjectVideoExtractionCategoryTypes._(
        TfArgLiteral('LOGOS'),
      );

  static const List<BedrockdataautomationProjectVideoExtractionCategoryTypes>
  values = [contentModeration, textDetection, transcript, logos];
}

/// Typed helper for the `standard_output_configuration.video.generative_field` block of
/// `aws_bedrockdataautomation_project` (derived from provider schema).
@immutable
final class BedrockdataautomationProjectVideoGenerativeField {
  const BedrockdataautomationProjectVideoGenerativeField({
    required this.state,
    this.types,
  });

  final TfArg<String> state;

  final EnumList<BedrockdataautomationProjectVideoTypes>? types;

  @internal
  Map<String, Object?> encode() => {
    'state': state.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// `types` — derived from the provider schema description.
extension type const BedrockdataautomationProjectVideoTypes._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationProjectVideoTypes.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationProjectVideoTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationProjectVideoTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const videoSummary = BedrockdataautomationProjectVideoTypes._(
    TfArgLiteral('VIDEO_SUMMARY'),
  );
  static const iab = BedrockdataautomationProjectVideoTypes._(
    TfArgLiteral('IAB'),
  );
  static const chapterSummary = BedrockdataautomationProjectVideoTypes._(
    TfArgLiteral('CHAPTER_SUMMARY'),
  );

  static const List<BedrockdataautomationProjectVideoTypes> values = [
    videoSummary,
    iab,
    chapterSummary,
  ];
}

/// Factory wrapper for `aws_bedrockdataautomation_project`.
final class AwsBedrockdataautomationProject extends Resource {
  static const String tfType = 'aws_bedrockdataautomation_project';

  AwsBedrockdataautomationProject(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    BedrockdataautomationProjectType? type,
    List<BedrockdataautomationProjectCustomOutputConfiguration>?
    customOutputConfiguration,
    List<BedrockdataautomationProjectDataAutomationLibraryConfiguration>?
    dataAutomationLibraryConfiguration,
    List<BedrockdataautomationProjectEncryptionConfiguration>?
    encryptionConfiguration,
    List<BedrockdataautomationProjectOverrideConfiguration>?
    overrideConfiguration,
    List<BedrockdataautomationProjectStandardOutputConfiguration>?
    standardOutputConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           if (customOutputConfiguration != null)
             'custom_output_configuration': TfArg.literal([
               for (final e in customOutputConfiguration) e.encode(),
             ]),
           if (dataAutomationLibraryConfiguration != null)
             'data_automation_library_configuration': TfArg.literal([
               for (final e in dataAutomationLibraryConfiguration) e.encode(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
           if (overrideConfiguration != null)
             'override_configuration': TfArg.literal([
               for (final e in overrideConfiguration) e.encode(),
             ]),
           if (standardOutputConfiguration != null)
             'standard_output_configuration': TfArg.literal([
               for (final e in standardOutputConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockdataautomationProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockdataautomationProject>`.
  RefTo<AwsBedrockdataautomationProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `project_stage` attribute.
  TfRef<String> get projectStage =>
      TfRef.attribute<String>(this, 'project_stage');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

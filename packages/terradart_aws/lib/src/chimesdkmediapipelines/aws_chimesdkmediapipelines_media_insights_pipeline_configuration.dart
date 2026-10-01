// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkmediapipelines_media_insights_pipeline_configuration`.
const Set<String>
_awsChimesdkmediapipelinesMediaInsightsPipelineConfigurationSensitive =
    <String>{};

/// Typed helper for the `elements` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements({
    required this.type,
    this.amazonTranscribeCallAnalyticsProcessorConfiguration,
    this.amazonTranscribeProcessorConfiguration,
    this.kinesisDataStreamSinkConfiguration,
    this.lambdaFunctionSinkConfiguration,
    this.s3RecordingSinkConfiguration,
    this.snsTopicSinkConfiguration,
    this.sqsQueueSinkConfiguration,
    this.voiceAnalyticsProcessorConfiguration,
  });

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType type;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeCallAnalyticsProcessorConfiguration?
  amazonTranscribeCallAnalyticsProcessorConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeProcessorConfiguration?
  amazonTranscribeProcessorConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKinesisDataStreamSinkConfiguration?
  kinesisDataStreamSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLambdaFunctionSinkConfiguration?
  lambdaFunctionSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationS3RecordingSinkConfiguration?
  s3RecordingSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSnsTopicSinkConfiguration?
  snsTopicSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSqsQueueSinkConfiguration?
  sqsQueueSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceAnalyticsProcessorConfiguration?
  voiceAnalyticsProcessorConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'amazon_transcribe_call_analytics_processor_configuration':
        ?amazonTranscribeCallAnalyticsProcessorConfiguration?.encode(),
    'amazon_transcribe_processor_configuration':
        ?amazonTranscribeProcessorConfiguration?.encode(),
    'kinesis_data_stream_sink_configuration':
        ?kinesisDataStreamSinkConfiguration?.encode(),
    'lambda_function_sink_configuration': ?lambdaFunctionSinkConfiguration
        ?.encode(),
    's3_recording_sink_configuration': ?s3RecordingSinkConfiguration?.encode(),
    'sns_topic_sink_configuration': ?snsTopicSinkConfiguration?.encode(),
    'sqs_queue_sink_configuration': ?sqsQueueSinkConfiguration?.encode(),
    'voice_analytics_processor_configuration':
        ?voiceAnalyticsProcessorConfiguration?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const amazontranscribecallanalyticsprocessor =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('AmazonTranscribeCallAnalyticsProcessor'),
      );
  static const voiceanalyticsprocessor =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('VoiceAnalyticsProcessor'),
      );
  static const amazontranscribeprocessor =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('AmazonTranscribeProcessor'),
      );
  static const kinesisdatastreamsink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('KinesisDataStreamSink'),
      );
  static const lambdafunctionsink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('LambdaFunctionSink'),
      );
  static const sqsqueuesink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('SqsQueueSink'),
      );
  static const snstopicsink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('SnsTopicSink'),
      );
  static const s3recordingsink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('S3RecordingSink'),
      );
  static const voiceenhancementsink =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType._(
        TfArgLiteral('VoiceEnhancementSink'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationType
  >
  values = [
    amazontranscribecallanalyticsprocessor,
    voiceanalyticsprocessor,
    amazontranscribeprocessor,
    kinesisdatastreamsink,
    lambdafunctionsink,
    sqsqueuesink,
    snstopicsink,
    s3recordingsink,
    voiceenhancementsink,
  ];
}

/// Typed helper for the `elements.amazon_transcribe_call_analytics_processor_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeCallAnalyticsProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeCallAnalyticsProcessorConfiguration({
    this.callAnalyticsStreamCategories,
    this.contentIdentificationType,
    this.contentRedactionType,
    this.enablePartialResultsStabilization,
    this.filterPartialResults,
    required this.languageCode,
    this.languageModelName,
    this.partialResultsStability,
    this.piiEntityTypes,
    this.vocabularyFilterMethod,
    this.vocabularyFilterName,
    this.vocabularyName,
    this.postCallAnalyticsSettings,
  });

  final TfArg<List<String>>? callAnalyticsStreamCategories;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType?
  contentIdentificationType;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType?
  contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode
  languageCode;

  final TfArg<String>? languageModelName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability?
  partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod?
  vocabularyFilterMethod;

  final TfArg<String>? vocabularyFilterName;

  final TfArg<String>? vocabularyName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPostCallAnalyticsSettings?
  postCallAnalyticsSettings;

  Map<String, Object?> encode() => {
    'call_analytics_stream_categories': ?callAnalyticsStreamCategories
        ?.toTfJson(),
    'content_identification_type': ?contentIdentificationType?.toTfJson(),
    'content_redaction_type': ?contentRedactionType?.toTfJson(),
    'enable_partial_results_stabilization': ?enablePartialResultsStabilization
        ?.toTfJson(),
    'filter_partial_results': ?filterPartialResults?.toTfJson(),
    'language_code': languageCode.toTfJson(),
    'language_model_name': ?languageModelName?.toTfJson(),
    'partial_results_stability': ?partialResultsStability?.toTfJson(),
    'pii_entity_types': ?piiEntityTypes?.toTfJson(),
    'vocabulary_filter_method': ?vocabularyFilterMethod?.toTfJson(),
    'vocabulary_filter_name': ?vocabularyFilterName?.toTfJson(),
    'vocabulary_name': ?vocabularyName?.toTfJson(),
    'post_call_analytics_settings': ?postCallAnalyticsSettings?.encode(),
  };
}

/// `content_identification_type` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pii =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType._(
        TfArgLiteral('PII'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType
  >
  values = [pii];
}

/// `content_redaction_type` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pii =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType._(
        TfArgLiteral('PII'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType
  >
  values = [pii];
}

/// `language_code` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enUs =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('en-US'),
      );
  static const enGb =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('en-GB'),
      );
  static const esUs =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('es-US'),
      );
  static const frCa =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('fr-CA'),
      );
  static const frFr =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('fr-FR'),
      );
  static const enAu =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('en-AU'),
      );
  static const itIt =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('it-IT'),
      );
  static const deDe =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('de-DE'),
      );
  static const ptBr =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode._(
        TfArgLiteral('pt-BR'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode
  >
  values = [enUs, enGb, esUs, frCa, frFr, enAu, itIt, deDe, ptBr];
}

/// `partial_results_stability` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const high =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability._(
        TfArgLiteral('high'),
      );
  static const medium =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability._(
        TfArgLiteral('medium'),
      );
  static const low =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability._(
        TfArgLiteral('low'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability
  >
  values = [high, medium, low];
}

/// `vocabulary_filter_method` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const remove =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod._(
        TfArgLiteral('remove'),
      );
  static const mask =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod._(
        TfArgLiteral('mask'),
      );
  static const tag =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod._(
        TfArgLiteral('tag'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod
  >
  values = [remove, mask, tag];
}

/// Typed helper for the `elements.amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPostCallAnalyticsSettings {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPostCallAnalyticsSettings({
    this.contentRedactionOutput,
    required this.dataAccessRoleArn,
    this.outputEncryptionKmsKeyId,
    required this.outputLocation,
  });

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput?
  contentRedactionOutput;

  final TfArg<String> dataAccessRoleArn;

  final TfArg<String>? outputEncryptionKmsKeyId;

  final TfArg<String> outputLocation;

  Map<String, Object?> encode() => {
    'content_redaction_output': ?contentRedactionOutput?.toTfJson(),
    'data_access_role_arn': dataAccessRoleArn.toTfJson(),
    'output_encryption_kms_key_id': ?outputEncryptionKmsKeyId?.toTfJson(),
    'output_location': outputLocation.toTfJson(),
  };
}

/// `content_redaction_output` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const redacted =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput._(
        TfArgLiteral('redacted'),
      );
  static const redactedAndUnredacted =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput._(
        TfArgLiteral('redacted_and_unredacted'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionOutput
  >
  values = [redacted, redactedAndUnredacted];
}

/// Typed helper for the `elements.amazon_transcribe_processor_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationAmazonTranscribeProcessorConfiguration({
    this.contentIdentificationType,
    this.contentRedactionType,
    this.enablePartialResultsStabilization,
    this.filterPartialResults,
    required this.languageCode,
    this.languageModelName,
    this.partialResultsStability,
    this.piiEntityTypes,
    this.showSpeakerLabel,
    this.vocabularyFilterMethod,
    this.vocabularyFilterName,
    this.vocabularyName,
  });

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentIdentificationType?
  contentIdentificationType;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationContentRedactionType?
  contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLanguageCode
  languageCode;

  final TfArg<String>? languageModelName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationPartialResultsStability?
  partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final TfArg<bool>? showSpeakerLabel;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVocabularyFilterMethod?
  vocabularyFilterMethod;

  final TfArg<String>? vocabularyFilterName;

  final TfArg<String>? vocabularyName;

  Map<String, Object?> encode() => {
    'content_identification_type': ?contentIdentificationType?.toTfJson(),
    'content_redaction_type': ?contentRedactionType?.toTfJson(),
    'enable_partial_results_stabilization': ?enablePartialResultsStabilization
        ?.toTfJson(),
    'filter_partial_results': ?filterPartialResults?.toTfJson(),
    'language_code': languageCode.toTfJson(),
    'language_model_name': ?languageModelName?.toTfJson(),
    'partial_results_stability': ?partialResultsStability?.toTfJson(),
    'pii_entity_types': ?piiEntityTypes?.toTfJson(),
    'show_speaker_label': ?showSpeakerLabel?.toTfJson(),
    'vocabulary_filter_method': ?vocabularyFilterMethod?.toTfJson(),
    'vocabulary_filter_name': ?vocabularyFilterName?.toTfJson(),
    'vocabulary_name': ?vocabularyName?.toTfJson(),
  };
}

/// Typed helper for the `elements.kinesis_data_stream_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKinesisDataStreamSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKinesisDataStreamSinkConfiguration({
    required this.insightsTarget,
  });

  final TfArg<String> insightsTarget;

  Map<String, Object?> encode() => {
    'insights_target': insightsTarget.toTfJson(),
  };
}

/// Typed helper for the `elements.lambda_function_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLambdaFunctionSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationLambdaFunctionSinkConfiguration({
    required this.insightsTarget,
  });

  final TfArg<String> insightsTarget;

  Map<String, Object?> encode() => {
    'insights_target': insightsTarget.toTfJson(),
  };
}

/// Typed helper for the `elements.s3_recording_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationS3RecordingSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationS3RecordingSinkConfiguration({
    this.destination,
  });

  final TfArg<String>? destination;

  Map<String, Object?> encode() => {'destination': ?destination?.toTfJson()};
}

/// Typed helper for the `elements.sns_topic_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSnsTopicSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSnsTopicSinkConfiguration({
    required this.insightsTarget,
  });

  final TfArg<String> insightsTarget;

  Map<String, Object?> encode() => {
    'insights_target': insightsTarget.toTfJson(),
  };
}

/// Typed helper for the `elements.sqs_queue_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSqsQueueSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSqsQueueSinkConfiguration({
    required this.insightsTarget,
  });

  final TfArg<String> insightsTarget;

  Map<String, Object?> encode() => {
    'insights_target': insightsTarget.toTfJson(),
  };
}

/// Typed helper for the `elements.voice_analytics_processor_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceAnalyticsProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceAnalyticsProcessorConfiguration({
    required this.speakerSearchStatus,
    required this.voiceToneAnalysisStatus,
  });

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus
  speakerSearchStatus;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus
  voiceToneAnalysisStatus;

  Map<String, Object?> encode() => {
    'speaker_search_status': speakerSearchStatus.toTfJson(),
    'voice_tone_analysis_status': voiceToneAnalysisStatus.toTfJson(),
  };
}

/// `speaker_search_status` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus._(
        TfArgLiteral('Enabled'),
      );
  static const disabled =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus._(
        TfArgLiteral('Disabled'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSpeakerSearchStatus
  >
  values = [enabled, disabled];
}

/// `voice_tone_analysis_status` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus._(
        TfArgLiteral('Enabled'),
      );
  static const disabled =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus._(
        TfArgLiteral('Disabled'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationVoiceToneAnalysisStatus
  >
  values = [enabled, disabled];
}

/// Typed helper for the `real_time_alert_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfiguration({
    this.disabled,
    required this.rules,
  });

  final TfArg<bool>? disabled;

  final List<ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRules>
  rules;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `real_time_alert_configuration.rules` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRules {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRules({
    required this.type,
    this.issueDetectionConfiguration,
    this.keywordMatchConfiguration,
    this.sentimentConfiguration,
  });

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType type;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationIssueDetectionConfiguration?
  issueDetectionConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKeywordMatchConfiguration?
  keywordMatchConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentConfiguration?
  sentimentConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'issue_detection_configuration': ?issueDetectionConfiguration?.encode(),
    'keyword_match_configuration': ?keywordMatchConfiguration?.encode(),
    'sentiment_configuration': ?sentimentConfiguration?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const keywordmatch =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType._(
        TfArgLiteral('KeywordMatch'),
      );
  static const sentiment =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType._(
        TfArgLiteral('Sentiment'),
      );
  static const issuedetection =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType._(
        TfArgLiteral('IssueDetection'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRulesType
  >
  values = [keywordmatch, sentiment, issuedetection];
}

/// Typed helper for the `real_time_alert_configuration.rules.issue_detection_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationIssueDetectionConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationIssueDetectionConfiguration({
    required this.ruleName,
  });

  final TfArg<String> ruleName;

  Map<String, Object?> encode() => {'rule_name': ruleName.toTfJson()};
}

/// Typed helper for the `real_time_alert_configuration.rules.keyword_match_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKeywordMatchConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationKeywordMatchConfiguration({
    required this.keywords,
    this.negate,
    required this.ruleName,
  });

  final TfArg<List<String>> keywords;

  final TfArg<bool>? negate;

  final TfArg<String> ruleName;

  Map<String, Object?> encode() => {
    'keywords': keywords.toTfJson(),
    'negate': ?negate?.toTfJson(),
    'rule_name': ruleName.toTfJson(),
  };
}

/// Typed helper for the `real_time_alert_configuration.rules.sentiment_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentConfiguration({
    required this.ruleName,
    required this.sentimentType,
    required this.timePeriod,
  });

  final TfArg<String> ruleName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType
  sentimentType;

  final TfArg<num> timePeriod;

  Map<String, Object?> encode() => {
    'rule_name': ruleName.toTfJson(),
    'sentiment_type': sentimentType.toTfJson(),
    'time_period': timePeriod.toTfJson(),
  };
}

/// `sentiment_type` — derived from the provider schema description.
extension type const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType._(
  TfArg<String> _
) implements TfArg<String> {
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const negative =
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType._(
        TfArgLiteral('NEGATIVE'),
      );

  static const List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationSentimentType
  >
  values = [negative];
}

/// Factory wrapper for `aws_chimesdkmediapipelines_media_insights_pipeline_configuration`.
final class AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration
    extends Resource {
  static const String tfType =
      'aws_chimesdkmediapipelines_media_insights_pipeline_configuration';

  AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resourceAccessRoleArn,
    TfArg<Map<String, String>>? tags,
    required List<
      ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements
    >
    elements,
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfiguration?
    realTimeAlertConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'resource_access_role_arn': resourceAccessRoleArn,
           'tags': ?tags,
           'elements': TfArg.literal([for (final e in elements) e.encode()]),
           if (realTimeAlertConfiguration != null)
             'real_time_alert_configuration': TfArg.literal(
               realTimeAlertConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimesdkmediapipelinesMediaInsightsPipelineConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration>`.
  RefTo<AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_access_role_arn` attribute.
  TfRef<String> get resourceAccessRoleArn =>
      TfRef.attribute<String>(this, 'resource_access_role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

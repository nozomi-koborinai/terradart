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

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsType
  >
  type;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfiguration?
  amazonTranscribeCallAnalyticsProcessorConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfiguration?
  amazonTranscribeProcessorConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsKinesisDataStreamSinkConfiguration?
  kinesisDataStreamSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsLambdaFunctionSinkConfiguration?
  lambdaFunctionSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsS3RecordingSinkConfiguration?
  s3RecordingSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSnsTopicSinkConfiguration?
  snsTopicSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSqsQueueSinkConfiguration?
  sqsQueueSinkConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfiguration?
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
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsType
    implements TerraformEnum {
  amazontranscribecallanalyticsprocessor(
    'AmazonTranscribeCallAnalyticsProcessor',
  ),
  voiceanalyticsprocessor('VoiceAnalyticsProcessor'),
  amazontranscribeprocessor('AmazonTranscribeProcessor'),
  kinesisdatastreamsink('KinesisDataStreamSink'),
  lambdafunctionsink('LambdaFunctionSink'),
  sqsqueuesink('SqsQueueSink'),
  snstopicsink('SnsTopicSink'),
  s3recordingsink('S3RecordingSink'),
  voiceenhancementsink('VoiceEnhancementSink');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `elements.amazon_transcribe_call_analytics_processor_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfiguration({
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

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentIdentificationType
  >?
  contentIdentificationType;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentRedactionType
  >?
  contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationLanguageCode
  >
  languageCode;

  final TfArg<String>? languageModelName;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPartialResultsStability
  >?
  partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationVocabularyFilterMethod
  >?
  vocabularyFilterMethod;

  final TfArg<String>? vocabularyFilterName;

  final TfArg<String>? vocabularyName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings?
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
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentIdentificationType
    implements TerraformEnum {
  pii('PII');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentIdentificationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `content_redaction_type` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentRedactionType
    implements TerraformEnum {
  pii('PII');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationContentRedactionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `language_code` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationLanguageCode
    implements TerraformEnum {
  enUs('en-US'),
  enGb('en-GB'),
  esUs('es-US'),
  frCa('fr-CA'),
  frFr('fr-FR'),
  enAu('en-AU'),
  itIt('it-IT'),
  deDe('de-DE'),
  ptBr('pt-BR');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationLanguageCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `partial_results_stability` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPartialResultsStability
    implements TerraformEnum {
  high('high'),
  medium('medium'),
  low('low');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPartialResultsStability(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `vocabulary_filter_method` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationVocabularyFilterMethod
    implements TerraformEnum {
  remove('remove'),
  mask('mask'),
  tag('tag');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationVocabularyFilterMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `elements.amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings({
    this.contentRedactionOutput,
    required this.dataAccessRoleArn,
    this.outputEncryptionKmsKeyId,
    required this.outputLocation,
  });

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsContentRedactionOutput
  >?
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
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsContentRedactionOutput
    implements TerraformEnum {
  redacted('redacted'),
  redactedAndUnredacted('redacted_and_unredacted');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsContentRedactionOutput(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `elements.amazon_transcribe_processor_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfiguration({
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

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentIdentificationType
  >?
  contentIdentificationType;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentRedactionType
  >?
  contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationLanguageCode
  >
  languageCode;

  final TfArg<String>? languageModelName;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationPartialResultsStability
  >?
  partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final TfArg<bool>? showSpeakerLabel;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationVocabularyFilterMethod
  >?
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

/// `content_identification_type` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentIdentificationType
    implements TerraformEnum {
  pii('PII');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentIdentificationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `content_redaction_type` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentRedactionType
    implements TerraformEnum {
  pii('PII');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationContentRedactionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `language_code` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationLanguageCode
    implements TerraformEnum {
  enUs('en-US'),
  enGb('en-GB'),
  esUs('es-US'),
  frCa('fr-CA'),
  frFr('fr-FR'),
  enAu('en-AU'),
  itIt('it-IT'),
  deDe('de-DE'),
  ptBr('pt-BR');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationLanguageCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `partial_results_stability` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationPartialResultsStability
    implements TerraformEnum {
  high('high'),
  medium('medium'),
  low('low');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationPartialResultsStability(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `vocabulary_filter_method` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationVocabularyFilterMethod
    implements TerraformEnum {
  remove('remove'),
  mask('mask'),
  tag('tag');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeProcessorConfigurationVocabularyFilterMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `elements.kinesis_data_stream_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsKinesisDataStreamSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsKinesisDataStreamSinkConfiguration({
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
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsLambdaFunctionSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsLambdaFunctionSinkConfiguration({
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
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsS3RecordingSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsS3RecordingSinkConfiguration({
    this.destination,
  });

  final TfArg<String>? destination;

  Map<String, Object?> encode() => {'destination': ?destination?.toTfJson()};
}

/// Typed helper for the `elements.sns_topic_sink_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSnsTopicSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSnsTopicSinkConfiguration({
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
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSqsQueueSinkConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsSqsQueueSinkConfiguration({
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
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfiguration({
    required this.speakerSearchStatus,
    required this.voiceToneAnalysisStatus,
  });

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationSpeakerSearchStatus
  >
  speakerSearchStatus;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationVoiceToneAnalysisStatus
  >
  voiceToneAnalysisStatus;

  Map<String, Object?> encode() => {
    'speaker_search_status': speakerSearchStatus.toTfJson(),
    'voice_tone_analysis_status': voiceToneAnalysisStatus.toTfJson(),
  };
}

/// `speaker_search_status` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationSpeakerSearchStatus
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationSpeakerSearchStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `voice_tone_analysis_status` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationVoiceToneAnalysisStatus
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsVoiceAnalyticsProcessorConfigurationVoiceToneAnalysisStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final List<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRules
  >
  rules;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `real_time_alert_configuration.rules` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRules {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRules({
    required this.type,
    this.issueDetectionConfiguration,
    this.keywordMatchConfiguration,
    this.sentimentConfiguration,
  });

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesType
  >
  type;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesIssueDetectionConfiguration?
  issueDetectionConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesKeywordMatchConfiguration?
  keywordMatchConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfiguration?
  sentimentConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'issue_detection_configuration': ?issueDetectionConfiguration?.encode(),
    'keyword_match_configuration': ?keywordMatchConfiguration?.encode(),
    'sentiment_configuration': ?sentimentConfiguration?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesType
    implements TerraformEnum {
  keywordmatch('KeywordMatch'),
  sentiment('Sentiment'),
  issuedetection('IssueDetection');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `real_time_alert_configuration.rules.issue_detection_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesIssueDetectionConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesIssueDetectionConfiguration({
    required this.ruleName,
  });

  final TfArg<String> ruleName;

  Map<String, Object?> encode() => {'rule_name': ruleName.toTfJson()};
}

/// Typed helper for the `real_time_alert_configuration.rules.keyword_match_configuration` block of
/// `aws_chimesdkmediapipelines_media_insights_pipeline_configuration` (derived from provider schema).
@immutable
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesKeywordMatchConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesKeywordMatchConfiguration({
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
final class ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfiguration {
  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfiguration({
    required this.ruleName,
    required this.sentimentType,
    required this.timePeriod,
  });

  final TfArg<String> ruleName;

  final TfArg<
    ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfigurationSentimentType
  >
  sentimentType;

  final TfArg<num> timePeriod;

  Map<String, Object?> encode() => {
    'rule_name': ruleName.toTfJson(),
    'sentiment_type': sentimentType.toTfJson(),
    'time_period': timePeriod.toTfJson(),
  };
}

/// `sentiment_type` — derived from the provider schema description.
enum ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfigurationSentimentType
    implements TerraformEnum {
  negative('NEGATIVE');

  const ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfigurationSentimentType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_chimesdkmediapipelines_media_insights_pipeline_configuration`.
final class AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration
    extends Resource {
  static const String tfType =
      'aws_chimesdkmediapipelines_media_insights_pipeline_configuration';

  AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

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

  final TfArg<String> type;

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
    if (amazonTranscribeCallAnalyticsProcessorConfiguration != null)
      'amazon_transcribe_call_analytics_processor_configuration':
          amazonTranscribeCallAnalyticsProcessorConfiguration!.encode(),
    if (amazonTranscribeProcessorConfiguration != null)
      'amazon_transcribe_processor_configuration':
          amazonTranscribeProcessorConfiguration!.encode(),
    if (kinesisDataStreamSinkConfiguration != null)
      'kinesis_data_stream_sink_configuration':
          kinesisDataStreamSinkConfiguration!.encode(),
    if (lambdaFunctionSinkConfiguration != null)
      'lambda_function_sink_configuration': lambdaFunctionSinkConfiguration!
          .encode(),
    if (s3RecordingSinkConfiguration != null)
      's3_recording_sink_configuration': s3RecordingSinkConfiguration!.encode(),
    if (snsTopicSinkConfiguration != null)
      'sns_topic_sink_configuration': snsTopicSinkConfiguration!.encode(),
    if (sqsQueueSinkConfiguration != null)
      'sqs_queue_sink_configuration': sqsQueueSinkConfiguration!.encode(),
    if (voiceAnalyticsProcessorConfiguration != null)
      'voice_analytics_processor_configuration':
          voiceAnalyticsProcessorConfiguration!.encode(),
  };
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

  final TfArg<List<Object?>>? callAnalyticsStreamCategories;

  final TfArg<String>? contentIdentificationType;

  final TfArg<String>? contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final TfArg<String> languageCode;

  final TfArg<String>? languageModelName;

  final TfArg<String>? partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final TfArg<String>? vocabularyFilterMethod;

  final TfArg<String>? vocabularyFilterName;

  final TfArg<String>? vocabularyName;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElementsAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings?
  postCallAnalyticsSettings;

  Map<String, Object?> encode() => {
    if (callAnalyticsStreamCategories != null)
      'call_analytics_stream_categories': callAnalyticsStreamCategories!
          .toTfJson(),
    if (contentIdentificationType != null)
      'content_identification_type': contentIdentificationType!.toTfJson(),
    if (contentRedactionType != null)
      'content_redaction_type': contentRedactionType!.toTfJson(),
    if (enablePartialResultsStabilization != null)
      'enable_partial_results_stabilization': enablePartialResultsStabilization!
          .toTfJson(),
    if (filterPartialResults != null)
      'filter_partial_results': filterPartialResults!.toTfJson(),
    'language_code': languageCode.toTfJson(),
    if (languageModelName != null)
      'language_model_name': languageModelName!.toTfJson(),
    if (partialResultsStability != null)
      'partial_results_stability': partialResultsStability!.toTfJson(),
    if (piiEntityTypes != null) 'pii_entity_types': piiEntityTypes!.toTfJson(),
    if (vocabularyFilterMethod != null)
      'vocabulary_filter_method': vocabularyFilterMethod!.toTfJson(),
    if (vocabularyFilterName != null)
      'vocabulary_filter_name': vocabularyFilterName!.toTfJson(),
    if (vocabularyName != null) 'vocabulary_name': vocabularyName!.toTfJson(),
    if (postCallAnalyticsSettings != null)
      'post_call_analytics_settings': postCallAnalyticsSettings!.encode(),
  };
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

  final TfArg<String>? contentRedactionOutput;

  final TfArg<String> dataAccessRoleArn;

  final TfArg<String>? outputEncryptionKmsKeyId;

  final TfArg<String> outputLocation;

  Map<String, Object?> encode() => {
    if (contentRedactionOutput != null)
      'content_redaction_output': contentRedactionOutput!.toTfJson(),
    'data_access_role_arn': dataAccessRoleArn.toTfJson(),
    if (outputEncryptionKmsKeyId != null)
      'output_encryption_kms_key_id': outputEncryptionKmsKeyId!.toTfJson(),
    'output_location': outputLocation.toTfJson(),
  };
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

  final TfArg<String>? contentIdentificationType;

  final TfArg<String>? contentRedactionType;

  final TfArg<bool>? enablePartialResultsStabilization;

  final TfArg<bool>? filterPartialResults;

  final TfArg<String> languageCode;

  final TfArg<String>? languageModelName;

  final TfArg<String>? partialResultsStability;

  final TfArg<String>? piiEntityTypes;

  final TfArg<bool>? showSpeakerLabel;

  final TfArg<String>? vocabularyFilterMethod;

  final TfArg<String>? vocabularyFilterName;

  final TfArg<String>? vocabularyName;

  Map<String, Object?> encode() => {
    if (contentIdentificationType != null)
      'content_identification_type': contentIdentificationType!.toTfJson(),
    if (contentRedactionType != null)
      'content_redaction_type': contentRedactionType!.toTfJson(),
    if (enablePartialResultsStabilization != null)
      'enable_partial_results_stabilization': enablePartialResultsStabilization!
          .toTfJson(),
    if (filterPartialResults != null)
      'filter_partial_results': filterPartialResults!.toTfJson(),
    'language_code': languageCode.toTfJson(),
    if (languageModelName != null)
      'language_model_name': languageModelName!.toTfJson(),
    if (partialResultsStability != null)
      'partial_results_stability': partialResultsStability!.toTfJson(),
    if (piiEntityTypes != null) 'pii_entity_types': piiEntityTypes!.toTfJson(),
    if (showSpeakerLabel != null)
      'show_speaker_label': showSpeakerLabel!.toTfJson(),
    if (vocabularyFilterMethod != null)
      'vocabulary_filter_method': vocabularyFilterMethod!.toTfJson(),
    if (vocabularyFilterName != null)
      'vocabulary_filter_name': vocabularyFilterName!.toTfJson(),
    if (vocabularyName != null) 'vocabulary_name': vocabularyName!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    if (destination != null) 'destination': destination!.toTfJson(),
  };
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

  final TfArg<String> speakerSearchStatus;

  final TfArg<String> voiceToneAnalysisStatus;

  Map<String, Object?> encode() => {
    'speaker_search_status': speakerSearchStatus.toTfJson(),
    'voice_tone_analysis_status': voiceToneAnalysisStatus.toTfJson(),
  };
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
    if (disabled != null) 'disabled': disabled!.toTfJson(),
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

  final TfArg<String> type;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesIssueDetectionConfiguration?
  issueDetectionConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesKeywordMatchConfiguration?
  keywordMatchConfiguration;

  final ChimesdkmediapipelinesMediaInsightsPipelineConfigurationRealTimeAlertConfigurationRulesSentimentConfiguration?
  sentimentConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (issueDetectionConfiguration != null)
      'issue_detection_configuration': issueDetectionConfiguration!.encode(),
    if (keywordMatchConfiguration != null)
      'keyword_match_configuration': keywordMatchConfiguration!.encode(),
    if (sentimentConfiguration != null)
      'sentiment_configuration': sentimentConfiguration!.encode(),
  };
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

  final TfArg<List<Object?>> keywords;

  final TfArg<bool>? negate;

  final TfArg<String> ruleName;

  Map<String, Object?> encode() => {
    'keywords': keywords.toTfJson(),
    if (negate != null) 'negate': negate!.toTfJson(),
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

  final TfArg<String> sentimentType;

  final TfArg<num> timePeriod;

  Map<String, Object?> encode() => {
    'rule_name': ruleName.toTfJson(),
    'sentiment_type': sentimentType.toTfJson(),
    'time_period': timePeriod.toTfJson(),
  };
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
           if (region != null) 'region': region,
           'resource_access_role_arn': resourceAccessRoleArn,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

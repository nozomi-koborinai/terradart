// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_qa_question`.
const Set<String> _googleContactCenterInsightsQaQuestionSensitive = <String>{};

/// Typed helper for the `answer_choices` block of
/// `google_contact_center_insights_qa_question` (derived from provider schema).
@immutable
final class ContactCenterInsightsQaQuestionAnswerChoices {
  const ContactCenterInsightsQaQuestionAnswerChoices({
    this.boolValue,
    this.key,
    this.naValue,
    this.numValue,
    this.score,
    this.strValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<String>? key;

  final TfArg<bool>? naValue;

  final TfArg<num>? numValue;

  final TfArg<num>? score;

  final TfArg<String>? strValue;

  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'key': ?key?.toTfJson(),
    'na_value': ?naValue?.toTfJson(),
    'num_value': ?numValue?.toTfJson(),
    'score': ?score?.toTfJson(),
    'str_value': ?strValue?.toTfJson(),
  };
}

/// Typed helper for the `predefined_question_config` block of
/// `google_contact_center_insights_qa_question` (derived from provider schema).
@immutable
final class ContactCenterInsightsQaQuestionPredefinedQuestionConfig {
  const ContactCenterInsightsQaQuestionPredefinedQuestionConfig({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// Typed helper for the `qa_question_data_options` block of
/// `google_contact_center_insights_qa_question` (derived from provider schema).
@immutable
final class ContactCenterInsightsQaQuestionDataOptions {
  const ContactCenterInsightsQaQuestionDataOptions({
    this.conversationDataOptions,
  });

  final ContactCenterInsightsQaQuestionConversationDataOptions?
  conversationDataOptions;

  Map<String, Object?> encode() => {
    'conversation_data_options': ?conversationDataOptions?.encode(),
  };
}

/// Typed helper for the `qa_question_data_options.conversation_data_options` block of
/// `google_contact_center_insights_qa_question` (derived from provider schema).
@immutable
final class ContactCenterInsightsQaQuestionConversationDataOptions {
  const ContactCenterInsightsQaQuestionConversationDataOptions({
    this.includeDialogflowInteractionData,
  });

  final TfArg<bool>? includeDialogflowInteractionData;

  Map<String, Object?> encode() => {
    'include_dialogflow_interaction_data': ?includeDialogflowInteractionData
        ?.toTfJson(),
  };
}

/// Typed helper for the `tuning_metadata` block of
/// `google_contact_center_insights_qa_question` (derived from provider schema).
@immutable
final class ContactCenterInsightsQaQuestionTuningMetadata {
  const ContactCenterInsightsQaQuestionTuningMetadata({
    this.datasetValidationWarnings,
    this.totalValidLabelCount,
    this.tuningError,
  });

  final TfArg<List<String>>? datasetValidationWarnings;

  final TfArg<String>? totalValidLabelCount;

  final TfArg<String>? tuningError;

  Map<String, Object?> encode() => {
    'dataset_validation_warnings': ?datasetValidationWarnings?.toTfJson(),
    'total_valid_label_count': ?totalValidLabelCount?.toTfJson(),
    'tuning_error': ?tuningError?.toTfJson(),
  };
}

/// Factory wrapper for `google_contact_center_insights_qa_question`.
///
/// A single question to be scored by the Insights QA feature.
///
/// QA question under a Contact Center AI Insights scorecard revision.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. [qaScorecard] and [revision] are path id segments (not full
/// resource names). Pair with [GoogleContactCenterInsightsQaScorecardRevision]
/// for a runnable scorecard → revision → question chain.
final class GoogleContactCenterInsightsQaQuestion extends Resource {
  static const String tfType = 'google_contact_center_insights_qa_question';

  GoogleContactCenterInsightsQaQuestion(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> qaScorecard,
    required TfArg<String> revision,
    TfArg<String>? questionBody,
    TfArg<String>? questionType,
    TfArg<String>? abbreviation,
    TfArg<String>? answerInstructions,
    List<ContactCenterInsightsQaQuestionAnswerChoices>? answerChoices,
    TfArg<num>? order,
    TfArg<List<String>>? tags,
    ContactCenterInsightsQaQuestionPredefinedQuestionConfig?
    predefinedQuestionConfig,
    ContactCenterInsightsQaQuestionDataOptions? qaQuestionDataOptions,
    ContactCenterInsightsQaQuestionTuningMetadata? tuningMetadata,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'qa_scorecard': qaScorecard,
           'revision': revision,
           'question_body': ?questionBody,
           'question_type': ?questionType,
           'abbreviation': ?abbreviation,
           'answer_instructions': ?answerInstructions,
           if (answerChoices != null)
             'answer_choices': TfArg.literal([
               for (final e in answerChoices) e.encode(),
             ]),
           'order': ?order,
           'tags': ?tags,
           if (predefinedQuestionConfig != null)
             'predefined_question_config': TfArg.literal(
               predefinedQuestionConfig.encode(),
             ),
           if (qaQuestionDataOptions != null)
             'qa_question_data_options': TfArg.literal(
               qaQuestionDataOptions.encode(),
             ),
           if (tuningMetadata != null)
             'tuning_metadata': TfArg.literal(tuningMetadata.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsQaQuestionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsQaQuestion>`.
  RefTo<GoogleContactCenterInsightsQaQuestion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `abbreviation` attribute.
  TfRef<String> get abbreviation =>
      TfRef.attribute<String>(this, 'abbreviation');

  /// Reference to `answer_instructions` attribute.
  TfRef<String> get answerInstructions =>
      TfRef.attribute<String>(this, 'answer_instructions');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `order` attribute.
  TfRef<num> get order => TfRef.attribute<num>(this, 'order');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `qa_scorecard` attribute.
  TfRef<String> get qaScorecard =>
      TfRef.attribute<String>(this, 'qa_scorecard');

  /// Reference to `question_body` attribute.
  TfRef<String> get questionBody =>
      TfRef.attribute<String>(this, 'question_body');

  /// Reference to `question_type` attribute.
  TfRef<String> get questionType =>
      TfRef.attribute<String>(this, 'question_type');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');
}

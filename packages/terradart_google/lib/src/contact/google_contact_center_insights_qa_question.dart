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
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (naValue != null) 'na_value': naValue!.toTfJson(),
    if (numValue != null) 'num_value': numValue!.toTfJson(),
    if (score != null) 'score': score!.toTfJson(),
    if (strValue != null) 'str_value': strValue!.toTfJson(),
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

  GoogleContactCenterInsightsQaQuestion({
    required super.localName,
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
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'qa_scorecard': qaScorecard,
           'revision': revision,
           if (questionBody != null) 'question_body': questionBody,
           if (questionType != null) 'question_type': questionType,
           if (abbreviation != null) 'abbreviation': abbreviation,
           if (answerInstructions != null)
             'answer_instructions': answerInstructions,
           if (answerChoices != null)
             'answer_choices': TfArg.literal([
               for (final e in answerChoices) e.encode(),
             ]),
           if (order != null) 'order': order,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsQaQuestionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

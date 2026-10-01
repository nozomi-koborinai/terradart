// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_analysis_rule`.
const Set<String> _googleContactCenterInsightsAnalysisRuleSensitive =
    <String>{};

/// Typed helper for the `annotator_selector` block of
/// `google_contact_center_insights_analysis_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAnalysisRuleAnnotatorSelector {
  const ContactCenterInsightsAnalysisRuleAnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runQaAnnotator,
    this.runSentimentAnnotator,
    this.runSilenceAnnotator,
    this.runSummarizationAnnotator,
    this.qaConfig,
    this.summarizationConfig,
  });

  final TfArg<List<String>>? issueModels;

  final TfArg<List<String>>? phraseMatchers;

  final TfArg<bool>? runEntityAnnotator;

  final TfArg<bool>? runIntentAnnotator;

  final TfArg<bool>? runInterruptionAnnotator;

  final TfArg<bool>? runIssueModelAnnotator;

  final TfArg<bool>? runPhraseMatcherAnnotator;

  final TfArg<bool>? runQaAnnotator;

  final TfArg<bool>? runSentimentAnnotator;

  final TfArg<bool>? runSilenceAnnotator;

  final TfArg<bool>? runSummarizationAnnotator;

  final ContactCenterInsightsAnalysisRuleQaConfig? qaConfig;

  final ContactCenterInsightsAnalysisRuleSummarizationConfig?
  summarizationConfig;

  Map<String, Object?> encode() => {
    'issue_models': ?issueModels?.toTfJson(),
    'phrase_matchers': ?phraseMatchers?.toTfJson(),
    'run_entity_annotator': ?runEntityAnnotator?.toTfJson(),
    'run_intent_annotator': ?runIntentAnnotator?.toTfJson(),
    'run_interruption_annotator': ?runInterruptionAnnotator?.toTfJson(),
    'run_issue_model_annotator': ?runIssueModelAnnotator?.toTfJson(),
    'run_phrase_matcher_annotator': ?runPhraseMatcherAnnotator?.toTfJson(),
    'run_qa_annotator': ?runQaAnnotator?.toTfJson(),
    'run_sentiment_annotator': ?runSentimentAnnotator?.toTfJson(),
    'run_silence_annotator': ?runSilenceAnnotator?.toTfJson(),
    'run_summarization_annotator': ?runSummarizationAnnotator?.toTfJson(),
    'qa_config': ?qaConfig?.encode(),
    'summarization_config': ?summarizationConfig?.encode(),
  };
}

/// Typed helper for the `annotator_selector.qa_config` block of
/// `google_contact_center_insights_analysis_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAnalysisRuleQaConfig {
  const ContactCenterInsightsAnalysisRuleQaConfig({this.scorecardList});

  final ContactCenterInsightsAnalysisRuleScorecardList? scorecardList;

  Map<String, Object?> encode() => {'scorecard_list': ?scorecardList?.encode()};
}

/// Typed helper for the `annotator_selector.qa_config.scorecard_list` block of
/// `google_contact_center_insights_analysis_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAnalysisRuleScorecardList {
  const ContactCenterInsightsAnalysisRuleScorecardList({
    this.qaScorecardRevisions,
  });

  final TfArg<List<String>>? qaScorecardRevisions;

  Map<String, Object?> encode() => {
    'qa_scorecard_revisions': ?qaScorecardRevisions?.toTfJson(),
  };
}

/// Typed helper for the `annotator_selector.summarization_config` block of
/// `google_contact_center_insights_analysis_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAnalysisRuleSummarizationConfig {
  const ContactCenterInsightsAnalysisRuleSummarizationConfig({
    this.conversationProfile,
    this.summarizationModel,
  });

  final TfArg<String>? conversationProfile;

  final TfArg<ContactCenterInsightsAnalysisRuleSummarizationModel>?
  summarizationModel;

  Map<String, Object?> encode() => {
    'conversation_profile': ?conversationProfile?.toTfJson(),
    'summarization_model': ?summarizationModel?.toTfJson(),
  };
}

/// `summarization_model` — derived from the provider schema description.
enum ContactCenterInsightsAnalysisRuleSummarizationModel
    implements TerraformEnum {
  baselineModel('BASELINE_MODEL'),
  baselineModelV20('BASELINE_MODEL_V2_0');

  const ContactCenterInsightsAnalysisRuleSummarizationModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_contact_center_insights_analysis_rule`.
///
/// The CCAI Insights project wide analysis rule. This rule will be applied to
/// all conversations that match the filter defined in the rule. For a
/// conversation matches the filter, the annotators specified in the rule will
/// be run. If a conversation matches multiple rules, a union of all the
/// annotators will be run. One project can have multiple analysis rules.
///
/// Analysis rule for Contact Center AI Insights — selects which conversations
/// get automatic analysis (filter + percentage).
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. An empty [conversationFilter] means the rule applies to all
/// conversations in [location].
final class GoogleContactCenterInsightsAnalysisRule extends Resource {
  static const String tfType = 'google_contact_center_insights_analysis_rule';

  GoogleContactCenterInsightsAnalysisRule({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<bool>? active,
    TfArg<num>? analysisPercentage,
    TfArg<String>? conversationFilter,
    ContactCenterInsightsAnalysisRuleAnnotatorSelector? annotatorSelector,
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
           'display_name': ?displayName,
           'active': ?active,
           'analysis_percentage': ?analysisPercentage,
           'conversation_filter': ?conversationFilter,
           if (annotatorSelector != null)
             'annotator_selector': TfArg.literal(annotatorSelector.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsAnalysisRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsAnalysisRule>`.
  RefTo<GoogleContactCenterInsightsAnalysisRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `active` attribute.
  TfRef<bool> get activeRef => TfRef.attribute<bool>(this, 'active');

  /// Reference to `analysis_percentage` attribute.
  TfRef<num> get analysisPercentageRef =>
      TfRef.attribute<num>(this, 'analysis_percentage');

  /// Reference to `conversation_filter` attribute.
  TfRef<String> get conversationFilterRef =>
      TfRef.attribute<String>(this, 'conversation_filter');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}

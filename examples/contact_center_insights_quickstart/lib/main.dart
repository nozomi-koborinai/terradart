/// Contact Center AI Insights quickstart -- an end-to-end terradart example.
///
/// Enables `contactcenterinsights.googleapis.com` and provisions:
/// - an inactive analysis rule (0% auto-analysis),
/// - a saved conversation view (phone-call filter),
/// - a customer-defined QA scorecard + revision + sample question,
/// - an inactive assessment rule (0% sample),
/// - an inactive auto-labeling rule.
///
/// These are configuration resources (no reserved throughput). Analysis is
/// billed only when conversations are processed.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/contact.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Contact Center AI Insights Stack: analysis, view, QA chain, assessment,
/// and auto-labeling.
final class ContactCenterInsightsStack extends Stack {
  ContactCenterInsightsStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiInsights = add(
      GoogleProjectService(
        'api_contactcenterinsights',
        service: .literal('contactcenterinsights.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final rule = add(
      GoogleContactCenterInsightsAnalysisRule(
        'draft_rule',
        location: .literal('us-central1'),
        displayName: .literal('terradart-draft-analysis'),
        // Keep inactive so apply does not enroll conversations in analysis.
        active: .literal(false),
        analysisPercentage: .literal(0),
        dependsOn: [apiInsights],
      ),
    );

    final view = add(
      GoogleContactCenterInsightsView(
        'phone_calls',
        location: .literal('us-central1'),
        displayName: .literal('terradart-phone-calls'),
        // API rejects an empty value ("Value cannot be empty"); use a
        // documented conversation filter instead.
        value: .literal('medium="PHONE_CALL"'),
        dependsOn: [apiInsights],
      ),
    );

    const scorecardId = 'terradart-qa';

    final scorecard = add(
      GoogleContactCenterInsightsQaScorecard(
        'qa',
        location: .literal('us-central1'),
        qaScorecardId: .literal(scorecardId),
        displayName: .literal('TerraDart QA'),
        description: .literal('Quickstart scorecard'),
        source: .literal(.customerDefined),
        dependsOn: [apiInsights],
      ),
    );

    // Omit qaScorecardRevisionId so the provider adopts the scorecard's
    // auto-created latest revision. Creating a second revision id returns
    // API 400 "Precondition check failed" on a fresh scorecard.
    final revision = add(
      GoogleContactCenterInsightsQaScorecardRevision(
        'qa_rev',
        location: .literal('us-central1'),
        qaScorecard: .literal(scorecardId),
        dependsOn: [scorecard],
      ),
    );

    final question = add(
      GoogleContactCenterInsightsQaQuestion(
        'greeting',
        location: .literal('us-central1'),
        qaScorecard: .literal(scorecardId),
        revision: revision.qaScorecardRevisionId,
        questionBody: .literal('Did the agent greet the customer?'),
        questionType: .literal('CUSTOMIZABLE'),
        abbreviation: .literal('Greeting'),
        answerChoices: [
          // Scores must be non-zero doubles — the provider omits a 0 score
          // and the API returns 400 "Answer choice score must be set".
          ContactCenterInsightsQaQuestionAnswerChoices(
            strValue: .literal('Yes'),
            score: .literal(1.0),
          ),
          ContactCenterInsightsQaQuestionAnswerChoices(
            strValue: .literal('No'),
            score: .literal(0.5),
          ),
        ],
        dependsOn: [revision],
      ),
    );

    // assessment_rule_id must match ^[A-Za-z0-9]{4,64}$ (no hyphens).
    final assessment = add(
      GoogleContactCenterInsightsAssessmentRule(
        'draft_assessment',
        location: .literal('us-central1'),
        assessmentRuleId: .literal('terradartassess'),
        displayName: .literal('terradart-draft-assessment'),
        active: .literal(false),
        sampleRule: ContactCenterInsightsAssessmentRuleSampleRule(
          amount: .samplePercentage(.literal(0)),
        ),
        scheduleInfo: ContactCenterInsightsAssessmentRuleScheduleInfo(
          schedule: .literal('every 1 hours'),
        ),
        dependsOn: [apiInsights],
      ),
    );

    final autoLabel = add(
      GoogleContactCenterInsightsAutoLabelingRule(
        'draft_autolabel',
        location: .literal('us-central1'),
        autoLabelingRuleId: .literal('terradartautolabel'),
        displayName: .literal('terradart-draft-autolabel'),
        description: .literal('Inactive quickstart auto-label rule'),
        labelKey: .literal('terradart_label'),
        labelKeyType: .literal(.labelKeyTypeCustom),
        conditions: [
          ContactCenterInsightsAutoLabelingRuleConditions(
            condition: .literal('true'),
            value: .literal("'draft'"),
          ),
        ],
        active: .literal(false),
        dependsOn: [apiInsights],
      ),
    );

    addOutput('cci_analysis_rule_id', rule.id);
    addOutput('cci_view_id', view.id);
    addOutput('cci_qa_scorecard_id', scorecard.id);
    addOutput('cci_qa_revision_id', revision.id);
    addOutput('cci_qa_question_id', question.id);
    addOutput('cci_assessment_rule_id', assessment.id);
    addOutput('cci_auto_labeling_rule_id', autoLabel.id);
  }
}

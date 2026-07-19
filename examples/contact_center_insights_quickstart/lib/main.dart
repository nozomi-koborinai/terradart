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
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiInsights = add(
      GoogleProjectService(
        localName: 'api_contactcenterinsights',
        service: TfArg.literal('contactcenterinsights.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final rule = add(
      GoogleContactCenterInsightsAnalysisRule(
        localName: 'draft_rule',
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('terradart-draft-analysis'),
        // Keep inactive so apply does not enroll conversations in analysis.
        active: TfArg.literal(false),
        analysisPercentage: TfArg.literal(0),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    final view = add(
      GoogleContactCenterInsightsView(
        localName: 'phone_calls',
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('terradart-phone-calls'),
        // API rejects an empty value ("Value cannot be empty"); use a
        // documented conversation filter instead.
        value: TfArg.literal('medium="PHONE_CALL"'),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    const scorecardId = 'terradart-qa';

    final scorecard = add(
      GoogleContactCenterInsightsQaScorecard(
        localName: 'qa',
        location: TfArg.literal('us-central1'),
        qaScorecardId: TfArg.literal(scorecardId),
        displayName: TfArg.literal('TerraDart QA'),
        description: TfArg.literal('Quickstart scorecard'),
        source: TfArg.literal(
          ContactCenterInsightsQaScorecardSource.customerDefined,
        ),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    // Omit qaScorecardRevisionId so the provider adopts the scorecard's
    // auto-created latest revision. Creating a second revision id returns
    // API 400 "Precondition check failed" on a fresh scorecard.
    final revision = add(
      GoogleContactCenterInsightsQaScorecardRevision(
        localName: 'qa_rev',
        location: TfArg.literal('us-central1'),
        qaScorecard: TfArg.literal(scorecardId),
        dependsOn: [ResourceDependency(scorecard)],
      ),
    );

    final question = add(
      GoogleContactCenterInsightsQaQuestion(
        localName: 'greeting',
        location: TfArg.literal('us-central1'),
        qaScorecard: TfArg.literal(scorecardId),
        revision: TfArg.ref(revision.qaScorecardRevisionId),
        questionBody: TfArg.literal('Did the agent greet the customer?'),
        questionType: TfArg.literal('CUSTOMIZABLE'),
        abbreviation: TfArg.literal('Greeting'),
        answerChoices: [
          ContactCenterInsightsQaQuestionAnswerChoices(
            strValue: TfArg.literal('Yes'),
            score: TfArg.literal(1),
          ),
          ContactCenterInsightsQaQuestionAnswerChoices(
            strValue: TfArg.literal('No'),
            score: TfArg.literal(0),
          ),
        ],
        dependsOn: [ResourceDependency(revision)],
      ),
    );

    // assessment_rule_id must match ^[A-Za-z0-9]{4,64}$ (no hyphens).
    final assessment = add(
      GoogleContactCenterInsightsAssessmentRule(
        localName: 'draft_assessment',
        location: TfArg.literal('us-central1'),
        assessmentRuleId: TfArg.literal('terradartassess'),
        displayName: TfArg.literal('terradart-draft-assessment'),
        active: TfArg.literal(false),
        sampleRule: ContactCenterInsightsAssessmentRuleSampleRule(
          samplePercentage: TfArg.literal(0),
        ),
        scheduleInfo: ContactCenterInsightsAssessmentRuleScheduleInfo(
          schedule: TfArg.literal('every 1 hours'),
        ),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    final autoLabel = add(
      GoogleContactCenterInsightsAutoLabelingRule(
        localName: 'draft_autolabel',
        location: TfArg.literal('us-central1'),
        autoLabelingRuleId: TfArg.literal('terradartautolabel'),
        displayName: TfArg.literal('terradart-draft-autolabel'),
        description: TfArg.literal('Inactive quickstart auto-label rule'),
        labelKey: TfArg.literal('terradart_label'),
        labelKeyType: TfArg.literal(
          ContactCenterInsightsAutoLabelingRuleLabelKeyType.labelKeyTypeCustom,
        ),
        conditions: [
          ContactCenterInsightsAutoLabelingRuleConditions(
            condition: TfArg.literal('true'),
            value: TfArg.literal("'draft'"),
          ),
        ],
        active: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    addExport(
      'CCI_ANALYSIS_RULE_ID',
      ResourceIdExport(rule.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_VIEW_ID',
      ResourceIdExport(view.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_QA_SCORECARD_ID',
      ResourceIdExport(scorecard.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_QA_REVISION_ID',
      ResourceIdExport(revision.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_QA_QUESTION_ID',
      ResourceIdExport(question.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_ASSESSMENT_RULE_ID',
      ResourceIdExport(assessment.id, emitTerraformOutput: true),
    );
    addExport(
      'CCI_AUTO_LABELING_RULE_ID',
      ResourceIdExport(autoLabel.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath(
      'lib/generated/contact_center_insights_stack.app.dart',
    );
  }
}

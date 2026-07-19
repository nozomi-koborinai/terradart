/// Contact Center AI Insights quickstart -- an end-to-end terradart example.
///
/// Enables `contactcenterinsights.googleapis.com` and provisions:
/// - an inactive analysis rule (0% auto-analysis),
/// - a saved conversation view,
/// - a customer-defined QA scorecard.
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

/// Contact Center AI Insights Stack: analysis rule + view + QA scorecard.
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
        localName: 'all_conversations',
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('terradart-all'),
        // Empty filter = all conversations in the location.
        value: TfArg.literal(''),
        dependsOn: [ResourceDependency(apiInsights)],
      ),
    );

    final scorecard = add(
      GoogleContactCenterInsightsQaScorecard(
        localName: 'qa',
        location: TfArg.literal('us-central1'),
        qaScorecardId: TfArg.literal('terradart-qa'),
        displayName: TfArg.literal('TerraDart QA'),
        description: TfArg.literal('Quickstart scorecard'),
        source: TfArg.literal(
          ContactCenterInsightsQaScorecardSource.customerDefined,
        ),
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

    setAppExportsOutputPath(
      'lib/generated/contact_center_insights_stack.app.dart',
    );
  }
}

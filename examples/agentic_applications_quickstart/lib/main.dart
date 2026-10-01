/// Agentic Applications quickstart — a Gemini Enterprise **analyst agent
/// persona** grounded on data that lives in the same stack.
///
/// Enables `agenticapplications.googleapis.com` plus the BigQuery APIs,
/// creates a treasury dataset and a `cash_positions` table, then configures
/// a treasury-analyst persona that reads that table, carries a markdown
/// skill, overrides the table's column descriptions, and enables the
/// Treasury securities auctions external data source.
///
/// The persona is design-time configuration only: Agentic Applications
/// meters agent tokens and chat sessions, so creating it runs no inference.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/agentic_applications.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

/// Treasury analyst stack: BigQuery grounding data + the analyst persona.
final class AnalystPersonaStack extends Stack {
  AnalystPersonaStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.agentic, Barrels.bigquery],
      propagationDelay: const Duration(seconds: 60),
    );

    final dataset = add(
      GoogleBigqueryDataset(
        'treasury',
        datasetId: .literal('terradart_treasury'),
        location: .literal('US'),
        friendlyName: .literal('TerraDart treasury'),
        description: .literal(
          'Grounding data for the TerraDart treasury analyst persona.',
        ),
        deleteContentsOnDestroy: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    final positions = add(
      GoogleBigqueryTable(
        'cash_positions',
        datasetId: dataset.ref,
        tableId: .literal('cash_positions'),
        description: .literal('Daily closing cash balance per account.'),
        deletionProtection: .literal(false),
        schema: .literal(
          jsonEncode([
            {'name': 'as_of_date', 'type': 'DATE', 'mode': 'REQUIRED'},
            {'name': 'account_id', 'type': 'STRING', 'mode': 'REQUIRED'},
            {'name': 'currency', 'type': 'STRING', 'mode': 'REQUIRED'},
            {'name': 'closing_balance', 'type': 'NUMERIC', 'mode': 'REQUIRED'},
          ]),
        ),
        dependsOn: [dataset],
      ),
    );

    // The API addresses BigQuery grounding data by resource path, so the
    // in-stack dataset/table ids are interpolated into the expected format.
    final datasetPath =
        'projects/$projectId/datasets/${dataset.datasetId.interpolation}';
    final tablePath = '$datasetPath/tables/${positions.tableId.interpolation}';

    add(
      GoogleAgenticApplicationsAnalystAgentPersona(
        'treasury_analyst',
        location: .literal('us-central1'),
        analystAgentPersonaId: .literal('terradart-treasury-analyst'),
        displayName: .literal('TerraDart treasury analyst'),
        role: .literal(.treasuryAnalyst),
        displayDescription: .literal(
          'Answers cash-position and liquidity questions for TerraDart.',
        ),
        modelDescription: .literal(
          'Treasury analyst for a mid-size SaaS company. Prefers same-day '
          'balances and always reports amounts in the account currency.',
        ),
        customerContext: .literal([
          'TerraDart operates in USD, EUR and JPY.',
          'The fiscal year ends on March 31.',
        ]),
        resources: [
          AgenticApplicationsAnalystAgentPersonaResources(
            displayLabel: .literal('Cash positions'),
            modelDescription: .literal(
              'One row per account and day, with the closing balance.',
            ),
            bigqueryResource: .new(
              bigqueryDataset: .literal(datasetPath),
              bigqueryTable: .literal(tablePath),
              columnDescriptions: .literal({
                'closing_balance': 'Closing balance in the account currency.',
              }),
            ),
          ),
          AgenticApplicationsAnalystAgentPersonaResources(
            displayLabel: .literal('Liquidity policy'),
            modelDescription: .literal(
              'Internal policy the analyst must follow when flagging risk.',
            ),
            useRag: .literal(true),
            rawFileResource: .new(
              fileTitle: .literal('liquidity_policy.md'),
              mimeType: .literal('text/markdown'),
              fileContent: .literal(
                '# Liquidity policy\n\n'
                'Flag any account whose closing balance covers less than '
                '30 days of operating expenses.\n',
              ),
            ),
          ),
        ],
        // Schema overrides give the model column semantics the BigQuery
        // schema alone does not carry.
        tables: [
          AgenticApplicationsAnalystAgentPersonaTables(
            name: .literal('cash_positions'),
            description: .literal('Daily closing balances per account.'),
            columns: [
              .new(
                name: .literal('account_id'),
                dataType: .literal('STRING'),
                description: .literal('Internal treasury account identifier.'),
              ),
              .new(
                name: .literal('closing_balance'),
                dataType: .literal('NUMERIC'),
                description: .literal(
                  'Balance at end of day, in the account currency.',
                ),
              ),
            ],
          ),
        ],
        skills: [
          AgenticApplicationsAnalystAgentPersonaSkills(
            skillId: .literal('daily-cash-position'),
            description: .literal(
              'Summarize the latest cash position per currency.',
            ),
            content: .literal(
              '# Daily cash position\n\n'
              '1. Read the latest `as_of_date` in `cash_positions`.\n'
              '2. Group closing balances by currency.\n'
              '3. Call out any account below the 30-day policy threshold.\n',
            ),
            references: [
              .new(
                referenceId: .literal('policy-threshold'),
                content: .literal(
                  'The 30-day threshold is defined in liquidity_policy.md.',
                ),
              ),
            ],
          ),
        ],
        externalDataSources: [
          AgenticApplicationsAnalystAgentPersonaExternalDataSources(
            enabled: .literal(true),
            treasurySecuritiesAuctions: const .new(),
          ),
        ],
        artifactExamples: [
          AgenticApplicationsAnalystAgentPersonaArtifactExamples(
            resource: .new(
              displayLabel: .literal('Weekly liquidity brief'),
              modelDescription: .literal(
                'Shape of the weekly brief the analyst produces.',
              ),
              rawFileResource: .new(
                fileTitle: .literal('weekly_brief_example.md'),
                mimeType: .literal('text/markdown'),
                fileContent: .literal(
                  '# Weekly liquidity brief\n\n'
                  '## Position by currency\n\n## Accounts to watch\n',
                ),
              ),
            ),
          ),
        ],
        // Document export accepts PDF, DOCX or GOOGLE_DOCS; the schema types
        // it as a plain string, so an invalid value only fails at apply.
        artifactsConfig: AgenticApplicationsAnalystAgentPersonaArtifactsConfig(
          documentGenerationOptions: .new(exportFormat: .literal('PDF')),
        ),
        dependsOn: [...apiDeps, positions],
      ),
    );
  }
}

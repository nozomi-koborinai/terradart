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
import 'package:terradart_google/time.dart';

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
        localName: 'treasury',
        datasetId: TfArg.literal('terradart_treasury'),
        location: TfArg.literal('US'),
        friendlyName: TfArg.literal('TerraDart treasury'),
        description: TfArg.literal(
          'Grounding data for the TerraDart treasury analyst persona.',
        ),
        deleteContentsOnDestroy: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    final positions = add(
      GoogleBigqueryTable(
        localName: 'cash_positions',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        tableId: TfArg.literal('cash_positions'),
        description: TfArg.literal('Daily closing cash balance per account.'),
        deletionProtection: TfArg.literal(false),
        schema: TfArg.literal(
          jsonEncode([
            {'name': 'as_of_date', 'type': 'DATE', 'mode': 'REQUIRED'},
            {'name': 'account_id', 'type': 'STRING', 'mode': 'REQUIRED'},
            {'name': 'currency', 'type': 'STRING', 'mode': 'REQUIRED'},
            {'name': 'closing_balance', 'type': 'NUMERIC', 'mode': 'REQUIRED'},
          ]),
        ),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    // The API addresses BigQuery grounding data by resource path, so the
    // in-stack dataset/table ids are interpolated into the expected format.
    final datasetPath =
        'projects/$projectId/datasets/${dataset.datasetIdRef.interpolation}';
    final tablePath =
        '$datasetPath/tables/${positions.tableIdRef.interpolation}';

    add(
      GoogleAgenticApplicationsAnalystAgentPersona(
        localName: 'treasury_analyst',
        location: TfArg.literal('us-central1'),
        analystAgentPersonaId: TfArg.literal('terradart-treasury-analyst'),
        displayName: TfArg.literal('TerraDart treasury analyst'),
        role: TfArg.literal(
          AgenticApplicationsAnalystAgentPersonaRole.treasuryAnalyst,
        ),
        displayDescription: TfArg.literal(
          'Answers cash-position and liquidity questions for TerraDart.',
        ),
        modelDescription: TfArg.literal(
          'Treasury analyst for a mid-size SaaS company. Prefers same-day '
          'balances and always reports amounts in the account currency.',
        ),
        customerContext: TfArg.literal([
          'TerraDart operates in USD, EUR and JPY.',
          'The fiscal year ends on March 31.',
        ]),
        resources: [
          AgenticApplicationsAnalystAgentPersonaResources(
            displayLabel: TfArg.literal('Cash positions'),
            modelDescription: TfArg.literal(
              'One row per account and day, with the closing balance.',
            ),
            bigqueryResource:
                AgenticApplicationsAnalystAgentPersonaResourcesBigqueryResource(
              bigqueryDataset: TfArg.literal(datasetPath),
              bigqueryTable: TfArg.literal(tablePath),
              columnDescriptions: TfArg.literal({
                'closing_balance': 'Closing balance in the account currency.',
              }),
            ),
          ),
          AgenticApplicationsAnalystAgentPersonaResources(
            displayLabel: TfArg.literal('Liquidity policy'),
            modelDescription: TfArg.literal(
              'Internal policy the analyst must follow when flagging risk.',
            ),
            useRag: TfArg.literal(true),
            rawFileResource:
                AgenticApplicationsAnalystAgentPersonaResourcesRawFileResource(
              fileTitle: TfArg.literal('liquidity_policy.md'),
              mimeType: TfArg.literal('text/markdown'),
              fileContent: TfArg.literal(
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
            name: TfArg.literal('cash_positions'),
            description: TfArg.literal('Daily closing balances per account.'),
            columns: [
              AgenticApplicationsAnalystAgentPersonaTablesColumns(
                name: TfArg.literal('account_id'),
                dataType: TfArg.literal('STRING'),
                description: TfArg.literal(
                  'Internal treasury account identifier.',
                ),
              ),
              AgenticApplicationsAnalystAgentPersonaTablesColumns(
                name: TfArg.literal('closing_balance'),
                dataType: TfArg.literal('NUMERIC'),
                description: TfArg.literal(
                  'Balance at end of day, in the account currency.',
                ),
              ),
            ],
          ),
        ],
        skills: [
          AgenticApplicationsAnalystAgentPersonaSkills(
            skillId: TfArg.literal('daily-cash-position'),
            description: TfArg.literal(
              'Summarize the latest cash position per currency.',
            ),
            content: TfArg.literal(
              '# Daily cash position\n\n'
              '1. Read the latest `as_of_date` in `cash_positions`.\n'
              '2. Group closing balances by currency.\n'
              '3. Call out any account below the 30-day policy threshold.\n',
            ),
            references: [
              AgenticApplicationsAnalystAgentPersonaSkillsReferences(
                referenceId: TfArg.literal('policy-threshold'),
                content: TfArg.literal(
                  'The 30-day threshold is defined in liquidity_policy.md.',
                ),
              ),
            ],
          ),
        ],
        externalDataSources: [
          AgenticApplicationsAnalystAgentPersonaExternalDataSources(
            enabled: TfArg.literal(true),
            treasurySecuritiesAuctions:
                const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesTreasurySecuritiesAuctions(),
          ),
        ],
        artifactExamples: [
          AgenticApplicationsAnalystAgentPersonaArtifactExamples(
            resource:
                AgenticApplicationsAnalystAgentPersonaArtifactExamplesResource(
              displayLabel: TfArg.literal('Weekly liquidity brief'),
              modelDescription: TfArg.literal(
                'Shape of the weekly brief the analyst produces.',
              ),
              rawFileResource:
                  AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceRawFileResource(
                fileTitle: TfArg.literal('weekly_brief_example.md'),
                mimeType: TfArg.literal('text/markdown'),
                fileContent: TfArg.literal(
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
          documentGenerationOptions:
              AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptions(
            exportFormat: TfArg.literal('PDF'),
          ),
        ),
        dependsOn: [...apiDeps, ResourceDependency(positions)],
      ),
    );
  }
}

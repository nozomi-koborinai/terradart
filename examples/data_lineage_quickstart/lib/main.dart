/// Data Lineage config quickstart.
///
/// Enables `datalineage.googleapis.com` and manages a project-level
/// `google_data_lineage_config` that turns on Dataproc lineage ingestion.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataplex.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Lineage Stack: project config enabling Dataproc lineage ingestion.
final class DataLineageStack extends Stack {
  DataLineageStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiLineage = add(
      GoogleProjectService(
        localName: 'api_datalineage',
        service: TfArg.literal('datalineage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleDataLineageConfig(
        localName: 'lineage',
        parent: TfArg.literal('projects/$projectId'),
        location: TfArg.literal('global'),
        ingestion: DataLineageConfigIngestion(
          rule: [
            DataLineageConfigIngestionRule(
              integrationSelector:
                  DataLineageConfigIngestionRuleIntegrationSelector(
                integration: TfArg.literal(
                  DataLineageConfigIngestionRuleIntegrationSelectorIntegration
                      .dataproc,
                ),
              ),
              lineageEnablement: DataLineageConfigIngestionRuleLineageEnablement(
                enabled: TfArg.literal(true),
              ),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(apiLineage)],
      ),
    );
  }
}

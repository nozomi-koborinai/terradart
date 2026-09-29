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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiLineage = add(
      GoogleProjectService(
        localName: 'api_datalineage',
        service: .literal('datalineage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleDataLineageConfig(
        localName: 'lineage',
        parent: .literal('projects/$projectId'),
        location: .literal('global'),
        ingestion: DataLineageConfigIngestion(
          rule: [
            DataLineageConfigIngestionRule(
              integrationSelector:
                  DataLineageConfigIngestionRuleIntegrationSelector(
                    integration: .literal(
                      DataLineageConfigIngestionRuleIntegrationSelectorIntegration
                          .dataproc,
                    ),
                  ),
              lineageEnablement:
                  DataLineageConfigIngestionRuleLineageEnablement(
                    enabled: .literal(true),
                  ),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(apiLineage)],
      ),
    );
  }
}

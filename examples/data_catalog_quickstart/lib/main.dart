/// Data Catalog entry group quickstart.
///
/// Enables `datacatalog.googleapis.com` and creates a regional entry group.
/// Prefer Dataplex Universal Catalog for new catalogs; this stack exercises
/// the legacy Data Catalog API factory.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data_catalog.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Catalog stack: entry group metadata.
final class DataCatalogStack extends Stack {
  DataCatalogStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDataCatalog = add(
      GoogleProjectService(
        localName: 'api_datacatalog',
        service: TfArg.literal('datacatalog.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleDataCatalogEntryGroup(
        localName: 'group',
        entryGroupId: TfArg.literal('terradart_entry_group'),
        region: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart entry group'),
        description: TfArg.literal('TerraDart smoke Data Catalog entry group'),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );
  }
}

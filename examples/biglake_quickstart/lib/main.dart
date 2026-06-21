/// BigLake Metastore quickstart -- an end-to-end terradart example.
///
/// Defines a `MetastoreStack` that enables the BigLake API and provisions a
/// Hive-compatible metastore hierarchy:
/// - a catalog,
/// - a database under it (Hive warehouse directory in `hive_options`),
/// - a table under the database (Hive storage descriptor in `hive_options`).
///
/// The `hive_options` config is passed as a structured map (the thin curated
/// factories expose it as `TfArg<Map<String, dynamic>>`). The metastore stores
/// catalog metadata only, so the stack creates and destroys cleanly in a
/// single project.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/biglake.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// BigLake Metastore Stack: a catalog + database + table.
final class MetastoreStack extends Stack {
  MetastoreStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final warehouse = 'gs://$projectId-terradart-biglake';

    final apiBiglake = add(
      GoogleProjectService(
        localName: 'api_biglake',
        service: TfArg.literal('biglake.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final catalog = add(
      GoogleBiglakeCatalog(
        localName: 'analytics',
        name: TfArg.literal('terradart_catalog'),
        location: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiBiglake)],
      ),
    );

    final database = add(
      GoogleBiglakeDatabase(
        localName: 'sales',
        name: TfArg.literal('terradart_db'),
        catalog: TfArg.ref(catalog.id),
        type: TfArg.literal('HIVE'),
        hiveOptions: TfArg.literal(<String, Object?>{
          'location_uri': '$warehouse/terradart_db',
          'parameters': {'owner': 'terradart'},
        }),
        dependsOn: [ResourceDependency(catalog)],
      ),
    );

    add(
      GoogleBiglakeTable(
        localName: 'orders',
        name: TfArg.literal('terradart_orders'),
        database: TfArg.ref(database.id),
        type: TfArg.literal('HIVE'),
        hiveOptions: TfArg.literal(<String, Object?>{
          'table_type': 'MANAGED_TABLE',
          'storage_descriptor': {
            'location_uri': '$warehouse/terradart_db/orders',
            'input_format': 'org.apache.hadoop.mapred.TextInputFormat',
            'output_format':
                'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat',
          },
        }),
        dependsOn: [ResourceDependency(database)],
      ),
    );

    // Literal catalog name -- emitted as a Dart constant at synth time.
    addExport('CATALOG_NAME', StringExport('terradart_catalog'));

    // Full catalog resource id -- Terraform output only (computed).
    addExport(
      'CATALOG_ID',
      ResourceIdExport(catalog.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/metastore_stack.app.dart');
  }
}

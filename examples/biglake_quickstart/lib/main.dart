/// BigLake Metastore quickstart -- an end-to-end terradart example.
///
/// Defines a `MetastoreStack` that enables the BigLake API and provisions:
/// - a Hive-compatible metastore hierarchy (catalog → database → table),
/// - an Iceberg REST catalog on a GCS bucket (catalog → namespace → table).
///
/// Hive `hive_options` and Iceberg `schema` / `partition_spec` stay as
/// structured maps on the thin curated factories. Metadata-only resources
/// create and destroy cleanly in a single project; the Iceberg table hits
/// BigLake Table Management hourly SKUs (PR apply deferred via
/// `apply_smoke_pr_skip.yaml`).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/biglake.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// BigLake Metastore Stack: Hive + Iceberg catalog trees.
final class MetastoreStack extends Stack {
  MetastoreStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final warehouse = 'gs://$projectId-terradart-biglake';
    // Globally unique GCS bucket name (= Iceberg catalog name).
    final icebergBucketName = '$projectId-terradart-iceberg';

    final apiBiglake = add(
      GoogleProjectService(
        localName: 'api_biglake',
        service: TfArg.literal('biglake.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
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

    final icebergBucket = add(
      GoogleStorageBucket(
        localName: 'iceberg_bucket',
        name: TfArg.literal(icebergBucketName),
        location: TfArg.literal('US-CENTRAL1'),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final icebergCatalog = add(
      GoogleBiglakeIcebergCatalog(
        localName: 'iceberg_catalog',
        name: TfArg.ref(icebergBucket.nameRef),
        catalogType: TfArg.literal(
          BiglakeIcebergCatalogCatalogType.catalogTypeGcsBucket,
        ),
        credentialMode: TfArg.literal(
          BiglakeIcebergCatalogCredentialMode.credentialModeEndUser,
        ),
        dependsOn: [
          ResourceDependency(apiBiglake),
          ResourceDependency(icebergBucket),
        ],
      ),
    );

    final icebergNamespace = add(
      GoogleBiglakeIcebergNamespace(
        localName: 'iceberg_ns',
        catalog: TfArg.ref(icebergCatalog.nameRef),
        namespaceId: TfArg.literal('terradart_ns'),
        dependsOn: [ResourceDependency(icebergCatalog)],
      ),
    );

    add(
      GoogleBiglakeIcebergTable(
        localName: 'iceberg_orders',
        catalog: TfArg.ref(icebergCatalog.nameRef),
        namespace: TfArg.ref(icebergNamespace.namespaceIdRef),
        name: TfArg.literal('terradart_iceberg_orders'),
        location: TfArg.literal(
          'gs://$icebergBucketName/terradart_ns/terradart_iceberg_orders',
        ),
        schema: TfArg.literal(<String, Object?>{
          'type': 'struct',
          'fields': [
            {
              'id': 1,
              'name': 'id',
              'type': 'long',
              'required': true,
              'doc': 'The ID of the record',
            },
            {
              'id': 2,
              'name': 'name',
              'type': 'string',
              'required': false,
            },
          ],
          'identifier_field_ids': [1],
        }),
        partitionSpec: TfArg.literal(<String, Object?>{
          'fields': [
            {
              'name': 'id_partition',
              'source_id': 1,
              'transform': 'identity',
            },
          ],
        }),
        dependsOn: [ResourceDependency(icebergNamespace)],
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

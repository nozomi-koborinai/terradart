/// BigLake Metastore quickstart -- an end-to-end terradart example.
///
/// Defines a `MetastoreStack` that enables the BigLake API and provisions:
/// - a Hive-compatible metastore hierarchy (catalog → database → table),
/// - an Iceberg REST catalog on a GCS bucket (catalog → namespace → table).
///
/// Hive `hive_options` and Iceberg `schema` / `partition_spec` stay as
/// structured maps on the thin curated factories. Metadata-only resources
/// create and destroy cleanly in a single project; the Iceberg table bills
/// BigLake Table Management hourly while it exists.
///
/// Additive IAM members grant a reader service account on each Iceberg level
/// (catalog, namespace, table).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/biglake.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// BigLake Metastore Stack: Hive + Iceberg catalog trees.
final class MetastoreStack extends Stack {
  MetastoreStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/metastore_stack.app.dart'),
      ) {
    final warehouse = 'gs://$projectId-terradart-biglake';
    // Globally unique GCS bucket name (= Iceberg catalog name).
    final icebergBucketName = '$projectId-terradart-iceberg';

    final apiBiglake = add(
      GoogleProjectService(
        'api_biglake',
        service: .literal('biglake.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final catalog = add(
      GoogleBiglakeCatalog(
        'analytics',
        name: .literal('terradart_catalog'),
        location: .literal('us-central1'),
        dependsOn: [apiBiglake],
      ),
    );

    final database = add(
      GoogleBiglakeDatabase(
        'sales',
        name: .literal('terradart_db'),
        catalog: catalog.ref,
        type: .literal('HIVE'),
        hiveOptions: BiglakeDatabaseHiveOptions(
          locationUri: .literal('$warehouse/terradart_db'),
          parameters: .literal({'owner': 'terradart'}),
        ),
        dependsOn: [catalog],
      ),
    );

    add(
      GoogleBiglakeTable(
        'orders',
        name: .literal('terradart_orders'),
        database: database.ref,
        type: .literal('HIVE'),
        hiveOptions: BiglakeTableHiveOptions(
          tableType: .literal('MANAGED_TABLE'),
          storageDescriptor: .new(
            locationUri: .literal('$warehouse/terradart_db/orders'),
            inputFormat: .literal('org.apache.hadoop.mapred.TextInputFormat'),
            outputFormat: .literal(
              'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat',
            ),
          ),
        ),
        dependsOn: [database],
      ),
    );

    final icebergBucket = add(
      GoogleStorageBucket(
        'iceberg_bucket',
        name: .literal(icebergBucketName),
        location: .literal('US-CENTRAL1'),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [apiStorage],
      ),
    );

    final icebergCatalog = add(
      GoogleBiglakeIcebergCatalog(
        'iceberg_catalog',
        name: icebergBucket.name,
        catalogType: .literal(.catalogTypeGcsBucket),
        credentialMode: .literal(.credentialModeEndUser),
        dependsOn: [apiBiglake, icebergBucket],
      ),
    );

    final icebergNamespace = add(
      GoogleBiglakeIcebergNamespace(
        'iceberg_ns',
        catalog: icebergCatalog.ref,
        namespaceId: .literal('terradart_ns'),
        dependsOn: [icebergCatalog],
      ),
    );

    final icebergTable = add(
      GoogleBiglakeIcebergTable(
        'iceberg_orders',
        catalog: icebergCatalog.ref,
        namespace: icebergNamespace.ref,
        name: .literal('terradart_iceberg_orders'),
        location: .literal(
          'gs://$icebergBucketName/terradart_ns/terradart_iceberg_orders',
        ),
        schema: BiglakeIcebergTableSchema(
          type: .literal('struct'),
          fields: [
            .new(
              id: .literal(1),
              name: .literal('id'),
              type: .literal('long'),
              required: .literal(true),
              doc: .literal('The ID of the record'),
            ),
            .new(
              id: .literal(2),
              name: .literal('name'),
              type: .literal('string'),
              required: .literal(false),
            ),
          ],
          identifierFieldIds: .literal([1]),
        ),
        partitionSpec: BiglakeIcebergTablePartitionSpec(
          fields: [
            .new(
              name: .literal('id_partition'),
              sourceId: .literal(1),
              transform: .literal('identity'),
            ),
          ],
        ),
        dependsOn: [icebergNamespace],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        'iceberg_reader',
        accountId: .literal('terradart-iceberg-reader'),
        displayName: .literal('BigLake Iceberg reader'),
      ),
    );

    add(
      GoogleBiglakeIcebergCatalogIamMember(
        'catalog_reader',
        catalog: icebergCatalog.ref,
        role: .literal('roles/viewer'),
        member: reader.principal,
        dependsOn: [icebergCatalog, reader],
      ),
    );

    add(
      GoogleBiglakeIcebergNamespaceIamMember(
        'namespace_reader',
        namespace: icebergNamespace.ref,
        role: .literal('roles/viewer'),
        member: reader.principal,
        dependsOn: [icebergNamespace, reader],
      ),
    );

    add(
      GoogleBiglakeIcebergTableIamMember(
        'table_reader',
        table: icebergTable.ref,
        role: .literal('roles/viewer'),
        member: reader.principal,
        dependsOn: [icebergTable, reader],
      ),
    );

    // Literal catalog name -- emitted as a Dart constant at synth time.
    addConstant('catalogName', .ref(catalog.name));

    // Full catalog resource id -- Terraform output only (computed).
    addOutput('catalog_id', catalog.id);
  }
}

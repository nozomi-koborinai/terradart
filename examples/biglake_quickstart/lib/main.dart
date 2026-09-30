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
        localName: 'api_biglake',
        service: .literal('biglake.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final catalog = add(
      GoogleBiglakeCatalog(
        localName: 'analytics',
        name: .literal('terradart_catalog'),
        location: .literal('us-central1'),
        dependsOn: [ResourceDependency(apiBiglake)],
      ),
    );

    final database = add(
      GoogleBiglakeDatabase(
        localName: 'sales',
        name: .literal('terradart_db'),
        catalog: .ref(catalog.id),
        type: .literal('HIVE'),
        hiveOptions: BiglakeDatabaseHiveOptions(
          locationUri: .literal('$warehouse/terradart_db'),
          parameters: .literal({'owner': 'terradart'}),
        ),
        dependsOn: [ResourceDependency(catalog)],
      ),
    );

    add(
      GoogleBiglakeTable(
        localName: 'orders',
        name: .literal('terradart_orders'),
        database: .ref(database.id),
        type: .literal('HIVE'),
        hiveOptions: BiglakeTableHiveOptions(
          tableType: .literal('MANAGED_TABLE'),
          storageDescriptor: BiglakeTableHiveOptionsStorageDescriptor(
            locationUri: .literal('$warehouse/terradart_db/orders'),
            inputFormat: .literal('org.apache.hadoop.mapred.TextInputFormat'),
            outputFormat: .literal(
              'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat',
            ),
          ),
        ),
        dependsOn: [ResourceDependency(database)],
      ),
    );

    final icebergBucket = add(
      GoogleStorageBucket(
        localName: 'iceberg_bucket',
        name: .literal(icebergBucketName),
        location: .literal('US-CENTRAL1'),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final icebergCatalog = add(
      GoogleBiglakeIcebergCatalog(
        localName: 'iceberg_catalog',
        name: .ref(icebergBucket.nameRef),
        catalogType: .literal(.catalogTypeGcsBucket),
        credentialMode: .literal(.credentialModeEndUser),
        dependsOn: [
          ResourceDependency(apiBiglake),
          ResourceDependency(icebergBucket),
        ],
      ),
    );

    final icebergNamespace = add(
      GoogleBiglakeIcebergNamespace(
        localName: 'iceberg_ns',
        catalog: .ref(icebergCatalog.nameRef),
        namespaceId: .literal('terradart_ns'),
        dependsOn: [ResourceDependency(icebergCatalog)],
      ),
    );

    final icebergTable = add(
      GoogleBiglakeIcebergTable(
        localName: 'iceberg_orders',
        catalog: .ref(icebergCatalog.nameRef),
        namespace: .ref(icebergNamespace.namespaceIdRef),
        name: .literal('terradart_iceberg_orders'),
        location: .literal(
          'gs://$icebergBucketName/terradart_ns/terradart_iceberg_orders',
        ),
        schema: .literal(<String, Object?>{
          'type': 'struct',
          'fields': [
            {
              'id': 1,
              'name': 'id',
              'type': 'long',
              'required': true,
              'doc': 'The ID of the record',
            },
            {'id': 2, 'name': 'name', 'type': 'string', 'required': false},
          ],
          'identifier_field_ids': [1],
        }),
        partitionSpec: .literal(<String, Object?>{
          'fields': [
            {'name': 'id_partition', 'source_id': 1, 'transform': 'identity'},
          ],
        }),
        dependsOn: [ResourceDependency(icebergNamespace)],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'iceberg_reader',
        accountId: .literal('terradart-iceberg-reader'),
        displayName: .literal('BigLake Iceberg reader'),
      ),
    );

    add(
      GoogleBiglakeIcebergCatalogIamMember(
        localName: 'catalog_reader',
        name: .ref(icebergCatalog.nameRef),
        role: .literal('roles/viewer'),
        member: .ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(icebergCatalog),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleBiglakeIcebergNamespaceIamMember(
        localName: 'namespace_reader',
        catalog: .ref(icebergCatalog.nameRef),
        namespaceId: .ref(icebergNamespace.namespaceIdRef),
        role: .literal('roles/viewer'),
        member: .ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(icebergNamespace),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleBiglakeIcebergTableIamMember(
        localName: 'table_reader',
        catalog: .ref(icebergCatalog.nameRef),
        namespace: .ref(icebergNamespace.namespaceIdRef),
        name: .ref(icebergTable.nameRef),
        role: .literal('roles/viewer'),
        member: .ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(icebergTable),
          ResourceDependency(reader),
        ],
      ),
    );

    // Literal catalog name -- emitted as a Dart constant at synth time.
    addConstant('catalogName', .ref(catalog.nameRef));

    // Full catalog resource id -- Terraform output only (computed).
    addOutput('catalog_id', .ref(catalog.id));
  }
}

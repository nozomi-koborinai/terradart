/// Dataplex quickstart — governed data product, Universal Catalog metadata,
/// business glossary, lake (zone + asset), catalog entry link, data-product asset
/// link, data scan, lake task, and resource-scoped IAM members.
///
/// Provisions a `google_dataplex_data_product` and grants a separate
/// in-stack service account `roles/dataplex.dataProductViewer` on that
/// product via `google_dataplex_data_product_iam_member`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataplex.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_google/time.dart';

final class DataplexCatalogStack extends Stack {
  DataplexCatalogStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.dataplex, Barrels.storage],
      propagationDelay: const Duration(seconds: 60),
    );

    final owner = add(
      GoogleServiceAccount(
        localName: 'product_owner',
        accountId: TfArg.literal('dataplex-product-owner'),
        displayName: TfArg.literal('Dataplex data product owner'),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'product_reader',
        accountId: TfArg.literal('dataplex-product-reader'),
        displayName: TfArg.literal('Dataplex data product reader'),
      ),
    );

    final dataProduct = add(
      GoogleDataplexDataProduct(
        localName: 'customer_360',
        location: TfArg.literal('us-central1'),
        dataProductId: TfArg.literal('customer-360'),
        displayName: TfArg.literal('Customer 360'),
        ownerEmails: TfArg.literal([owner.email.interpolation]),
        description: TfArg.literal('Curated customer analytics product'),
        dependsOn: [...apiDeps, ResourceDependency(owner)],
      ),
    );

    add(
      GoogleDataplexDataProductIamMember(
        localName: 'customer_360_reader',
        dataProductId: TfArg.ref(dataProduct.dataProductIdRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(dataProduct),
          ResourceDependency(reader),
        ],
      ),
    );

    // --- Dataplex Universal Catalog metadata ---------------------------------
    // An entry group (a container for catalog entries), an entry type, and an
    // aspect type (a reusable metadata template), each with a resource-level
    // IAM member granting the reader service account catalog access.

    final catalogGroup = add(
      GoogleDataplexEntryGroup(
        localName: 'catalog',
        entryGroupId: TfArg.literal('terradart-catalog'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart catalog'),
        description: TfArg.literal('Catalog entry group for the quickstart'),
        dependsOn: [...apiDeps],
      ),
    );

    final datasetType = add(
      GoogleDataplexEntryType(
        localName: 'dataset_type',
        entryTypeId: TfArg.literal('terradart-dataset'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart dataset'),
        description: TfArg.literal('Entry type describing a dataset'),
        dependsOn: [...apiDeps],
      ),
    );

    final qualityAspect = add(
      GoogleDataplexAspectType(
        localName: 'quality',
        aspectTypeId: TfArg.literal('terradart-quality'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('Data quality'),
        dataClassification: TfArg.literal(
          DataplexAspectTypeDataClassification.metadataAndData,
        ),
        // Minimal valid metadata template (single required enum field).
        metadataTemplate: TfArg.literal('''
{
  "name": "terradart-quality",
  "type": "record",
  "recordFields": [
    {
      "name": "tier",
      "type": "enum",
      "index": 1,
      "annotations": { "displayName": "Tier" },
      "constraints": { "required": true },
      "enumValues": [
        { "name": "GOLD", "index": 1 },
        { "name": "SILVER", "index": 2 }
      ]
    }
  ]
}
'''),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexEntryGroupIamMember(
        localName: 'catalog_viewer',
        entryGroupId: TfArg.literal('terradart-catalog'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.catalogViewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(catalogGroup),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexEntryTypeIamMember(
        localName: 'dataset_type_viewer',
        entryTypeId: TfArg.literal('terradart-dataset'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.catalogViewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(datasetType),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexAspectTypeIamMember(
        localName: 'quality_viewer',
        aspectTypeId: TfArg.literal('terradart-quality'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.catalogViewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(qualityAspect),
          ResourceDependency(reader),
        ],
      ),
    );

    final customerDatasetEntry = add(
      GoogleDataplexEntry(
        localName: 'customer_dataset',
        entryGroupId: TfArg.literal('terradart-catalog'),
        entryId: TfArg.literal('customer-dataset'),
        location: TfArg.literal('us-central1'),
        entryType: TfArg.ref(datasetType.nameRef),
        entrySource: TfArg.literal({
          'display_name': 'Customer dataset',
          'description': 'Catalog entry for the customer 360 dataset',
        }),
        dependsOn: [
          ResourceDependency(catalogGroup),
          ResourceDependency(datasetType),
          ...apiDeps,
        ],
      ),
    );

    // --- Dataplex business glossary ------------------------------------------
    // A glossary with one category and one term, plus a resource-level IAM
    // member granting the reader catalog access on the glossary.

    final glossary = add(
      GoogleDataplexGlossary(
        localName: 'business_terms',
        glossaryId: TfArg.literal('terradart-glossary'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart business glossary'),
        description: TfArg.literal('Shared business vocabulary'),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexGlossaryCategory(
        localName: 'metrics_category',
        categoryId: TfArg.literal('terradart-metrics'),
        glossaryId: TfArg.literal('terradart-glossary'),
        location: TfArg.literal('us-central1'),
        parent: TfArg.ref(glossary.id),
        displayName: TfArg.literal('Metrics'),
        dependsOn: [ResourceDependency(glossary)],
      ),
    );

    add(
      GoogleDataplexGlossaryTerm(
        localName: 'mrr_term',
        termId: TfArg.literal('terradart-mrr'),
        glossaryId: TfArg.literal('terradart-glossary'),
        location: TfArg.literal('us-central1'),
        parent: TfArg.ref(glossary.id),
        displayName: TfArg.literal('Monthly Recurring Revenue'),
        description: TfArg.literal('Normalized monthly subscription revenue'),
        dependsOn: [ResourceDependency(glossary)],
      ),
    );

    add(
      GoogleDataplexGlossaryIamMember(
        localName: 'glossary_viewer',
        glossaryId: TfArg.literal('terradart-glossary'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.catalogViewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(glossary),
          ResourceDependency(reader),
        ],
      ),
    );

    // Links the catalog dataset entry to the MRR glossary term (definition).
    add(
      GoogleDataplexEntryLink(
        localName: 'dataset_mrr_link',
        entryGroupId: TfArg.literal('terradart-catalog'),
        entryLinkId: TfArg.literal('customer-dataset-mrr'),
        location: TfArg.literal('us-central1'),
        entryLinkType: TfArg.literal(
          'projects/dataplex-types/locations/global/entryLinkTypes/definition',
        ),
        entryReferences: TfArg.literal([
          {
            'name': customerDatasetEntry.nameRef.interpolation,
            'type': 'SOURCE',
          },
          {
            'name':
                'projects/$projectId/locations/us-central1/entryGroups/@dataplex/entries/projects/$projectId/locations/us-central1/glossaries/terradart-glossary/terms/terradart-mrr',
            'type': 'TARGET',
          },
        ]),
        dependsOn: [
          ResourceDependency(customerDatasetEntry),
          ResourceDependency(glossary),
        ],
      ),
    );

    // --- Dataplex lake -------------------------------------------------------
    // A lake (the top-level Dataplex data-management container) with a
    // resource-level IAM member granting the reader read access.
    final lake = add(
      GoogleDataplexLake(
        localName: 'analytics_lake',
        name: TfArg.literal('terradart-lake'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('Analytics lake'),
        description: TfArg.literal('Top-level Dataplex container'),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexLakeIamMember(
        localName: 'lake_viewer',
        lake: TfArg.literal('terradart-lake'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(lake),
          ResourceDependency(reader),
        ],
      ),
    );

    // --- Dataplex lake zone + asset ----------------------------------------
    // A raw zone under the lake, a GCS bucket registered as a lake asset, and
    // a zone-level IAM member for the reader service account.

    final lakeDataBucket = add(
      GoogleStorageBucket(
        localName: 'lake_data',
        name: TfArg.literal('terradart-dataplex-lake-data'),
        location: TfArg.literal('US-CENTRAL1'),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [...apiDeps],
      ),
    );

    final rawZone = add(
      GoogleDataplexZone(
        localName: 'raw_zone',
        name: TfArg.literal('terradart-raw-zone'),
        lake: TfArg.ref(lake.nameRef),
        location: TfArg.literal('us-central1'),
        type: TfArg.literal(DataplexZoneType.raw),
        displayName: TfArg.literal('Raw zone'),
        description: TfArg.literal('Raw data partition in the analytics lake'),
        discoverySpec: TfArg.literal({'enabled': false}),
        resourceSpec: TfArg.literal({'location_type': 'SINGLE_REGION'}),
        dependsOn: [
          ResourceDependency(lake),
          ...apiDeps,
        ],
      ),
    );

    final lakeDataAsset = add(
      GoogleDataplexAsset(
        localName: 'lake_data_asset',
        name: TfArg.literal('terradart-lake-data-asset'),
        dataplexZone: TfArg.ref(rawZone.nameRef),
        lake: TfArg.ref(lake.nameRef),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('Lake data bucket asset'),
        discoverySpec: TfArg.literal({'enabled': false}),
        resourceSpec: TfArg.literal({
          'name': 'projects/$projectId/buckets/terradart-dataplex-lake-data',
          'type': 'STORAGE_BUCKET',
        }),
        dependsOn: [
          ResourceDependency(rawZone),
          ResourceDependency(lakeDataBucket),
        ],
      ),
    );

    add(
      GoogleDataplexDataProductDataAsset(
        localName: 'customer_360_lake_asset',
        dataProductId: TfArg.ref(dataProduct.dataProductIdRef),
        dataAssetId: TfArg.literal('lake-data'),
        location: TfArg.literal('us-central1'),
        resource: TfArg.literal(
          'projects/$projectId/locations/us-central1/lakes/terradart-lake/zones/terradart-raw-zone/assets/terradart-lake-data-asset',
        ),
        dependsOn: [
          ResourceDependency(dataProduct),
          ResourceDependency(lakeDataAsset),
        ],
      ),
    );

    add(
      GoogleDataplexAssetIamMember(
        localName: 'lake_data_asset_viewer',
        asset: TfArg.literal('terradart-lake-data-asset'),
        dataplexZone: TfArg.literal('terradart-raw-zone'),
        lake: TfArg.literal('terradart-lake'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(lakeDataAsset),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexZoneIamMember(
        localName: 'raw_zone_viewer',
        dataplexZone: TfArg.ref(rawZone.nameRef),
        lake: TfArg.ref(lake.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(rawZone),
          ResourceDependency(reader),
        ],
      ),
    );

    // --- Dataplex data scan --------------------------------------------------
    // A discovery scan over the lake data bucket (on-demand trigger) plus a
    // resource-level IAM member for the reader service account.

    final lakeDiscoveryScan = add(
      GoogleDataplexDatascan(
        localName: 'lake_discovery',
        dataScanId: TfArg.literal('terradart-lake-discovery'),
        location: TfArg.literal('us-central1'),
        scanSpec: const DataplexDatascanDataDiscoverySpec(),
        data: TfArg.literal({
          'resource':
              '//storage.googleapis.com/projects/$projectId/buckets/terradart-dataplex-lake-data',
        }),
        executionSpec: TfArg.literal({
          'trigger': {'on_demand': <String, Object?>{}},
        }),
        displayName: TfArg.literal('Lake data discovery scan'),
        description: TfArg.literal(
          'Infers schema from objects in the lake data bucket',
        ),
        dependsOn: [
          ResourceDependency(lakeDataBucket),
          ResourceDependency(lakeDataAsset),
          ...apiDeps,
        ],
      ),
    );

    add(
      GoogleDataplexDatascanIamMember(
        localName: 'discovery_viewer',
        dataScanId: TfArg.ref(lakeDiscoveryScan.dataScanIdRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(lakeDiscoveryScan),
          ResourceDependency(reader),
        ],
      ),
    );

    // --- Dataplex lake task --------------------------------------------------
    // An on-demand Spark SQL task under the lake plus a resource-level IAM
    // member for the reader service account.

    final lakeSqlTask = add(
      GoogleDataplexTask(
        localName: 'lake_sql_task',
        taskId: TfArg.literal('terradart-sql-task'),
        location: TfArg.literal('us-central1'),
        lake: TfArg.literal('terradart-lake'),
        workload: DataplexTaskSparkWorkload(
          sqlScript: TfArg.literal('SELECT 1'),
        ),
        triggerSpec: TfArg.literal({
          'type': 'ON_DEMAND',
        }),
        executionSpec: TfArg.literal({
          'service_account': reader.email.interpolation,
        }),
        displayName: TfArg.literal('Lake SQL task'),
        description: TfArg.literal(
          'On-demand Spark SQL task for the analytics lake',
        ),
        dependsOn: [
          ResourceDependency(lake),
          ResourceDependency(reader),
          ...apiDeps,
        ],
      ),
    );

    add(
      GoogleDataplexTaskIamMember(
        localName: 'sql_task_viewer',
        taskId: TfArg.ref(lakeSqlTask.taskIdRef),
        lake: TfArg.literal('terradart-lake'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/dataplex.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(lakeSqlTask),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}

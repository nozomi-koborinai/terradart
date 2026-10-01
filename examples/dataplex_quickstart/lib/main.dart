/// Dataplex quickstart — governed data product, Universal Catalog metadata,
/// metadata feed (Pub/Sub change notifications), business glossary, lake
/// (zone + asset), catalog entry link, data-product asset link, data scan,
/// lake task, and resource-scoped IAM members.
///
/// Provisions a `google_dataplex_data_product` and grants a separate
/// in-stack service account `roles/dataplex.dataProductViewer` on that
/// product via `google_dataplex_data_product_iam_member`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/dataplex.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_time/terradart_time.dart';

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
      barrels: [
        Barrels.dataplex,
        Barrels.pubsub,
        Barrels.storage,
        Barrels.bigquery,
      ],
      propagationDelay: const Duration(seconds: 60),
    );

    // Resolves the project *number* (not id) — Dataplex entry_type references
    // must be `projects/<project-number>/...`; a project id is rejected.
    final current = addData(GoogleProject(localName: 'current'));

    final owner = add(
      GoogleServiceAccount(
        localName: 'product_owner',
        accountId: .literal('dataplex-product-owner'),
        displayName: .literal('Dataplex data product owner'),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'product_reader',
        accountId: .literal('dataplex-product-reader'),
        displayName: .literal('Dataplex data product reader'),
      ),
    );

    final dataProduct = add(
      GoogleDataplexDataProduct(
        localName: 'customer_360',
        location: .literal('us-central1'),
        dataProductId: .literal('customer-360'),
        displayName: .literal('Customer 360'),
        ownerEmails: .literal([owner.email.interpolation]),
        description: .literal('Curated customer analytics product'),
        dependsOn: [...apiDeps, ResourceDependency(owner)],
      ),
    );

    // A Data Product Data Asset must reference a real data resource (BigQuery
    // dataset / GCS bucket) by full resource name — a Dataplex lake asset is
    // not an accepted target — so back the product with a BigQuery dataset.
    final analyticsDataset = add(
      GoogleBigqueryDataset(
        localName: 'analytics',
        datasetId: .literal('terradart_analytics'),
        location: .literal('us-central1'),
        description: .literal(
          'Curated analytics dataset for the customer 360 data product',
        ),
        deleteContentsOnDestroy: .literal(true),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexDataProductIamMember(
        localName: 'customer_360_reader',
        dataProduct: dataProduct.ref,
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
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
        entryGroupId: .literal('terradart-catalog'),
        location: .literal('us-central1'),
        displayName: .literal('TerraDart catalog'),
        description: .literal('Catalog entry group for the quickstart'),
        dependsOn: [...apiDeps],
      ),
    );

    final datasetType = add(
      GoogleDataplexEntryType(
        localName: 'dataset_type',
        entryTypeId: .literal('terradart-dataset'),
        location: .literal('us-central1'),
        displayName: .literal('TerraDart dataset'),
        description: .literal('Entry type describing a dataset'),
        dependsOn: [...apiDeps],
      ),
    );

    final qualityAspect = add(
      GoogleDataplexAspectType(
        localName: 'quality',
        aspectTypeId: .literal('terradart-quality'),
        location: .literal('us-central1'),
        displayName: .literal('Data quality'),
        dataClassification: .literal(.metadataAndData),
        // Minimal valid metadata template (single required enum field).
        metadataTemplate: .literal('''
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
        entryGroup: .literal('terradart-catalog'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.catalogViewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(catalogGroup),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexEntryTypeIamMember(
        localName: 'dataset_type_viewer',
        entryType: .literal('terradart-dataset'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.catalogViewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(datasetType),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexAspectTypeIamMember(
        localName: 'quality_viewer',
        aspectType: .literal('terradart-quality'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.catalogViewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(qualityAspect),
          ResourceDependency(reader),
        ],
      ),
    );

    final customerDatasetEntry = add(
      GoogleDataplexEntry(
        localName: 'customer_dataset',
        entryGroupId: .literal('terradart-catalog'),
        entryId: .literal('customer-dataset'),
        location: .literal('us-central1'),
        entryType: .literal(
          'projects/${current.number.interpolation}/locations/us-central1'
          '/entryTypes/terradart-dataset',
        ),
        entrySource: DataplexEntrySource(
          displayName: .literal('Customer dataset'),
          description: .literal('Catalog entry for the customer 360 dataset'),
        ),
        dependsOn: [
          ResourceDependency(catalogGroup),
          ResourceDependency(datasetType),
          ...apiDeps,
        ],
      ),
    );

    // --- Dataplex metadata feed (Pub/Sub change notifications) ---------------
    // Publishes Universal Catalog metadata changes for this project to a
    // Pub/Sub topic. Grant the Dataplex service agent publisher on the topic
    // before creating the feed.

    final catalogChangesTopic = add(
      GooglePubsubTopic(
        localName: 'catalog_changes',
        name: .literal('terradart-dataplex-catalog-changes'),
        dependsOn: [...apiDeps],
      ),
    );

    final feedPublisher = add(
      GooglePubsubTopicIamMember(
        localName: 'catalog_changes_dataplex_agent',
        topic: catalogChangesTopic.ref,
        role: .literal('roles/pubsub.publisher'),
        member: .serviceAccount(
          'service-${current.number.interpolation}'
          '@gcp-sa-dataplex.iam.gserviceaccount.com',
        ),
        dependsOn: [
          ResourceDependency(catalogChangesTopic),
          ResourceDependency(current),
        ],
      ),
    );

    // The feed-create API checks pubsub.topics.get AND publish on the
    // Dataplex service agent; roles/pubsub.publisher covers publish only.
    final feedViewer = add(
      GooglePubsubTopicIamMember(
        localName: 'catalog_changes_dataplex_agent_viewer',
        topic: catalogChangesTopic.ref,
        role: .literal('roles/pubsub.viewer'),
        member: .serviceAccount(
          'service-${current.number.interpolation}'
          '@gcp-sa-dataplex.iam.gserviceaccount.com',
        ),
        dependsOn: [
          ResourceDependency(catalogChangesTopic),
          ResourceDependency(current),
        ],
      ),
    );

    // Topic-level IAM propagates asynchronously; the feed-create check 400s
    // if it races the grants.
    final feedIamReady = add(
      TimeSleep(
        localName: 'feed_iam_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 30)),
        triggers: .literal({
          'publisher': 'catalog_changes_dataplex_agent',
          'viewer': 'catalog_changes_dataplex_agent_viewer',
        }),
        dependsOn: [
          ResourceDependency(feedPublisher),
          ResourceDependency(feedViewer),
        ],
      ),
    );

    add(
      GoogleDataplexMetadataFeed(
        localName: 'catalog_changes',
        metadataFeedId: .literal('terradart-catalog-feed'),
        location: .literal('us-central1'),
        scope: DataplexMetadataFeedScope(
          projects: .literal(['projects/$projectId']),
        ),
        filters: DataplexMetadataFeedFilters(
          entryTypes: .literal([
            'projects/${current.number.interpolation}/locations/us-central1'
                '/entryTypes/terradart-dataset',
          ]),
        ),
        pubsubTopic: catalogChangesTopic.ref,
        dependsOn: [
          ResourceDependency(catalogChangesTopic),
          ResourceDependency(feedIamReady),
          ResourceDependency(current),
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
        glossaryId: .literal('terradart-glossary'),
        location: .literal('us-central1'),
        displayName: .literal('TerraDart business glossary'),
        description: .literal('Shared business vocabulary'),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexGlossaryCategory(
        localName: 'metrics_category',
        categoryId: .literal('terradart-metrics'),
        glossaryId: .literal('terradart-glossary'),
        location: .literal('us-central1'),
        parent: glossary.id,
        displayName: .literal('Metrics'),
        dependsOn: [ResourceDependency(glossary)],
      ),
    );

    add(
      GoogleDataplexGlossaryTerm(
        localName: 'mrr_term',
        termId: .literal('terradart-mrr'),
        glossaryId: .literal('terradart-glossary'),
        location: .literal('us-central1'),
        parent: glossary.id,
        displayName: .literal('Monthly Recurring Revenue'),
        description: .literal('Normalized monthly subscription revenue'),
        dependsOn: [ResourceDependency(glossary)],
      ),
    );

    add(
      GoogleDataplexGlossaryIamMember(
        localName: 'glossary_viewer',
        glossary: .literal('terradart-glossary'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.catalogViewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(glossary), ResourceDependency(reader)],
      ),
    );

    // Links the catalog dataset entry to the MRR glossary term (definition).
    add(
      GoogleDataplexEntryLink(
        localName: 'dataset_mrr_link',
        entryGroupId: .literal('terradart-catalog'),
        entryLinkId: .literal('customer-dataset-mrr'),
        location: .literal('us-central1'),
        entryLinkType: .literal(
          'projects/dataplex-types/locations/global/entryLinkTypes/definition',
        ),
        entryReferences: [
          DataplexEntryLinkEntryReferences(
            name: .literal(customerDatasetEntry.name.interpolation),
            type: .literal(.source),
          ),
          DataplexEntryLinkEntryReferences(
            name: .literal(
              'projects/${current.number.interpolation}/locations/us-central1'
              '/entryGroups/@dataplex/entries'
              '/projects/${current.number.interpolation}/locations/us-central1'
              '/glossaries/terradart-glossary/terms/terradart-mrr',
            ),
            type: .literal(.target),
          ),
        ],
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
        name: .literal('terradart-lake'),
        location: .literal('us-central1'),
        displayName: .literal('Analytics lake'),
        description: .literal('Top-level Dataplex container'),
        dependsOn: [...apiDeps],
      ),
    );

    add(
      GoogleDataplexLakeIamMember(
        localName: 'lake_viewer',
        lake: .literal('terradart-lake'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(lake), ResourceDependency(reader)],
      ),
    );

    // --- Dataplex lake zone + asset ----------------------------------------
    // A raw zone under the lake, a GCS bucket registered as a lake asset, and
    // a zone-level IAM member for the reader service account.

    final lakeDataBucket = add(
      GoogleStorageBucket(
        localName: 'lake_data',
        name: .literal('terradart-dataplex-lake-data'),
        location: .literal('US-CENTRAL1'),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [...apiDeps],
      ),
    );

    final rawZone = add(
      GoogleDataplexZone(
        localName: 'raw_zone',
        name: .literal('terradart-raw-zone'),
        lake: lake.ref,
        location: .literal('us-central1'),
        type: .literal(.raw),
        displayName: .literal('Raw zone'),
        description: .literal('Raw data partition in the analytics lake'),
        discoverySpec: DataplexZoneDiscoverySpec(enabled: .literal(false)),
        resourceSpec: DataplexZoneResourceSpec(
          locationType: .literal(.singleRegion),
        ),
        dependsOn: [ResourceDependency(lake), ...apiDeps],
      ),
    );

    final lakeDataAsset = add(
      GoogleDataplexAsset(
        localName: 'lake_data_asset',
        name: .literal('terradart-lake-data-asset'),
        dataplexZone: rawZone.ref,
        lake: lake.ref,
        location: .literal('us-central1'),
        displayName: .literal('Lake data bucket asset'),
        discoverySpec: DataplexAssetDiscoverySpec(enabled: .literal(false)),
        resourceSpec: DataplexAssetResourceSpec(
          name: .literal(
            'projects/$projectId/buckets/terradart-dataplex-lake-data',
          ),
          type: .literal(.storageBucket),
        ),
        dependsOn: [
          ResourceDependency(rawZone),
          ResourceDependency(lakeDataBucket),
        ],
      ),
    );

    add(
      GoogleDataplexDataProductDataAsset(
        localName: 'customer_360_lake_asset',
        dataProductId: dataProduct.ref,
        dataAssetId: .literal('lake-data'),
        location: .literal('us-central1'),
        resource: .literal(
          '//bigquery.googleapis.com/projects/$projectId/datasets/terradart_analytics',
        ),
        dependsOn: [
          ResourceDependency(dataProduct),
          ResourceDependency(analyticsDataset),
        ],
      ),
    );

    add(
      GoogleDataplexAssetIamMember(
        localName: 'lake_data_asset_viewer',
        asset: .literal('terradart-lake-data-asset'),
        dataplexZone: .literal('terradart-raw-zone'),
        lake: .literal('terradart-lake'),
        location: .literal('us-central1'),
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(lakeDataAsset),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataplexZoneIamMember(
        localName: 'raw_zone_viewer',
        zone: rawZone.ref,
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(rawZone), ResourceDependency(reader)],
      ),
    );

    // --- Dataplex data scan --------------------------------------------------
    // A discovery scan over the lake data bucket (on-demand trigger) plus a
    // resource-level IAM member for the reader service account.

    final lakeDiscoveryScan = add(
      GoogleDataplexDatascan(
        localName: 'lake_discovery',
        dataScanId: .literal('terradart-lake-discovery'),
        location: .literal('us-central1'),
        scanSpec: const .dataDiscoverySpec(.new()),
        data: .resource(
          .literal(
            '//storage.googleapis.com/projects/$projectId/buckets/terradart-dataplex-lake-data',
          ),
        ),
        executionSpec: DataplexDatascanExecutionSpec(
          trigger: const .onDemand(.new()),
        ),
        displayName: .literal('Lake data discovery scan'),
        description: .literal(
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
        dataScan: lakeDiscoveryScan.ref,
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
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
        taskId: .literal('terradart-sql-task'),
        location: .literal('us-central1'),
        lake: .literal('terradart-lake'),
        workload: .spark(.new(driver: .sqlScript(.literal('SELECT 1')))),
        triggerSpec: DataplexTaskTriggerSpec(type: .literal(.onDemand)),
        executionSpec: DataplexTaskExecutionSpec(
          serviceAccount: .literal(reader.email.interpolation),
          // Spark-SQL tasks require an output location, passed via TASK_ARGS.
          args: .literal({
            'TASK_ARGS':
                '--output_location,'
                'gs://terradart-dataplex-lake-data/task-output,'
                '--output_format,json',
          }),
        ),
        displayName: .literal('Lake SQL task'),
        description: .literal(
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
        task: lakeSqlTask.ref,
        role: .literal('roles/dataplex.viewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(lakeSqlTask),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}

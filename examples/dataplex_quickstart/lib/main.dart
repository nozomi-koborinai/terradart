/// Dataplex quickstart — governed data product, Universal Catalog metadata,
/// business glossary, lake (zone + asset), and resource-scoped IAM members.
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
        type: TfArg.literal('RAW'),
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

    add(
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
  }
}

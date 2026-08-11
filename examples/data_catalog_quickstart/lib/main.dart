/// Data Catalog quickstart (legacy Data Catalog API).
///
/// Enables `datacatalog.googleapis.com` and provisions:
/// - an entry group + custom entry,
/// - a taxonomy + policy tag,
/// - a tag template with a STRING field,
/// - additive IAM on the entry group and taxonomy.
///
/// Prefer Dataplex Universal Catalog for new catalogs. This project may reject
/// Data Catalog writes at apply time due to upstream deprecation (see
/// `tool/apply_smoke_skip.yaml`); synth + `terraform validate` still cover the
/// factories.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data_catalog.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Catalog stack: entry group, taxonomy/policy tag, tag template, IAM.
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

    final group = add(
      GoogleDataCatalogEntryGroup(
        localName: 'group',
        entryGroupId: TfArg.literal('terradart_entry_group'),
        region: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart entry group'),
        description: TfArg.literal('TerraDart smoke Data Catalog entry group'),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    add(
      GoogleDataCatalogEntry(
        localName: 'custom_entry',
        entryGroup: TfArg.ref(group.id),
        entryId: TfArg.literal('terradart_entry'),
        entryKind: DataCatalogEntryCustomType(
          userSpecifiedType: TfArg.literal('terradart_custom_type'),
        ),
        userSpecifiedSystem: TfArg.literal('TerraDart'),
        displayName: TfArg.literal('TerraDart custom entry'),
        dependsOn: [ResourceDependency(group)],
      ),
    );

    final taxonomy = add(
      GoogleDataCatalogTaxonomy(
        localName: 'pii',
        displayName: TfArg.literal('terradart_pii_taxonomy'),
        description: TfArg.literal('Policy tags for PII columns'),
        activatedPolicyTypes: TfArg.literal(['FINE_GRAINED_ACCESS_CONTROL']),
        region: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    add(
      GoogleDataCatalogPolicyTag(
        localName: 'email',
        displayName: TfArg.literal('email'),
        taxonomy: TfArg.ref(taxonomy.id),
        description: TfArg.literal('Email addresses'),
        dependsOn: [ResourceDependency(taxonomy)],
      ),
    );

    add(
      GoogleDataCatalogTagTemplate(
        localName: 'demo',
        tagTemplateId: TfArg.literal('terradart_template'),
        region: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart Tag Template'),
        fields: [
          DataCatalogTagTemplateField(
            fieldId: TfArg.literal('source'),
            displayName: TfArg.literal('Source of data asset'),
            isRequired: TfArg.literal(true),
            type: const DataCatalogTagTemplatePrimitiveFieldType(
              DataCatalogTagTemplatePrimitiveType.string,
            ),
          ),
        ],
        forceDelete: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'catalog_reader',
        accountId: TfArg.literal('catalog-reader'),
        displayName: TfArg.literal('Data Catalog reader'),
      ),
    );

    add(
      GoogleDataCatalogEntryGroupIamMember(
        localName: 'group_viewer',
        entryGroup: TfArg.ref(group.id),
        region: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/datacatalog.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(group),
          ResourceDependency(reader),
        ],
      ),
    );

    add(
      GoogleDataCatalogTaxonomyIamMember(
        localName: 'taxonomy_viewer',
        taxonomy: TfArg.ref(taxonomy.id),
        region: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/datacatalog.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(taxonomy),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}

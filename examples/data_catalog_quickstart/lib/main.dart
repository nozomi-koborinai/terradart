/// Data Catalog quickstart (legacy Data Catalog API).
///
/// Enables `datacatalog.googleapis.com` and provisions:
/// - an entry group + custom entry,
/// - a taxonomy + policy tag,
/// - a tag template with a STRING field,
/// - a tag on the custom entry filling that `source` field,
/// - additive IAM on the entry group, taxonomy, policy tag, and tag template.
///
/// Prefer Dataplex Universal Catalog for new catalogs. A project may reject
/// Data Catalog writes at apply time due to upstream deprecation (see the
/// README's "Before you apply"); synth + `terraform validate` still cover
/// the factories.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_google/data_catalog.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Data Catalog stack: entry group, taxonomy/policy tag, tag template, IAM.
final class DataCatalogStack extends Stack {
  DataCatalogStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiDataCatalog = add(
      GoogleProjectService(
        'api_datacatalog',
        service: .literal('datacatalog.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final group = add(
      GoogleDataCatalogEntryGroup(
        'group',
        entryGroupId: .literal('terradart_entry_group'),
        region: .literal('us-central1'),
        displayName: .literal('TerraDart entry group'),
        description: .literal('TerraDart smoke Data Catalog entry group'),
        dependsOn: [apiDataCatalog],
      ),
    );

    final customEntry = add(
      GoogleDataCatalogEntry(
        'custom_entry',
        entryGroup: group.ref,
        entryId: .literal('terradart_entry'),
        entryKind: .customType(
          userSpecifiedType: .literal('terradart_custom_type'),
        ),
        userSpecifiedSystem: .literal('TerraDart'),
        displayName: .literal('TerraDart custom entry'),
        dependsOn: [group],
      ),
    );

    final taxonomy = add(
      GoogleDataCatalogTaxonomy(
        'pii',
        displayName: .literal('terradart_pii_taxonomy'),
        description: .literal('Policy tags for PII columns'),
        activatedPolicyTypes: .literal(['FINE_GRAINED_ACCESS_CONTROL']),
        region: .literal('us-central1'),
        dependsOn: [apiDataCatalog],
      ),
    );

    final emailTag = add(
      GoogleDataCatalogPolicyTag(
        'email',
        displayName: .literal('email'),
        taxonomy: taxonomy.ref,
        description: .literal('Email addresses'),
        dependsOn: [taxonomy],
      ),
    );

    final tagTemplate = add(
      GoogleDataCatalogTagTemplate(
        'demo',
        tagTemplateId: .literal('terradart_template'),
        region: .literal('us-central1'),
        displayName: .literal('TerraDart Tag Template'),
        fields: [
          DataCatalogTagTemplateField(
            fieldId: .literal('source'),
            displayName: .literal('Source of data asset'),
            isRequired: .literal(true),
            type: const .primitiveType(
              DataCatalogTagTemplatePrimitiveType.string,
            ),
          ),
        ],
        forceDelete: .literal(true),
        dependsOn: [apiDataCatalog],
      ),
    );

    add(
      GoogleDataCatalogTag(
        'entry_source',
        parent: customEntry.id,
        template: tagTemplate.ref,
        fields: [
          DataCatalogTagField(
            fieldName: .literal('source'),
            value: .stringValue(.literal('terradart-smoke')),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [customEntry, tagTemplate],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        'catalog_reader',
        accountId: .literal('catalog-reader'),
        displayName: .literal('Data Catalog reader'),
      ),
    );

    add(
      GoogleDataCatalogEntryGroupIamMember(
        'group_viewer',
        entryGroup: group.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [group, reader],
      ),
    );

    add(
      GoogleDataCatalogTaxonomyIamMember(
        'taxonomy_viewer',
        taxonomy: taxonomy.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [taxonomy, reader],
      ),
    );

    add(
      GoogleDataCatalogPolicyTagIamMember(
        'policy_tag_viewer',
        policyTag: emailTag.ref,
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [emailTag, reader],
      ),
    );

    add(
      GoogleDataCatalogTagTemplateIamMember(
        'tag_template_viewer',
        tagTemplate: tagTemplate.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [tagTemplate, reader],
      ),
    );
  }
}

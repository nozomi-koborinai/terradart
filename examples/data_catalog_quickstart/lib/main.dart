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

import 'package:terradart_core/terradart_core.dart';
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
        localName: 'api_datacatalog',
        service: .literal('datacatalog.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final group = add(
      GoogleDataCatalogEntryGroup(
        localName: 'group',
        entryGroupId: .literal('terradart_entry_group'),
        region: .literal('us-central1'),
        displayName: .literal('TerraDart entry group'),
        description: .literal('TerraDart smoke Data Catalog entry group'),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    final customEntry = add(
      GoogleDataCatalogEntry(
        localName: 'custom_entry',
        entryGroup: group.ref,
        entryId: .literal('terradart_entry'),
        entryKind: .customType(
          userSpecifiedType: .literal('terradart_custom_type'),
        ),
        userSpecifiedSystem: .literal('TerraDart'),
        displayName: .literal('TerraDart custom entry'),
        dependsOn: [ResourceDependency(group)],
      ),
    );

    final taxonomy = add(
      GoogleDataCatalogTaxonomy(
        localName: 'pii',
        displayName: .literal('terradart_pii_taxonomy'),
        description: .literal('Policy tags for PII columns'),
        activatedPolicyTypes: .literal(['FINE_GRAINED_ACCESS_CONTROL']),
        region: .literal('us-central1'),
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    final emailTag = add(
      GoogleDataCatalogPolicyTag(
        localName: 'email',
        displayName: .literal('email'),
        taxonomy: taxonomy.ref,
        description: .literal('Email addresses'),
        dependsOn: [ResourceDependency(taxonomy)],
      ),
    );

    final tagTemplate = add(
      GoogleDataCatalogTagTemplate(
        localName: 'demo',
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
        dependsOn: [ResourceDependency(apiDataCatalog)],
      ),
    );

    add(
      GoogleDataCatalogTag(
        localName: 'entry_source',
        parent: .ref(customEntry.id),
        template: tagTemplate.ref,
        fields: [
          DataCatalogTagField(
            fieldName: .literal('source'),
            value: .stringValue(.literal('terradart-smoke')),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [
          ResourceDependency(customEntry),
          ResourceDependency(tagTemplate),
        ],
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'catalog_reader',
        accountId: .literal('catalog-reader'),
        displayName: .literal('Data Catalog reader'),
      ),
    );

    add(
      GoogleDataCatalogEntryGroupIamMember(
        localName: 'group_viewer',
        entryGroup: group.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(group), ResourceDependency(reader)],
      ),
    );

    add(
      GoogleDataCatalogTaxonomyIamMember(
        localName: 'taxonomy_viewer',
        taxonomy: taxonomy.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(taxonomy), ResourceDependency(reader)],
      ),
    );

    add(
      GoogleDataCatalogPolicyTagIamMember(
        localName: 'policy_tag_viewer',
        policyTag: emailTag.ref,
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [ResourceDependency(emailTag), ResourceDependency(reader)],
      ),
    );

    add(
      GoogleDataCatalogTagTemplateIamMember(
        localName: 'tag_template_viewer',
        tagTemplate: tagTemplate.ref,
        region: .literal('us-central1'),
        role: .literal('roles/datacatalog.viewer'),
        member: reader.principal,
        dependsOn: [
          ResourceDependency(tagTemplate),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}

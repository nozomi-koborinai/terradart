// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
import 'catalog_entry.dart';

const List<CatalogEntry> terradartCatalog = <CatalogEntry>[
  CatalogEntry(
    tfType: 'google_project_service_identity',
    className: 'GoogleProjectServiceIdentity',
    barrel: 'project',
    kind: CatalogKind.resource,
    summary: 'Factory wrapper for `google_project_service_identity`.',
    constructorParams: <String>['localName', 'service', 'project'],
    nestedTypes: <String>[],
    sensitiveFields: <String>[],
    docComment:
        'Factory wrapper for `google_project_service_identity`.\n\nProject **service identity** (beta-only) — provisions the per-service\nservice agent (e.g. the Pub/Sub or Cloud Build agent) ahead of first\nuse, so IAM grants on that agent never race its lazy creation.\n\nFree: the identity is account metadata with no billed resource behind\nit. Terraform destroy removes only the Terraform record — the service\nagent itself persists (upstream behavior).\n\nThe [member] / [email] outputs feed IAM grants directly:\n`GoogleProjectIamMember(member: identity.member, ...)`.',
  ),
];

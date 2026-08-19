// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
import 'catalog_entry.dart';

const List<CatalogEntry> terradartCatalog = <CatalogEntry>[
  CatalogEntry(
    tfType: 'appwrite_project',
    className: 'AppwriteProject',
    barrel: 'project',
    kind: CatalogKind.resource,
    summary: 'Factory wrapper for `appwrite_project`.',
    constructorParams: <String>[
      'localName',
      'name',
      'organizationId',
      'region',
    ],
    nestedTypes: <String>[],
    sensitiveFields: <String>[],
    docComment:
        'Factory wrapper for `appwrite_project`.\n\nManages an Appwrite project within an organization.\n\nAppwrite **project** — the top-level container for auth, databases,\nstorage, functions, and messaging.\n\nCreating a project is an organization-scoped operation: apply needs an\norganization API key (`APPWRITE_ORGANIZATION_API_KEY` env var, or the\nprovider\'s `organization_api_key`) and an organization id. Synth output\nnever contains credentials — see [AppwriteProvider].',
  ),
  CatalogEntry(
    tfType: 'appwrite_storage_bucket',
    className: 'AppwriteStorageBucket',
    barrel: 'storage',
    kind: CatalogKind.resource,
    summary: 'Factory wrapper for `appwrite_storage_bucket`.',
    constructorParams: <String>[
      'localName',
      'name',
      'enabled',
      'fileSecurity',
      'maximumFileSize',
      'allowedFileExtensions',
      'compression',
      'encryption',
      'antivirus',
    ],
    nestedTypes: <String>[],
    sensitiveFields: <String>[],
    docComment:
        'Factory wrapper for `appwrite_storage_bucket`.\n\nManages an Appwrite storage bucket.\n\nAppwrite **storage bucket** — file storage with per-bucket security,\nsize limits, allowed extensions, compression, encryption, and\nantivirus toggles.\n\nProject-scoped: apply resolves the target project from the provider\'s\n`project_id` (or `APPWRITE_PROJECT_ID`).',
  ),
];

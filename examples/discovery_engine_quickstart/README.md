# Discovery Engine quickstart

Vertex AI Search (Discovery Engine) data store, search engine, schema, synonyms
control, default serving config, and resource-scoped IAM.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out && terraform init && terraform validate
```

## What gets created

- `GoogleDiscoveryEngineDataStore` — `terradart-search-docs` (NO_CONTENT) plus a second store with `skip_default_schema_creation` for the schema
- `GoogleDiscoveryEngineSearchEngine` — `quickstart-search` wired to the documents store
- `GoogleDiscoveryEngineSchema` — JSON Schema on the schema store
- `GoogleDiscoveryEngineControl` — synonyms action on the search engine
- `GoogleDiscoveryEngineServingConfig` — `default_search` wired to the synonyms control
- `GoogleDiscoveryEngineSearchEngineIamMember` — grants a service account `roles/discoveryengine.viewer`

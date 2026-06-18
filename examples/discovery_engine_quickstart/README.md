# Discovery Engine quickstart

Vertex AI Search (Discovery Engine) data store, search engine, and resource-scoped IAM.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out && terraform init && terraform validate
```

## What gets created

- `GoogleDiscoveryEngineDataStore` — `quickstart-docs` in `global`
- `GoogleDiscoveryEngineSearchEngine` — `quickstart-search` wired to the data store
- `GoogleDiscoveryEngineSearchEngineIamMember` — grants a service account `roles/discoveryengine.viewer`

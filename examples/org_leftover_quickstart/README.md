# Org-scoped leftover quickstart

Apply-excluded leftover factories that need an organization, owned
public prefixes, or a Wasm plugin artifact. Synth + `terraform validate`
only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

# Security Command Center leftover quickstart

Apply-excluded leftover factories for SCC v1 / v2 / Management. Synth +
`terraform validate` only — `terradart-validate` has no organization
ancestor, so apply is skip-listed.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

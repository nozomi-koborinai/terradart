# Beta leftover quickstart

Coverage stack for the remaining beta-only `hashicorp/google-beta`
factories. Dummy values; synth + `terraform validate` only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

## Before you apply

Dummy ids throughout. **Never apply.**

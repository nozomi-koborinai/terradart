# Security Command Center leftover quickstart

Coverage stack for the Security Command Center v1 / v2 / Management
factories. Dummy ids; synth + `terraform validate` only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

## Before you apply

Security Command Center sources, mute configs, custom modules, and BigQuery exports need an organization (or folder) with SCC activated. **Never apply** this stack as-is.

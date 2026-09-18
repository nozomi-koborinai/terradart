# Data-source leftover quickstart

Coverage stack for the remaining GA data sources. Synth +
`terraform validate` only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

## Before you apply

The lookups target dummy ids and would fail on a live project. **Never apply.**

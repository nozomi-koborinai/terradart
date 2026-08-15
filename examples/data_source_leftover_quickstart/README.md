# Data-source leftover quickstart

Apply-excluded remaining GA data sources. Synth + `terraform validate`
only. Do not apply — lookups target dummy ids and would fail or bill
nothing useful on a live project.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

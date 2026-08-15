# Deferred leftover quickstart

Apply-excluded leftover factories that need an organization, folder,
billing account, or external artifact. Synth + `terraform validate`
only. Do not apply.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

# Deferred leftover quickstart

Coverage stack for the remaining factories that need an organization, folder,
billing account, or external artifact. Synth + `terraform validate`
only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

## Before you apply

Every resource here needs something a standalone project cannot supply (an organization, a folder, a billing account, Database Migration Service or Datastream endpoints, a registered domain). **Never apply.**

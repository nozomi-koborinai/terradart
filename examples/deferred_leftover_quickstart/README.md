# Deferred leftover quickstart

Coverage stack for the remaining factories that need an organization, folder,
billing account, or external artifact, plus the 16 types `hashicorp/google`
8.2 / 8.3 promoted from google-beta (BigLake Hive catalogs, databases and
tables with their IAM, Observability folder / organization / project
settings, the network edge security service), carried over from
`beta_leftover_quickstart` with the same dummy values. Synth +
`terraform validate` only.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

## Before you apply

Every resource here needs something a standalone project cannot supply (an organization, a folder, a billing account, Database Migration Service or Datastream endpoints, a registered domain) or points at dummy ids. **Never apply.**

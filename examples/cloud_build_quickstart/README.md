# Cloud Build quickstart

End-to-end terradart example for a **Cloud Build v2 CI/CD pipeline**
on GCP. Provisions a GitHub-App-backed source connection, a linked
repository, an Artifact Registry sink for container images (with IAM
granting the build SA push access), a private worker pool, and a v2
push trigger -- using only Wave 7 Batch 1 resources.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Cloud Build, Artifact Registry, and Secret
  Manager APIs enabled and credentials configured
  (`gcloud auth application-default login`).
- A GitHub App installation against the target repository, plus its
  `app_installation_id` and an OAuth token stored in Secret Manager.

## Dependency chain

```
cloudbuild_trigger (v2)
  -> cloudbuildv2_repository
       -> cloudbuildv2_connection      (GitHub App OAuth)
  -> cloudbuild_worker_pool            (private pool, peered VPC)

artifact_registry_repository (Docker)
  -> artifact_registry_repository_iam_member
       (roles/artifactregistry.writer on build SA)
```

The trigger fires on pushes to `main`, runs `cloudbuild.yaml` on the
private pool, and pushes the resulting image into the Artifact
Registry repo (the IAM binding is what makes that push succeed).

## Usage

```bash
dart run bin/infra.dart && cd tf-out && terraform init && terraform validate
```

## Design notes

- The OAuth token reference (`oauth_token_secret_version`) is a
  placeholder string. Production stacks should use
  `TfArg.ref(secretVersion.id)` against a real
  `google_secret_manager_secret_version` so the secret stays the source
  of truth.
- `app_installation_id: 12345` is a stand-in -- substitute the numeric
  ID surfaced by your GitHub App installation.
- The private pool's `peered_network` is a placeholder VPC path; swap
  in a real peered VPC self_link when wiring this to private backends.
- The build service account
  (`cloud-build-sa@<project>.iam.gserviceaccount.com`) is a stand-in.
  Replace it with the SA you've designated for trigger execution.

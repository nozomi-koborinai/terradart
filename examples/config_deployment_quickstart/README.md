# Infrastructure Manager quickstart

End-to-end terradart example for `google_config_deployment` — actuating a public Git Terraform blueprint with a dedicated service account.

## Before you apply

Infrastructure Manager runs a real Terraform blueprint (the terraform-google-network VPC module). It needs a dedicated service account with `roles/config.agent` and `roles/compute.networkAdmin`, and the deployment is long-running.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Config API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleServiceAccount` — actuation identity for Infrastructure Manager
- `GoogleProjectIamMember` — `roles/config.agent` and `roles/compute.networkAdmin` for the SA
- `GoogleConfigDeployment` — VPC module from `terraform-google-network` (Git blueprint)

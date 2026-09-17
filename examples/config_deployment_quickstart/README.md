# Infrastructure Manager quickstart

End-to-end terradart example for `google_config_deployment` — actuating a public Git Terraform blueprint with a dedicated service account.

## Before you apply

Applying actuates a real Terraform blueprint (the terraform-google-network VPC module): it creates a live VPC and is long-running. The stack grants `roles/config.agent` and `roles/compute.networkAdmin` to the actuation service account it creates, so your credentials must be allowed to grant project-level roles.

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

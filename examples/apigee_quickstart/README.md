# Apigee quickstart

End-to-end terradart example for Apigee runtime analytics primitives: a typed data collector and a Cloud Storage analytics datastore.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Apigee API enabled
- An **existing** Apigee organization (`organizations/{org_name}`) — Terraform cannot create the org in this example

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleApigeeDataCollector` — integer `dc_request_latency` collector on the demo org
- `GoogleApigeeDatastore` — GCS-backed analytics export target in the same org

Replace the placeholder `organizations/demo-org` in `lib/main.dart` with your org before applying.

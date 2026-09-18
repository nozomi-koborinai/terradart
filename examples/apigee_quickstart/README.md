# Apigee quickstart

End-to-end terradart example for Apigee runtime analytics primitives plus
an Advanced API Security monitoring condition (placeholder profile / env IDs):

- `google_apigee_data_collector`
- `google_apigee_datastore`
- `google_apigee_security_monitoring_condition`

## Before you apply

To apply this stack you need an existing Apigee organization (`organizations/{org_name}`) and a Cloud Storage bucket for the analytics datastore target; Terraform creates neither here.

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
- `GoogleApigeeSecurityMonitoringCondition` — placeholder profile `demo-profile` and scope `demo-env` (`deletion_policy=DELETE`)

Replace the placeholder `organizations/demo-org` in `lib/main.dart` with your org before applying.

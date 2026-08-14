# Cloud Endpoints OpenAPI service-config quickstart

End-to-end terradart example for a Cloud Endpoints service
(`google_endpoints_service`) plus an additive service IAM member
(`google_endpoints_service_iam_member`). Uploads a dummy Swagger 2.0
config whose `host` matches `terradart.endpoints.$projectId.cloud.goog`
and grants an in-stack service account `roles/viewer` on that service.

Control-plane metadata only — no ESP/ESPv2 proxy and no live traffic.
Service Control Operations SKUs fire only when a deployed proxy serves
requests. Also enables Service Management, Service Control, and
Endpoints APIs and waits for propagation.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/endpoints_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```

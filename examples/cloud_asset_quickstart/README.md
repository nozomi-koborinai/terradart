# Cloud Asset Inventory project-feed quickstart

End-to-end terradart example for a **Cloud Asset Inventory project feed**:

- enables `cloudasset.googleapis.com` and `pubsub.googleapis.com`
- mints the Cloud Asset service agent (`google_project_service_identity`)
- grants that agent `roles/pubsub.publisher` on a Pub/Sub topic
- creates a project feed for `cloudresourcemanager.googleapis.com/Project`

Enabling the Cloud Asset API does **not** create
`service-{PROJECT_NUMBER}@gcp-sa-cloudasset.iam.gserviceaccount.com`.
This stack mints it with `google_project_service_identity` (google-beta)
before the topic IAM grant. Creating a feed does not scan or export
existing assets. Folder and organization feeds are not in this stack
(they need a folder/org parent).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/cloud_asset_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```

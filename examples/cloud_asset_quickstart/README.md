# Cloud Asset Inventory project-feed quickstart

End-to-end terradart example for a **Cloud Asset Inventory project feed**:

- enables `cloudasset.googleapis.com` and `pubsub.googleapis.com`
- creates a Pub/Sub topic
- grants the Cloud Asset service agent `roles/pubsub.publisher`
- creates a project feed for `cloudresourcemanager.googleapis.com/Project`

Creating a feed does not scan or export existing assets. Messages fire only
when matching resources change. Folder and organization feeds are not in
this stack (they need a folder/org parent).

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

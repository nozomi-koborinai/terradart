# Firebase Data Connect quickstart

End-to-end terradart example for Firebase Data Connect — a serverless GraphQL backend backed by Cloud SQL.

## Before you apply

The project must already be registered with Firebase. Enabling `firebase.googleapis.com` is not enough, and this stack does not perform the registration.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Firebase Data Connect API enabled. A pre-provisioned Cloud SQL instance is typically wired in via child resources (`google_firebase_data_connect_schema`, `_connector`) not curated in Wave 4.

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- A `GoogleFirebaseDataConnectService` in `us-central1` with `DataConnectDeletionPolicy.defaultPolicy` (allows deletion when child connectors / schemas are absent).

The service-level resource is a minimal anchor. Real Data Connect deployments add schema + connector child resources (out of scope for Wave 4).

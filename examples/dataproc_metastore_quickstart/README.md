# Dataproc Metastore quickstart

End-to-end terradart example for Dataproc Metastore factories:

- `google_dataproc_metastore_service` (DEVELOPER tier)
- `google_dataproc_metastore_service_iam_member`
- `google_dataproc_metastore_federation`
- `google_dataproc_metastore_federation_iam_member`

The stack also provisions a dedicated `google_compute_network`: the
Metastore THRIFT endpoint attaches to a VPC, and the API otherwise defaults
to the project `default` network, which standalone projects do not have.

## Before you apply

The DEVELOPER-tier Metastore service bills hourly while it exists. Destroy it when you are done.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with Dataproc Metastore API enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

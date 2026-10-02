# GKE Hub Multi-Cluster Service Discovery feature quickstart

End-to-end terradart example for `google_gke_hub_feature` with
`name: multiclusterservicediscovery` at `location: global`. No cluster
membership is required.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/gke_hub_feature_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```

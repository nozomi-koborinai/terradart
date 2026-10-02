# Dataproc autoscaling policy quickstart

End-to-end terradart example for `google_dataproc_autoscaling_policy` — a
reusable YARN autoscaler document — and `google_dataproc_workflow_template`
(reusable DAG metadata). Neither resource starts a cluster or a job.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/dataproc_autoscaling_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```

# Discovery Engine ACL config quickstart

End-to-end terradart example for `google_discovery_engine_acl_config` with
`location: global` and GSuite IdP (no workforce pool).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/discovery_engine_acl_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```

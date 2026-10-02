# Firebase Security Rules ruleset quickstart

End-to-end terradart example for a Firebase Security Rules ruleset
(`google_firebaserules_ruleset`) that denies all client Firestore access.

Creating the ruleset does **not** serve it. This example does not create a
`google_firebaserules_release`, so existing Firestore / Storage rules stay
unchanged.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/firebaserules_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```

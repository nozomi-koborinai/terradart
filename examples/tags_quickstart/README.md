# Tags quickstart

End-to-end terradart example for Resource Manager Tags. Provisions a project-scoped `google_tags_tag_key` (`terradart-env`), a `google_tags_tag_value` (`production`), a `google_tags_tag_binding` attaching the value to the project, a `data.google_project` lookup (for the project number), and two tag-level IAM members (`google_tags_tag_key_iam_member` + `google_tags_tag_value_iam_member`) for an in-stack service account — and exports the tag key's short name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Resource Manager API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/tags_quickstart/
├── lib/main.dart       # TagsStack (tag key + value + binding + IAM + exports)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) tags_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/tags_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Tags are free; the stack creates and destroys cleanly in a single project.

# App Engine quickstart

End-to-end terradart example for App Engine. Enables the App Engine, App Engine Flex, and Cloud Storage APIs and provisions the project application, a standard-environment version on `default`, a flexible-environment version on `flex`, firewall and URL-dispatch rules, a domain mapping, and service-level network/traffic settings.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). App Engine APIs are enabled by the stack.

## Layout

```
examples/app_engine_quickstart/
├── lib/main.dart       # AppEngineStack
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) app_engine_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/app_engine_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Real apply needs a staged `app.zip` in the deploy bucket and a verifiable domain for domain mapping; CI runs synth + `terraform validate` only.

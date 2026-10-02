# App Engine quickstart

End-to-end terradart example for App Engine. Enables the App Engine, App Engine Flex, and Cloud Storage APIs and provisions the project application, a standard-environment version on `default`, a flexible-environment version on `flex`, firewall and URL-dispatch rules, a domain mapping, and service-level network/traffic settings.

## Before you apply

Stage `app.zip` in the deploy bucket and use a domain you can verify for the domain mapping. A project can hold only one App Engine application.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). App Engine APIs are enabled by the stack.

## Layout

```
examples/app_engine_quickstart/
├── lib/main.dart       # AppEngineStack
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
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
terradart synth

# 4. Plan:
terradart plan
```

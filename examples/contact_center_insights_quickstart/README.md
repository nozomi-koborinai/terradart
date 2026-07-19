# Contact Center AI Insights quickstart

End-to-end terradart example for Contact Center AI Insights. Enables the
Conversational Insights API and provisions an inactive analysis rule, a saved
conversation view (`medium="PHONE_CALL"`), and a customer-defined QA scorecard.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/contact_center_insights_quickstart/
├── lib/main.dart       # ContactCenterInsightsStack
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth)
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
cd examples/contact_center_insights_quickstart && dart pub get

export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```

Analysis rules / views / scorecards are configuration metadata. Conversation
analysis is billed only when conversations are processed; this stack keeps the
analysis rule inactive (`active: false`, `analysisPercentage: 0`).

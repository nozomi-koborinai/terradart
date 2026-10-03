# Contact Center AI Insights quickstart

End-to-end terradart example for Contact Center AI Insights. Enables the
Conversational Insights API and provisions an inactive analysis rule, a saved
conversation view (`medium="PHONE_CALL"`), and a customer-defined QA scorecard.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/contact_center_insights_quickstart/
├── lib/main.dart       # ContactCenterInsightsStack
├── bin/infra.dart      # Synth: runStack → tf-out/
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
cd examples/contact_center_insights_quickstart && dart pub get

export GCP_PROJECT_ID=my-project-123
terradart plan
```

Analysis rules / views / scorecards are configuration metadata. Conversation
analysis is billed only when conversations are processed; this stack keeps the
analysis rule inactive (`active: false`, `analysisPercentage: 0`).

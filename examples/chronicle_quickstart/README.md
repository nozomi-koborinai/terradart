# Chronicle quickstart

End-to-end terradart example for Chronicle (Google SecOps) factories:

- `google_chronicle_custom_list`
- `google_chronicle_soar_network`
- `google_chronicle_native_dashboard`
- `google_chronicle_dashboard_chart`

## Before you apply

Needs an existing Chronicle (Google SecOps) instance; the placeholder instance UUID fails at apply time.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Chronicle (Google SecOps) enabled and an instance ID

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleChronicleCustomList` — approved-files list on a placeholder Chronicle instance in `us`
- `GoogleChronicleSoarNetwork` — `10.0.0.0/8` marked as internal for the Default Environment, so playbooks weigh its sensitivity
- `GoogleChronicleNativeDashboard` — private custom dashboard on the same instance
- `GoogleChronicleDashboardChart` — DNS-events visualization tile on that dashboard

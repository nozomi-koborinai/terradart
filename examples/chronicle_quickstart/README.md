# Chronicle quickstart

End-to-end terradart example for Chronicle (Google SecOps) factories:

- `google_chronicle_custom_list`
- `google_chronicle_native_dashboard`
- `google_chronicle_dashboard_chart`

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
- `GoogleChronicleNativeDashboard` — private custom dashboard on the same instance
- `GoogleChronicleDashboardChart` — DNS-events visualization tile on that dashboard

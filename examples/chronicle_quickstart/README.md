# Chronicle quickstart

End-to-end terradart example for `google_chronicle_custom_list`.

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

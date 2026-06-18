# License Manager quickstart

End-to-end terradart example for License Manager SPLA configurations on Compute Engine.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the License Manager API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleLicenseManagerConfiguration` — Office 2021 Professional Plus SPLA pool in `us-central1`

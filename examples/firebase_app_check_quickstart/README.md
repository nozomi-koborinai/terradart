# Firebase App Check quickstart

End-to-end terradart example for Firebase App Check — request attestation that protects Firebase services (Firestore, Realtime DB, etc.) from unauthorized client traffic. Demonstrates the web-side reCAPTCHA Enterprise provider plus a service-level enforcement policy.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Firebase App Check API and reCAPTCHA Enterprise API enabled. A registered Firebase web app ID is required.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- A `GoogleFirebaseAppCheckRecaptchaEnterpriseConfig` registering the reCAPTCHA Enterprise site key as the App Check provider for the web app.
- A `GoogleFirebaseAppCheckServiceConfig` enforcing App Check for `firestore.googleapis.com` (sets the shared `AppCheckEnforcementMode.enforced`).

The `AppCheckEnforcementMode` enum is declared once in `firebase_app_check_service_config` and re-imported by `firebase_app_check_resource_policy` via the yaml `extraImports` axis (single source of truth for cross-resource enums).
